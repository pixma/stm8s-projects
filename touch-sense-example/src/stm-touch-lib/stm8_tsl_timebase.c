/**
  ******************************************************************************
  * @file    stm8_tsl_timebase.c
  * @author  MCD Application Team
  * @version V2.5.0
  * @date    14-October-2013
  * @brief   This file provides all the functions to handle the time base.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2013 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ****************************************************************************** 
  */

/* Includes ------------------------------------------------------------------*/
#include "stm8_tsl_timebase.h"
#include "stm8_tsl_api.h"
#include "stm8_tsl_internal.h"

/* Memory section ------------------------------------------------------------*/

#if defined(_COSMIC_) && defined(USE_PRAGMA_SECTION)
#pragma section [TSL_RAM]
#pragma section @tiny [TSL_RAM0]
#pragma section (TSL_CODE)
#pragma section const {TSL_CONST}
#endif

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
u8 TINY TSL_Tick_Base = 0;
u8 TINY TSL_Tick_10ms = 0;
u8 TINY TSL_Tick_100ms = 0;
u8 TINY TSL_TickCount_ECS_10ms = 0;
u8 TINY TSL_Tick_User1 = 0;
u8 TINY TSL_Tick_User2 = 0;
TimerFlag_T TINY TSL_Tick_Flags;

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  ******************************************************************************
  * @brief Init for Timer to manage Tick for TSL.
  * This routine assumes that the CPU clock is 16 MHz or 8 MHz using
  * any way to reduce the freq (HSI or CPU divider).
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_Timer_Init(void)
{

  TSL_Tick_100ms = 0;
  TSL_Tick_10ms = 0;
  TSL_Tick_Base = 0;
  TSL_TickCount_ECS_10ms = 0;
  TSL_Tick_Flags.whole = 0;

  TIMTICK->SR1 = 0;       // clear overflow flag

  if (CLK->CKDIVR == 0x00)   // Max CPU freq = 16 MHz
  {
    TIMTICK->PSCR = 6;     // Prescaler to divide Fcpu by 64: 4 us clock.
  }
  else
  {
    TIMTICK->PSCR = 7;     // Prescaler to divide Fcpu by 128: x.xx us clock.
  }

  TIMTICK->ARR = 124;      // 125 * 4 us = 500 us.
  TIMTICK->IER = 0x01;     // Enable interrupt
  TIMTICK->CR1 = 0x01;     // Start timer

}


/**
  ******************************************************************************
  * @brief Short local routine to check 1 sec tick. A tick flag is set for DTO.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_Timer_Check_1sec_Tick(void)
{
  if (TSL_Tick_100ms >= 10)
  {
    TSL_Tick_100ms -= 10;
    TSL_Tick_Flags.b.DTO_1sec = 1;  // Tick Flag for Max On Duration set every second.
  }
}


/**
  ******************************************************************************
  * @brief Short local routine to check 100 ms tick.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_Timer_Check_100ms_Tick(void)
{
  if (TSL_Tick_10ms >= 10)
  {
    TSL_Tick_10ms -= 10;
    TSL_Tick_100ms++;
    TSL_Timer_Check_1sec_Tick();
  }
}


/**
  ******************************************************************************
  * @brief Short local routine to check 10 ms tick.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_Timer_Check_10ms_Tick(void)
{
  if (TSL_Tick_Base >= TICK_FACTOR_10MS)
  {
    TSL_Tick_Base -= TICK_FACTOR_10MS;
    TSL_Tick_10ms++;
    TSL_TickCount_ECS_10ms++;   // Tick Flag for Drift increment every 10 ms.
    TSL_Timer_Check_100ms_Tick();
  }
}


/**
  ******************************************************************************
  * @brief Manages the timer ticks for the whole application.
 * Define as Interrupt Service Routine for HW Timer used as timebase
 * (IT every 0.5ms)
 * or called by a RTOS
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
#if (RTOS_MANAGEMENT > 0)
void TSL_Timer_ISR(void)
#else
INTERRUPT_HANDLER(TSL_Timer_ISR, 23)
#endif
{

  TIMTICK->SR1 = 0;      // clear overflow flag

  TSL_Tick_Base++;
  TSL_Timer_Check_10ms_Tick();

  if (TSL_Tick_Flags.b.User1_Start_100ms) /* Application request */
  {
    TSL_Tick_Flags.b.User1_Start_100ms = 0;
    TSL_Tick_Flags.b.User1_Flag_100ms = 0;
    TSL_Tick_User1 = (TICK_FACTOR_10MS * 10);
  }

  if (TSL_Tick_Flags.b.User2_Start_100ms) /* Application request */
  {
    TSL_Tick_Flags.b.User2_Start_100ms = 0;
    TSL_Tick_Flags.b.User2_Flag_100ms = 0;
    TSL_Tick_User2 = (TICK_FACTOR_10MS * 10);
  }

  if (TSL_Tick_User1 > 0)
  {
    TSL_Tick_User1--;
    if (TSL_Tick_User1 == 0)
    {
      TSL_Tick_Flags.b.User1_Flag_100ms = 1; /* Give information to Application */
    }
  }

  if (TSL_Tick_User2 > 0)
  {
    TSL_Tick_User2--;
    if (TSL_Tick_User2 == 0)
    {
      TSL_Tick_Flags.b.User2_Flag_100ms = 1; /* Give information to Application */
    }
  }
#if TIMER_CALLBACK
  USER_TickTimerCallback();
#endif
}


/**
  ******************************************************************************
  * @brief Modify the tick values for specific cases when the H/W timer doesn't
  * work (halt, ...).
  * @param [in] Delay Time to add to the ticks (unit is 500 us). Range is [1..65535].
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_Timer_Adjust(u16 Delay)
{

  disableInterrupts();

  do
  {
    if (Delay > TICK_FACTOR_10MS) /* delay > 10ms */
    {
      TSL_Tick_Base += TICK_FACTOR_10MS;
      Delay -= TICK_FACTOR_10MS;
      TSL_Timer_Check_10ms_Tick();
    }
    else
    {
      TSL_Tick_Base++;
      Delay--;
      TSL_Timer_Check_10ms_Tick();
    }
  }
  while (Delay);

  enableInterrupts();

}

/* Public functions ----------------------------------------------------------*/

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

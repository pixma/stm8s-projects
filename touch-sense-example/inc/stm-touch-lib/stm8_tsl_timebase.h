/**
  ******************************************************************************
  * @file    stm8_tsl_timebase.h
  * @author  MCD Application Team
  * @version V2.5.0
  * @date    14-October-2013
  * @brief   This file contains all functions prototype and macros to handle the timebase.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __TSL_TIMEBASE_H
#define __TSL_TIMEBASE_H

/* Includes ------------------------------------------------------------------*/
#include "stm8_tsl_conf.h"

/* Exported types ------------------------------------------------------------*/
/** Contains all timer flags */
typedef union
{
  u8 whole;
  struct
  {
  u8 DTO_1sec          :
    1; /**< Detection Time Out (flag set every second) */
  u8 User1_Start_100ms :
    1; /**< From Customer Code to TSL */
  u8 User1_Flag_100ms  :
    1; /**< From TSL to Customer Code */
  u8 User2_Start_100ms :
    1; /**< From Customer Code to TSL */
  u8 User2_Flag_100ms  :
    1; /**< From TSL to Customer Code */
  u8 RESERVED5         :
    1;
  u8 RESERVED6         :
    1;
  u8 RESERVED7         :
    1;
  }
  b;
} TimerFlag_T;

/* Exported constants --------------------------------------------------------*/
// This factor multiplied by the tick base (0.5ms) must give a 10ms delay
#define TICK_FACTOR_10MS (20)

/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported variables --------------------------------------------------------*/
extern u8 TINY TSL_Tick_Base;
extern u8 TINY TSL_Tick_10ms;
extern u8 TINY TSL_Tick_100ms;
extern u8 TINY TSL_TickCount_ECS_10ms;
extern TimerFlag_T TINY TSL_Tick_Flags;

/* Exported functions --------------------------------------------------------*/
#if (RTOS_MANAGEMENT > 0)
void TSL_Timer_ISR(void);
#else
INTERRUPT_HANDLER(TSL_Timer_ISR, 23);
#endif

void TSL_Timer_Init(void);
void TSL_Timer_Adjust(u16 Delay);
void TSL_Timer_Check_1sec_Tick(void);
void TSL_Timer_Check_100ms_Tick(void);
void TSL_Timer_Check_10ms_Tick(void);

/* Imported functions --------------------------------------------------------*/

#if TIMER_CALLBACK
void USER_TickTimerCallback(void);
#endif

#endif /* __TSL_TIMEBASE_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

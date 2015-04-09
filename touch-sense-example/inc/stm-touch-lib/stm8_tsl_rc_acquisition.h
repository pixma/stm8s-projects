/**
  ******************************************************************************
  * @file    stm8_tsl_rc_acquisition.h
  * @author  MCD Application Team
  * @version V2.5.0
  * @date    14-October-2013
  * @brief   This file contains all functions prototype and macros handling the RC acquisition.
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
#ifndef __TSL_RC_ACQUISITION_H
#define __TSL_RC_ACQUISITION_H

/* Includes ------------------------------------------------------------------*/
#include "stm8_tsl_conf.h"

/* Exported types ------------------------------------------------------------*/
typedef enum
{
  SCKEY_TYPE = 0,
  MCKEY_TYPE = 1
} IOTYPE_T;

/** Contains all informations of the touched I/O */
typedef struct
{
  GPIO_TypeDef *PORT_ADDR;  /**< Base adress of the GPIO (DR address) */
  u8 AcqMask;               /**< Mask used to acquire the pin value */
  u8 DriveMask;             /**< Mask used to drive the pin */
  u16 *Measurement;         /**< Contains the last measurement value */
  u8 *RejectedNb;           /**< Contains the number of rejected values in the last measurement */
  IOTYPE_T Type;            /**< Contains the type of the key touched */
}
TOUCH_PORT_Info_T;

/* Exported constants --------------------------------------------------------*/
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//-----               CONSTANTS DEFINITIONS                              -----
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// IO acquisition sampling loop
// !!! CHANGE WITH CARE !!!
#define SAMPLING_SHIFTER_LOOP_START (1)
#define SAMPLING_SHIFTER_NB_LOOPS   (8)

// Number of cycles taken by the loop in TSL_IO_SW_Burst_Wait_Vil and TSL_IO_SW_Burst_Wait_Vih routines
// !!! CHANGE WITH CARE !!!
#define NB_CYCLES_VIHVIL_LOOP (8)

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//-----               GLOBALS DEFINITIONS                                -----
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
extern TOUCH_PORT_Info_T TINY sTouchIO;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//-----             CPU RELATED SPECIFIC ADDRESSES                       -----
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#if defined(_COSMIC_)
volatile u16 TIMACQ_CNTR @ TIMACQ_CNTR_ADD;
#elif defined(_RAISONANCE_)
at TIMACQ_CNTR_ADD hreg16 TIMACQ_CNTR;
#else
__no_init volatile u16 TIMACQ_CNTR @ TIMACQ_CNTR_ADD;
#endif


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//-----             CONSTANT TABLE FOR I/O ADDRESSING                    -----
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
extern CONST u8 Table_SCKEY_BITS[];
extern CONST u8 Table_MCKEY_BITS[];
extern CONST u16 Table_MCKEY_PORTS[];

/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported variables --------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/
void TSL_IO_Init(void);
void TSL_IO_Clamp(void);
void TSL_IO_Acquisition(u8 AcqNumber, u8 AdjustmentEnable);
void TSL_IO_SW_Burst_TestSyncShift(void);
void TSL_IO_SW_Burst_Wait_Vil(void);
void TSL_IO_SW_Burst_Wait_Vih(void);
void TSL_IO_SW_Burst_Start_Timer(void);
void TSL_IO_SW_Burst_Stop_Timer(void);
#if SPREAD_SPECTRUM
void TSL_IO_SW_Spread_Spectrum(void);
#endif

#endif /* __TSL_RC_ACQUISITION_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

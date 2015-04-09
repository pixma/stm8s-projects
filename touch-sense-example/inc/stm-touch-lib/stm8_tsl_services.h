/**
  ******************************************************************************
  * @file    stm8_tsl_services.h
  * @author  MCD Application Team
  * @version V2.5.0
  * @date    14-October-2013
  * @brief   This file contains all internal functions prototype and macros.
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
#ifndef __TSL_SERVICES_H
#define __TSL_SERVICES_H

/* Includes ------------------------------------------------------------------*/
#include "stm8_tsl_conf.h"
#include "stm8_tsl_api.h"
#include "stm8_tsl_internal.h"

#if NUMBER_OF_MULTI_CHANNEL_KEYS > 0
extern CONST u16 MCKEY1_DELTA_COEFF[];
extern CONST u8 MCKEY1_LOOK_TABLE[CHANNEL_PER_MCKEY][2];
#endif
#if NUMBER_OF_MULTI_CHANNEL_KEYS > 1
extern CONST u8 MCKEY2_LOOK_TABLE[CHANNEL_PER_MCKEY][2];
extern CONST u16 MCKEY2_DELTA_COEFF[];
#endif

/* Exported functions --------------------------------------------------------*/
void TSL_SetStructPointer(void);
void TSL_DeltaCalculation(void);
void TSL_SCKey_SetIdleState(void);
void TSL_SCKey_BackToIdleState(void);
void TSL_SCKey_SetPreDetectState(void);
void TSL_SCKey_SetDetectedState(void);
void TSL_SCKey_SetPostDetectState(void);
void TSL_SCKey_BackToDetectedState(void);
void TSL_SCKey_SetPreRecalibrationState(void);
void TSL_SCKey_SetCalibrationState(void);
void TSL_SCKey_SetErrorState(void);
void TSL_SCKey_SetDisabledState(void);
void TSL_ECS(void);
void TSL_SCKey_DxS(void);
void TSL_SCKey_DetectionTimeout(void);
u8 TSL_MCKey_InitAcq(u8 channel);
void TSL_MCKey_SetStructPointer(void);
void TSL_MCKey_DeltaCalculation(u8 ChIdx);
void TSL_MCKey_SetIdleState(void);
void TSL_MCKey_BackToIdleState(void);
void TSL_MCKey_SetPreDetectState(void);
void TSL_MCKey_SetDetectedState(void);
void TSL_MCKey_SetPostDetectState(void);
void TSL_MCKey_BackToDetectedState(void);
void TSL_MCKey_SetPreRecalibrationState(void);
void TSL_MCKey_SetCalibrationState(void);
void TSL_MCKey_SetErrorState(void);
void TSL_MCKey_SetDisabledState(void);
void TSL_MCKey_DxS(void);
void TSL_MCKey_DetectionTimeout(void);

#endif /* __TSL_SERVICES_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

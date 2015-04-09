/**
  ******************************************************************************
  * @file    stm8_tsl_multichannelkey.h
  * @author  MCD Application Team
  * @version V2.5.0
  * @date    14-October-2013
  * @brief   This file contains all functions prototype and macros for the multi channel key management.
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
#ifndef __TSL_MULTICHANNELKEY_H
#define __TSL_MULTICHANNELKEY_H

/* Includes ------------------------------------------------------------------*/
#include "stm8_tsl_conf.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported variables --------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/
void TSL_MCKey_Init(void);
void TSL_MCKey1_Acquisition(void);
void TSL_MCKey2_Acquisition(void);
void TSL_MCKey_Process(void);
void TSL_MCKey_IdleTreatment(void);
void TSL_MCKey_PreDetectTreatment(void);
void TSL_MCKey_DetectedTreatment(void);
void TSL_MCKey_PostDetectTreatment(void);
void TSL_MCKey_PreRecalibrationTreatment(void);
void TSL_MCKey_CalibrationTreatment(void);
void TSL_MCKey_PreErrorTreatment(void);
u8 TSL_MCKey_Position(void);
void TSL_MCKey_CheckDisabled(void);
void TSL_MCKey_CheckEnabled(void);
u8 TSL_MCKey_CheckErrorCondition(void);

#endif /* __TSL_MULTICHANNELKEY_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

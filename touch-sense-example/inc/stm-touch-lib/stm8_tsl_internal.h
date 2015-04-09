/**
  ******************************************************************************
  * @file    stm8_tsl_internal.h
  * @author  MCD Application Team
  * @version V2.5.0
  * @date    14-October-2013
  * @brief   This file contains all functions prototype and macros internal to the touch sensing library.
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
#ifndef __TSL_INTERNAL_H
#define __TSL_INTERNAL_H

/* Includes ------------------------------------------------------------------*/
#include "stm8_tsl_rc_acquisition.h"
#include "stm8_tsl_api.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported variables --------------------------------------------------------*/
extern u8 TINY KeyIndex, ChannelIndex;
extern s16 TINY Delta;
extern s16 TINY Delta1;
extern s16 TINY Delta2;
extern s16 TINY Delta3;
extern KeyFlag_T TINY TSL_TempGlobalSetting;
extern KeyState_T TINY TSL_TempGlobalState;
extern u8 TINY Local_TickECS10ms;
extern TimerFlag_T TINY Local_TickFlag;
extern u8 TINY ECSTimeStepCounter;
extern u8 ECSTempoCounter;
extern u8 ECSTempoPrescaler;

/* Exported functions --------------------------------------------------------*/

#endif /* __TSL_INTERNAL_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

/**
  ******************************************************************************
  * @file    stm8_tsl_checkconfig.h
  * @author  MCD Application Team
  * @version V2.5.0
  * @date    14-October-2013
  * @brief   This file checks the configuration file options.
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
#ifndef __TSL_CHECKCONFIG_H
#define __TSL_CHECKCONFIG_H

/* Includes ------------------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macros -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/
/* Exported variables --------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/


//------------------------------------------------------------------------------
// MCU check
//------------------------------------------------------------------------------

//#if (MCU_SELECTION < 1) || (MCU_SELECTION > 4)
//#error "Wrong MCU selection for RC technology."
//#endif

#if (MCU_SELECTION == 1)
#define MCU_STM8S (1)
#endif


//------------------------------------------------------------------------------
// Standard Peripherals Library selection
//------------------------------------------------------------------------------

#if defined(MCU_STM8S)
#include "stm8s.h"
#endif


//------------------------------------------------------------------------------
// Single channel keys check
//------------------------------------------------------------------------------

#if (SCKEY_P1_KEY_COUNT < 0) || (SCKEY_P1_KEY_COUNT > 8)
#error "Wrong number of single channel keys on port1. Must be in the [0..8] range."
#endif

#if (SCKEY_P2_KEY_COUNT < 0) || (SCKEY_P2_KEY_COUNT > 8)
#error "Wrong number of single channel keys on port2. Must be in the [0..8] range."
#endif

#if (SCKEY_P3_KEY_COUNT < 0) || (SCKEY_P3_KEY_COUNT > 8)
#error "Wrong number of single channel keys on port3. Must be in the [0..8] range."
#endif

// Calculates the total number of single-channel keys
#define NUMBER_OF_SINGLE_CHANNEL_KEYS (SCKEY_P1_KEY_COUNT + SCKEY_P2_KEY_COUNT + SCKEY_P3_KEY_COUNT)

#if (SCKEY_P1_KEY_COUNT == 0) && ( (SCKEY_P2_KEY_COUNT > 0) || (SCKEY_P3_KEY_COUNT > 0) )
#error "Key(s) defined on BANK2 or BANK3 while no key defined on BANK1. BANK1 must be used before using BANK2 or BANK3"
#endif

#if (SCKEY_P2_KEY_COUNT == 0) && (SCKEY_P3_KEY_COUNT > 0)
#error "Key(s) defined on BANK3 while no key defined on BANK2. BANK2 must be used before using BANK3"
#endif

#if (SCKEY_P1_KEY_COUNT == 0)
#define NUMBER_OF_SINGLE_CHANNEL_PORTS (0)
#else

#if (SCKEY_P2_KEY_COUNT == 0) && (SCKEY_P3_KEY_COUNT == 0)
#define NUMBER_OF_SINGLE_CHANNEL_PORTS (1)
#endif

#if (SCKEY_P2_KEY_COUNT > 0) && (SCKEY_P3_KEY_COUNT == 0)
#define NUMBER_OF_SINGLE_CHANNEL_PORTS (2)
#endif

#if (SCKEY_P2_KEY_COUNT > 0) && (SCKEY_P3_KEY_COUNT > 0)
#define NUMBER_OF_SINGLE_CHANNEL_PORTS (3)
#endif

#endif


//==============================================================================
//
// PORT MASK definition for multi-channel keys
//
//
//==============================================================================

#if NUMBER_OF_MULTI_CHANNEL_KEYS == 0
#define MKEY_CH1_MASK (0)
#define MKEY_CH2_MASK (0)
#define MKEY_CH3_MASK (0)
#elif NUMBER_OF_MULTI_CHANNEL_KEYS == 1
#define MKEY_CH1_MASK \
  ( ((MCKEY1_A_CH == CH1)? MCKEY1_A:0)|((MCKEY1_B_CH == CH1)? MCKEY1_B:0)|\
    ((MCKEY1_C_CH == CH1)? MCKEY1_C:0)|((MCKEY1_D_CH == CH1)? MCKEY1_D:0)|\
    ((MCKEY1_E_CH == CH1)? MCKEY1_E:0)|((MCKEY1_F_CH == CH1)? MCKEY1_F:0)|\
    ((MCKEY1_G_CH == CH1)? MCKEY1_G:0)|((MCKEY1_H_CH == CH1)? MCKEY1_H:0)\
  )
#define MKEY_CH2_MASK \
  ( ((MCKEY1_A_CH == CH2)? MCKEY1_A:0)|((MCKEY1_B_CH == CH2)? MCKEY1_B:0)|\
    ((MCKEY1_C_CH == CH2)? MCKEY1_C:0)|((MCKEY1_D_CH == CH2)? MCKEY1_D:0)|\
    ((MCKEY1_E_CH == CH2)? MCKEY1_E:0)|((MCKEY1_F_CH == CH2)? MCKEY1_F:0)|\
    ((MCKEY1_G_CH == CH2)? MCKEY1_G:0)|((MCKEY1_H_CH == CH2)? MCKEY1_H:0)\
  )
#define MKEY_CH3_MASK \
  ( ((MCKEY1_A_CH == CH3)? MCKEY1_A:0)|((MCKEY1_B_CH == CH3)? MCKEY1_B:0)|\
    ((MCKEY1_C_CH == CH3)? MCKEY1_C:0)|((MCKEY1_D_CH == CH3)? MCKEY1_D:0)|\
    ((MCKEY1_E_CH == CH3)? MCKEY1_E:0)|((MCKEY1_F_CH == CH3)? MCKEY1_F:0)|\
    ((MCKEY1_G_CH == CH3)? MCKEY1_G:0)|((MCKEY1_H_CH == CH3)? MCKEY1_H:0)\
  )

#elif NUMBER_OF_MULTI_CHANNEL_KEYS == 2

#define MKEY_CH1_MASK \
  ( ((MCKEY1_A_CH == CH1)? MCKEY1_A:0)|((MCKEY1_B_CH == CH1)? MCKEY1_B:0)|\
    ((MCKEY1_C_CH == CH1)? MCKEY1_C:0)|((MCKEY1_D_CH == CH1)? MCKEY1_D:0)|\
    ((MCKEY1_E_CH == CH1)? MCKEY1_E:0)|((MCKEY1_F_CH == CH1)? MCKEY1_F:0)|\
    ((MCKEY1_G_CH == CH1)? MCKEY1_G:0)|((MCKEY1_H_CH == CH1)? MCKEY1_H:0)|\
    ((MCKEY2_A_CH == CH1)? MCKEY2_A:0)|((MCKEY2_B_CH == CH1)? MCKEY2_B:0)|\
    ((MCKEY2_C_CH == CH1)? MCKEY2_C:0)|((MCKEY2_D_CH == CH1)? MCKEY2_D:0)|\
    ((MCKEY2_E_CH == CH1)? MCKEY2_E:0)|((MCKEY2_F_CH == CH1)? MCKEY2_F:0)|\
    ((MCKEY2_G_CH == CH1)? MCKEY2_G:0)|((MCKEY2_H_CH == CH1)? MCKEY2_H:0)\
  )
#define MKEY_CH2_MASK \
  ( ((MCKEY1_A_CH == CH2)? MCKEY1_A:0)|((MCKEY1_B_CH == CH2)? MCKEY1_B:0)|\
    ((MCKEY1_C_CH == CH2)? MCKEY1_C:0)|((MCKEY1_D_CH == CH2)? MCKEY1_D:0)|\
    ((MCKEY1_E_CH == CH2)? MCKEY1_E:0)|((MCKEY1_F_CH == CH2)? MCKEY1_F:0)|\
    ((MCKEY1_G_CH == CH2)? MCKEY1_G:0)|((MCKEY1_H_CH == CH2)? MCKEY1_H:0)|\
    ((MCKEY2_A_CH == CH2)? MCKEY2_A:0)|((MCKEY2_B_CH == CH2)? MCKEY2_B:0)|\
    ((MCKEY2_C_CH == CH2)? MCKEY2_C:0)|((MCKEY2_D_CH == CH2)? MCKEY2_D:0)|\
    ((MCKEY2_E_CH == CH2)? MCKEY2_E:0)|((MCKEY2_F_CH == CH2)? MCKEY2_F:0)|\
    ((MCKEY2_G_CH == CH2)? MCKEY2_G:0)|((MCKEY2_H_CH == CH2)? MCKEY2_H:0)\
  )
#define MKEY_CH3_MASK \
  ( ((MCKEY1_A_CH == CH3)? MCKEY1_A:0)|((MCKEY1_B_CH == CH3)? MCKEY1_B:0)|\
    ((MCKEY1_C_CH == CH3)? MCKEY1_C:0)|((MCKEY1_D_CH == CH3)? MCKEY1_D:0)|\
    ((MCKEY1_E_CH == CH3)? MCKEY1_E:0)|((MCKEY1_F_CH == CH3)? MCKEY1_F:0)|\
    ((MCKEY1_G_CH == CH3)? MCKEY1_G:0)|((MCKEY1_H_CH == CH3)? MCKEY1_H:0)|\
    ((MCKEY2_A_CH == CH3)? MCKEY2_A:0)|((MCKEY2_B_CH == CH3)? MCKEY2_B:0)|\
    ((MCKEY2_C_CH == CH3)? MCKEY2_C:0)|((MCKEY2_D_CH == CH3)? MCKEY2_D:0)|\
    ((MCKEY2_E_CH == CH3)? MCKEY2_E:0)|((MCKEY2_F_CH == CH3)? MCKEY2_F:0)|\
    ((MCKEY2_G_CH == CH3)? MCKEY2_G:0)|((MCKEY2_H_CH == CH3)? MCKEY2_H:0)\
  )

#endif


//------------------------------------------------------------------------------
// Multi channel keys check
//------------------------------------------------------------------------------

#if (NUMBER_OF_MULTI_CHANNEL_KEYS < 0) || (NUMBER_OF_MULTI_CHANNEL_KEYS > 2)
#error "Wrong number of multi channel keys. Must be in the [0..2] range."
#endif

#if (NUMBER_OF_MULTI_CHANNEL_KEYS > 0)

#if (CHANNEL_PER_MCKEY != 5) && (CHANNEL_PER_MCKEY != 8)
#error "Wrong number of channel for multi channel keys. Must be equal to 5 or 8."
#endif

#ifndef MCKEY1_TYPE
#error "MCKEY1_TYPE is not defined."
#endif

#if (MCKEY1_TYPE != 0) && (MCKEY1_TYPE != 1)
#error "Wrong MCKEY1 type. Must be equal to 0 (wheel) or 1 (slider)."
#endif

#ifndef MCKEY1_LAYOUT_TYPE
#error "MCKEY1_LAYOUT_TYPE is not defined."
#endif

#if (MCKEY1_LAYOUT_TYPE != 0) && (MCKEY1_LAYOUT_TYPE != 1)
#error "Wrong MCKEY1 layout type. Must be equal to 0 (Interlaced) or 1 (Normal)."
#endif

#endif

#if (NUMBER_OF_MULTI_CHANNEL_KEYS > 1)

#ifndef MCKEY2_TYPE
#error "MCKEY2_TYPE is not defined."
#endif

#if (MCKEY2_TYPE != 0) && (MCKEY2_TYPE != 1)
#error "Wrong MCKEY2 type. Must be equal to 0 (wheel) or 1 (slider)."
#endif

#ifndef MCKEY2_LAYOUT_TYPE
#error "MCKEY2_LAYOUT_TYPE is not defined."
#endif

#if (MCKEY2_LAYOUT_TYPE != 0) && (MCKEY2_LAYOUT_TYPE != 1)
#error "Wrong MCKEY2 layout type. Must be equal to 0 (Interlaced) or 1 (Normal)."
#endif

#endif


//----------------------------------------------------------------------------
//                       Acquisition slot selection
//----------------------------------------------------------------------------

#define NUMBER_OF_ACQUISITION_PORTS  NUMBER_OF_SINGLE_CHANNEL_PORTS

#if (NUMBER_OF_SINGLE_CHANNEL_KEYS == 0) && (NUMBER_OF_MULTI_CHANNEL_KEYS == 0)
#error "At least one key must be defined !"
#endif


//============================================================================
// TSL PARAMETERS CONFIGURATION
//============================================================================

#if !defined(NEGDETECT_AUTOCAL)
#error "Please define NEGDETECT_AUTOCAL (with value at 0 or 1)"
#endif

#if !defined(SPREAD_SPECTRUM)
#error "Please define SPREAD_SPECTRUM (with value at 0 or 1)"
#endif

#if SPREAD_SPECTRUM
#if (SPREAD_COUNTER_MAX > 255) || (SPREAD_COUNTER_MAX <= SPREAD_COUNTER_MIN)
#error " The SPREAD_COUNTER_MAX value must be a 8-bit value in the range of [2 - 255] !"
#endif
#endif


//------------------------------------------------------------------------------
// Additional definitions
//------------------------------------------------------------------------------

#ifndef CONST
#ifdef _COSMIC_
#define CONST  const
#elif defined _RAISONANCE_
#define CONST  code
#elif defined(__ICCSTM8__) // IAR
#define CONST  const
#elif defined(SDCC)
#define _SDCC_
#endif
#endif

#endif /* __TSL_CHECKCONFIG_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

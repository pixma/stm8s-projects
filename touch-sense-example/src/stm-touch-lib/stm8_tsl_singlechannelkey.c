/**
  ******************************************************************************
  * @file    stm8_tsl_singlechannelkey.c
  * @author  MCD Application Team
  * @version V2.5.0
  * @date    14-October-2013
  * @brief   This file provides the functions to manage the single channel Key.
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
#include "stm8_tsl_singlechannelkey.h"
#include "stm8_tsl_api.h"
#include "stm8_tsl_services.h"

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
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

#if NUMBER_OF_SINGLE_CHANNEL_KEYS > 0
/**
  ******************************************************************************
  * @brief Initialize all SCKey relative parameters and variables.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_Init(void)
{
  for (KeyIndex = 0; KeyIndex < NUMBER_OF_SINGLE_CHANNEL_KEYS; KeyIndex++)
  {
    TSL_SetStructPointer();
    pKeyStruct->State.whole = DISABLED_STATE;
    pKeyStruct->DetectThreshold = SCKEY_DETECTTHRESHOLD_DEFAULT;
    pKeyStruct->EndDetectThreshold = SCKEY_ENDDETECTTHRESHOLD_DEFAULT;
    pKeyStruct->RecalibrationThreshold = SCKEY_RECALIBRATIONTHRESHOLD_DEFAULT;
  }
}
#endif

/**
  ******************************************************************************
  * @brief Select Port 1 I/Os to burst and call IO driver for burst sequence.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKEY_P1_Acquisition(void)
{
  sTouchIO.PORT_ADDR = (GPIO_TypeDef *)(SCKEY_P1_PORT_ADDR);
  for (KeyIndex = 0; KeyIndex < SCKEY_P1_KEY_COUNT; KeyIndex++)
  {
    TSL_SetStructPointer();
    if ((pKeyStruct->State.whole != ERROR_STATE) && (pKeyStruct->State.whole != DISABLED_STATE))
    {
      sTouchIO.AcqMask = Table_SCKEY_BITS[KeyIndex];
      sTouchIO.DriveMask = (u8)(sTouchIO.AcqMask | SCKEY_P1_DRIVEN_SHIELD_MASK);
      sTouchIO.Measurement = &sSCKeyInfo[KeyIndex].Channel.LastMeas;
      sTouchIO.RejectedNb = &sSCKeyInfo[KeyIndex].Channel.LastMeasRejectNb;
      sTouchIO.Type = SCKEY_TYPE;
      TSL_IO_Acquisition(SCKEY_ACQ_NUM, SCKEY_ADJUST_LEVEL);
    }
  }
}


#if NUMBER_OF_ACQUISITION_PORTS > 1
/**
  ******************************************************************************
  * @brief Select Port 2 I/Os to burst and call IO driver for burst sequence.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKEY_P2_Acquisition(void)
{
  sTouchIO.PORT_ADDR = (GPIO_TypeDef *)(SCKEY_P2_PORT_ADDR);
  for (KeyIndex = SCKEY_P1_KEY_COUNT; KeyIndex < (SCKEY_P2_KEY_COUNT + SCKEY_P1_KEY_COUNT); KeyIndex++)
  {
    TSL_SetStructPointer();
    if ((pKeyStruct->State.whole != ERROR_STATE) && (pKeyStruct->State.whole != DISABLED_STATE))
    {
      sTouchIO.AcqMask = Table_SCKEY_BITS[KeyIndex];
     
      sTouchIO.DriveMask = (u8)(sTouchIO.AcqMask | SCKEY_P2_DRIVEN_SHIELD_MASK);
      sTouchIO.Measurement = &sSCKeyInfo[KeyIndex].Channel.LastMeas;
      sTouchIO.RejectedNb = &sSCKeyInfo[KeyIndex].Channel.LastMeasRejectNb;
      sTouchIO.Type = SCKEY_TYPE;
      TSL_IO_Acquisition(SCKEY_ACQ_NUM, SCKEY_ADJUST_LEVEL);
    }
  }
}
#endif


#if NUMBER_OF_ACQUISITION_PORTS > 2
/**
  ******************************************************************************
  * @brief Select Port 3 I/Os to burst and call IO driver for burst sequence.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKEY_P3_Acquisition(void)
{
  sTouchIO.PORT_ADDR = (GPIO_TypeDef *)(SCKEY_P3_PORT_ADDR);
  for (KeyIndex = (SCKEY_P1_KEY_COUNT + SCKEY_P2_KEY_COUNT); KeyIndex < (SCKEY_P3_KEY_COUNT + SCKEY_P1_KEY_COUNT + SCKEY_P2_KEY_COUNT); KeyIndex++)
  {
    TSL_SetStructPointer();
    if ((pKeyStruct->State.whole != ERROR_STATE) && (pKeyStruct->State.whole != DISABLED_STATE))
    {
      sTouchIO.AcqMask = Table_SCKEY_BITS[KeyIndex];
      sTouchIO.DriveMask = (u8)(sTouchIO.AcqMask | SCKEY_P3_DRIVEN_SHIELD_MASK);
      sTouchIO.Measurement = &sSCKeyInfo[KeyIndex].Channel.LastMeas;
      sTouchIO.RejectedNb = &sSCKeyInfo[KeyIndex].Channel.LastMeasRejectNb;
      sTouchIO.Type = SCKEY_TYPE;
      TSL_IO_Acquisition(SCKEY_ACQ_NUM, SCKEY_ADJUST_LEVEL);
    }
  }
}
#endif


#if NUMBER_OF_SINGLE_CHANNEL_KEYS > 0

/**
  ******************************************************************************
  * @brief After Touch Sensing acquisition, this function launch the data interpretation.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_Process(void)
{
  TSL_SetStructPointer();

  TSL_DeltaCalculation();

  switch (pKeyStruct->State.whole)
  {

    case IDLE_STATE:
      if (TSL_SCKey_CheckErrorCondition())
      {
        TSL_SCKey_SetErrorState();
        break;
      }
      TSL_SCKey_IdleTreatment();
      TSL_SCKey_CheckDisabled();
      break;

    case PRE_DETECTED_STATE:
      TSL_SCKey_PreDetectTreatment();
      break;

    case DETECTED_STATE:
      if (TSL_SCKey_CheckErrorCondition())
      {
        TSL_SCKey_SetErrorState();
        break;
      }
      TSL_SCKey_DetectedTreatment();
      TSL_SCKey_CheckDisabled();
      break;

    case POST_DETECTED_STATE:
      TSL_SCKey_PostDetectTreatment();
      break;

    case PRE_CALIBRATION_STATE:
      TSL_SCKey_PreRecalibrationTreatment();
      break;

    case CALIBRATION_STATE:
      if (TSL_SCKey_CheckErrorCondition())
      {
        TSL_SCKey_SetErrorState();
        break;
      }
      TSL_SCKey_CalibrationTreatment();
      TSL_SCKey_CheckDisabled();
      break;

    case ERROR_STATE:
      TSL_SCKey_CheckDisabled();
      break;

    case DISABLED_STATE:
      TSL_SCKey_CheckEnabled();
      break;

    default:
      for (;;)
      {
        // Infinite loop.
      }

  }

  TSL_TempGlobalSetting.whole |= pKeyStruct->Setting.whole;
  TSL_TempGlobalState.whole |= pKeyStruct->State.whole;
  pKeyStruct->Setting.b.CHANGED = 0;
}


/**
  ******************************************************************************
  * @brief Check SCKey info during Idle state: Verify detection and recalibration.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_IdleTreatment(void)
{
  /* Ignore channel if too much noise is detected */
  if (pKeyStruct->Channel.LastMeasRejectNb > MAX_REJECTED_MEASUREMENTS)
  {
    return;
  }

#if NEGDETECT_AUTOCAL == 1
  if (Delta <= pKeyStruct->RecalibrationThreshold)
  {
    TSL_SCKey_SetPreRecalibrationState();
    return;
  }
#endif

#if NEGDETECT_AUTOCAL == 1
  if (Delta >= pKeyStruct->DetectThreshold)
#else
  if ((Delta >= pKeyStruct->DetectThreshold) || (Delta <= pKeyStruct->RecalibrationThreshold))
#endif
  {
    TSL_SCKey_SetPreDetectState();
    if (!DetectionIntegrator)
    {
      pKeyStruct->Channel.IntegratorCounter++;
      TSL_SCKey_PreDetectTreatment();
    }
  }
}


/**
  ******************************************************************************
  * @brief Check SCKey info during PRE DETECT state: Verify detection integrator and detection exclusion.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_PreDetectTreatment(void)
{

#if NEGDETECT_AUTOCAL == 1
  if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
      (Delta >= pKeyStruct->DetectThreshold))
#else
  if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
      ((Delta >= pKeyStruct->DetectThreshold) || (Delta <= pKeyStruct->RecalibrationThreshold)))
#endif
  {
    TSL_SCKey_DxS();
    pKeyStruct->Channel.IntegratorCounter--;
    if (!pKeyStruct->Channel.IntegratorCounter)
    {
      TSL_SCKey_SetDetectedState();
    }
  }
  else
  {
    TSL_SCKey_BackToIdleState();
    return;
  }
}


/**
  ******************************************************************************
  * @brief Check SCKey info during DETECTED state: Verify detection timeout, end of detection and detection exclusion.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_DetectedTreatment(void)
{
#if NEGDETECT_AUTOCAL == 1
  if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
      (Delta <= pKeyStruct->EndDetectThreshold))
#else
  if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
      (((Delta <= pKeyStruct->EndDetectThreshold) && (Delta > 0)) ||
       ((Delta >= pKeyStruct->RecalibrationThreshold) && (Delta < 0))))
#endif
  {
    TSL_SCKey_SetPostDetectState();
    if (!EndDetectionIntegrator)
    {
      pKeyStruct->Channel.IntegratorCounter++;
      TSL_SCKey_PostDetectTreatment();
    }
    return;
  }

  TSL_SCKey_DetectionTimeout();
}


/**
  ******************************************************************************
  * @brief Check SCKey info during POST DETECT state: Verify end of detection.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_PostDetectTreatment(void)
{
#if NEGDETECT_AUTOCAL == 1
  if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
      (Delta <= pKeyStruct->EndDetectThreshold))
#else
  if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
      (((Delta <= pKeyStruct->EndDetectThreshold) && (Delta > 0)) ||
       ((Delta >= pKeyStruct->RecalibrationThreshold) && (Delta < 0))))
#endif
  {
    pKeyStruct->Channel.IntegratorCounter--;
    if (!pKeyStruct->Channel.IntegratorCounter)
    {
      TSL_SCKey_SetIdleState();
    }
  }
  else
  {
    // No reset of DTO counter.
    TSL_SCKey_BackToDetectedState();
  }
}


/**
  ******************************************************************************
  * @brief Check SCKey info during PRE RECALIBRATION state: Verify condition for recalibration.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_PreRecalibrationTreatment(void)
{
  if ((pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS) &&
      (Delta <= pKeyStruct->RecalibrationThreshold))
  {
    pKeyStruct->Channel.IntegratorCounter--;
    if (!pKeyStruct->Channel.IntegratorCounter)
    {
      TSL_SCKey_SetCalibrationState();
    }
  }
  else
  {
    TSL_SCKey_BackToIdleState();
  }
}


/**
  ******************************************************************************
  * @brief During calibration, calculates the new reference.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_CalibrationTreatment(void)
{
  if (pKeyStruct->Channel.LastMeasRejectNb <= MAX_REJECTED_MEASUREMENTS)
  {
    pKeyStruct->Channel.Reference += pKeyStruct->Channel.LastMeas;
    pKeyStruct->Counter--;
    if (!pKeyStruct->Counter)
    {
      // Warning: Must be divided by SCKEY_CALIBRATION_COUNT_DEFAULT !!!
      pKeyStruct->Channel.Reference = (pKeyStruct->Channel.Reference >> 3);
      TSL_SCKey_SetIdleState();
    }
  }
}


/**
  ******************************************************************************
  * @brief Takes into account the customer code settings in memory to disable the key.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_CheckDisabled(void)
{
  if (!pKeyStruct->Setting.b.ENABLED)
  {
    TSL_SCKey_SetDisabledState();
  }
}


/**
  ******************************************************************************
  * @brief Takes into account the customer code settings in memory to enable the key.
  * @par Parameters:
  * None
  * @retval void None
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
void TSL_SCKey_CheckEnabled(void)
{
  if (pKeyStruct->Setting.b.ENABLED && pKeyStruct->Setting.b.IMPLEMENTED)
  {
    TSL_SCKey_SetCalibrationState();
  }
}


/**
  ******************************************************************************
  * @brief Verification of the last acquisition result to be within the authorized range.
  * @par Parameters:
  * None
  * @retval u8 Returns 0xFF if burst count out of range, 0 if OK.
  * @par Required preconditions:
  * None
  ******************************************************************************
  */
u8 TSL_SCKey_CheckErrorCondition(void)
{
  if ((pKeyStruct->Channel.LastMeas < SCKEY_MIN_ACQUISITION)
      || (pKeyStruct->Channel.LastMeas > SCKEY_MAX_ACQUISITION))
  {
    return 0xFF;  // Error case !
  }

  return 0;
}
#endif
/* Public functions ----------------------------------------------------------*/

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

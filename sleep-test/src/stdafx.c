
#include "stdafx.h"

/**
     * @brief  Configure the AWU time base to 12s
     * @param  None
     * @retval None
**/

void AWU_Config(void){
    /* Initialization of AWU */
    /* LSI calibration for accurate auto wake up time base*/
    AWU_LSICalibrationConfig(LSIMeasurment());

    /* The delay corresponds to the time we will stay in Halt mode */
    AWU_Init(AWU_TIMEBASE_30S);
}


uint32_t LSIMeasurment(void){
    uint32_t lsi_freq_hz = 0x0;
    uint32_t fmaster = 0x0;
    uint16_t ICValue1 = 0x0;
    uint16_t ICValue2 = 0x0;

    /* Get master frequency */
    fmaster = CLK_GetClockFreq();

    /* Enable the LSI measurement: LSI clock connected to timer Input Capture 1 */
    AWU->CSR |= AWU_CSR_MSR;
    /* Compute LSI clock frequency */
    lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);

    /* Disable the LSI measurement: LSI clock disconnected from timer Input Capture 1 */
    AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
    return (lsi_freq_hz);
}


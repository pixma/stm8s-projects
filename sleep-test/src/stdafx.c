
#include "stdafx.h"

/**
     * @brief  Configure the AWU time base to 12s
     * @param  None
     * @retval None
**/

void AWU_Config(void){
    /* Initialization of AWU */
    /* LSI calibration for accurate auto wake up time base*/
    //AWU_LSICalibrationConfig(LSIMeasurment());
    AWU_LSICalibrationConfig(LSIMeasurment());

    /* The delay corresponds to the time we will stay in Halt mode */
    AWU_Init(AWU_TIMEBASE_2S);
}


uint32_t LSIMeasurment(void){
    uint32_t lsi_freq_hz = 128;
    uint32_t fmaster = 0x0;
    uint16_t ICValue1 = 0x0;
    uint16_t ICValue2 = 0x0;

    /* Get master frequency */
    fmaster = CLK_GetClockFreq();

    /* Enable the LSI measurement: LSI clock connected to timer Input Capture 1 */
    AWU->CSR |= AWU_CSR_MSR;
    /* Measure the LSI frequency with TIMER Input Capture 1 */
    /* Capture only every 8 events!!! */
    /* Enable capture of TI1 */
    TIM3_ICInit(TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI, TIM3_ICPSC_DIV8, 0);
    /* Enable TIM3 */
    TIM3_Cmd(ENABLE);


    /* wait a capture on cc1 */
    while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
    ICValue1 = TIM3_GetCapture1();
    TIM3_ClearFlag(TIM3_FLAG_CC1);

    /* wait a capture on cc1 */
    while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
    /* Get CCR1 value*/
    ICValue2 = TIM3_GetCapture1();
    TIM3_ClearFlag(TIM3_FLAG_CC1);


    /* Disable IC1 input capture */
    TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
    /* Disable timer3 */
    TIM3_Cmd(DISABLE);

    /* Compute LSI clock frequency */
    lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);

    /* Disable the LSI measurement: LSI clock disconnected from timer Input Capture 1 */
    AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
    return (lsi_freq_hz);
}




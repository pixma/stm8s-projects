
#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_clk.h"
#include "stm8s_uart2.h"
#include "stm8s_adc1.h"
#include "stdafx.h"

#define WITH_UART_EXP 1

int main( void ){

    uint16_t i; // Always use standardized variable types...
    uint16_t nCount = 0;
    uint16_t adc_value = 0;
    uint8_t adc_h = 0;
    uint8_t adc_l = 0;
    uint16_t nAdc_Buffer[10] = {0,0,0,0,0,0,0,0,0,0};
    uint16_t nAdc_Hold = 0;

    // Reset GPIO port D to a default state
    GPIO_DeInit(GPIOD);

    // Set operation mode for port D / pin 0
    // (connected to the onboard LED

    //Initialization of the clock
    /* Clock divider to HSI/1 */
    //CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

    /* UART configuration -----------------------------------------*/
    UART_Config();

    /* ADC 1 Configuration ----------------------------------------*/
    ADC_Config();

    ADC1_StartConversion();

    GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
    // The main loop
    while( 1 ){
        for(i=0;i<20000;i++) // A delay loop
        {
            nop();
        }

        // Toggle the output pin
        GPIO_WriteReverse(GPIOD, GPIO_PIN_0);

        for ( nCount = 0; nCount< 10; nCount++){
            nAdc_Buffer[nCount] = ADC1_GetConversionValue();
            nAdc_Hold += nAdc_Buffer[nCount];
        }
        nAdc_Buffer[0] = nAdc_Hold / 10;
        adc_value = nAdc_Buffer[0];
        //adc_h = (uint8_t)((adc_value & 0xff00)>>8);
        //adc_l = (uint8_t)((adc_value & 0x00ff));

        for ( nCount = 0; nCount< 10; nCount++){
            nAdc_Buffer[nCount] = 0;
        }
        nAdc_Hold = 0;

        #ifdef WITH_UART_EXP
        //UART2_SendData8((uint8_t)0x00);
        //UART2_SendData8((uint8_t)adc_h);
        //UART2_SendData8((uint8_t)0x20)
        //UART2_SendData8(adc_l);
        UART2_SendData8((uint8_t)adc_value);
        #endif // WITH_UART_EXP
    }

}

static void UART_Config(void){
    //Reset uart
    UART2_DeInit();
    UART2_Init((uint32_t)9600, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO, UART2_SYNCMODE_CLOCK_DISABLE, UART2_MODE_TXRX_ENABLE );
}

static void ADC_Config( void ){
    GPIO_Init(GPIOB, GPIO_PIN_0, GPIO_MODE_IN_FL_NO_IT );
    ADC1_DeInit();
    ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS, ADC1_CHANNEL_0, ADC1_PRESSEL_FCPU_D2, ADC1_EXTTRIG_TIM,DISABLE, ADC1_ALIGN_RIGHT, ADC1_SCHMITTTRIG_CHANNEL0, DISABLE );
}






#include "stm8s.h"
#include "stm8s_gpio.h"
#include "stm8s_clk.h"
#include "stm8s_uart2.h"
#include "stdafx.h"

#define WITH_UART_EXP 1

int main( void ){

    uint16_t i; // Always use standardized variable types...

    // Reset GPIO port D to a default state
    GPIO_DeInit(GPIOD);

    // Set operation mode for port D / pin 0
    // (connected to the onboard LED

    //Initialization of the clock
    /* Clock divider to HSI/1 */
    //CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

    /* UART configuration -----------------------------------------*/
    UART_Config();

    GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
    // The main loop
    while( 1 ){
        for(i=0;i<20000;i++) // A delay loop
        {
            nop();
        }

        // Toggle the output pin
        GPIO_WriteReverse(GPIOD, GPIO_PIN_0);

        #ifdef WITH_UART_EXP
        UART2_SendData8((uint8_t)'A');
        #endif // WITH_UART_EXP
    }

}

static void UART_Config(void){
    //Reset uart
    UART2_DeInit();
    UART2_Init((uint32_t)9600, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO, UART2_SYNCMODE_CLOCK_DISABLE, UART2_MODE_TXRX_ENABLE );
}





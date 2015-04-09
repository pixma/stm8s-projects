#include "stdafx.h"


static void CLK_Config(void);

int main( void ){

    uint16_t i;
    // Reset GPIO port D to a default state
    GPIO_DeInit(GPIOD);

    /* Clock configuration -----------------------------------------*/
    //CLK_Config();

    /*AWU configuration --------------------------------------------*/
    AWU_Config();

    GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
    // The main loop
    while( 1 ){

        GPIO_WriteLow(GPIOD, GPIO_PIN_0);

        for(i=0;i<10000;i++) // A delay loop
        {
            nop();
        }
        GPIO_WriteHigh(GPIOD, GPIO_PIN_0);

        halt();/* Program halted */
    }

}

static void CLK_Config(void){
    //CLK_DeInit();
    CLK_HSIPrescalerConfig(CLK_PRESCALER_CPUDIV128);
}





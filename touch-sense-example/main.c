// main.c

//core header files required for stm8

/* Includes ------------------------------------------------------------------*/
#include "stm8_tsl_api.h"
#include "stdafx.h"


int main( void ){

    //reset port D
    GPIO_DeInit(GPIOD);

    // Set operation mode for port D / pin 0
    // (connected to the onboard LED)
    GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);

    //The Main loop
    while( 1 ){
        uint16_t i; // Always use standardized variable types...
        for(i=0;i<20000;i++) // A delay loop
        {
            nop();
        }
        GPIO_WriteReverse(GPIOD, GPIO_PIN_0);
    }
}

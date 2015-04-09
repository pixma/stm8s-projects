

#include "stdafx.h"


int main( void ){

    uint16_t i;
    // Reset GPIO port D to a default state
    //GPIO_DeInit(GPIOD);

    /*AWU configuration --------------------------------------------*/
    AWU_Config();

    //GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
    // The main loop
    while( 1 ){

        //GPIO_WriteLow(GPIOD, GPIO_PIN_0);

//        for(i=0;i<10000;i++) // A delay loop
//        {
//            nop();
//        }
        //GPIO_WriteHigh(GPIOD, GPIO_PIN_0);

        halt();/* Program halted */
    }

}




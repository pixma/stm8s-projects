#include "stdafx.h"


int main( void ){

    uint16_t i;

    GPIO_DeInit(GPIOD);
    SPI_DeInit();

    GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
    init_spi();

    // The main loop
    while( 1 ){

        for(i=0;i<15000;i++) // A delay loop
        {
            nop();
        }
        GPIO_WriteReverse(GPIOD, GPIO_PIN_0);
        spi_write_data_8t("keep going...", 0x40);//Random Address 0x40 for now.
    }

}





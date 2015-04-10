
#include "stdafx.h"

void init_spi(void){
    // Enable SPI Clock.
    CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);

    //Set the MOSI, MISO and SCk at high Level.
    GPIO_ExternalPullUpConfig(GPIOC, (GPIO_Pin_TypeDef)(GPIO_PIN_7|GPIO_PIN_6|GPIO_PIN_5),ENABLE);

    // SPI Configuration Inti.
    SPI_Init(SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_8, SPI_MODE_MASTER, SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE,SPI_DATADIRECTION_2LINES_FULLDUPLEX, SPI_NSS_SOFT,0x07);

    //Enable SPI.
    SPI_Cmd(ENABLE);

    // Set CS pin in Output push-pull high level.
    GPIO_Init(GPIOE, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_SLOW);
}

void spi_write_data_8t( uint8_t *pBuffer, uint8_t WriterAddr){

    GPIO_WriteHigh(GPIOE, GPIO_PIN_5);

    /*!< Wait until the transmit buffer is empty */
    while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET){}

    //Send Address
    SPI_SendData( WriterAddr );

    while( *pBuffer )
        SPI_SendData( *pBuffer++ );
}

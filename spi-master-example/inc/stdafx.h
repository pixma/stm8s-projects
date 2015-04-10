#ifndef STDAFX_H
#define STDAFX_H

#include "stm8s.h"
#include "stm8s_clk.h"
#include "stm8s_gpio.h"
#include "stm8s_spi.h"

void init_spi( void );
void spi_write_data_8t( uint8_t *, uint8_t );



#endif // STDAFX_H

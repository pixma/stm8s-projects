;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Fri Apr 10 13:48:28 2015
;--------------------------------------------------------
	.module stdafx
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_GetFlagStatus
	.globl _SPI_SendData
	.globl _SPI_Cmd
	.globl _SPI_Init
	.globl _CLK_PeripheralClockConfig
	.globl _GPIO_ExternalPullUpConfig
	.globl _GPIO_WriteHigh
	.globl _GPIO_Init
	.globl _init_spi
	.globl _spi_write_data_8t
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	src\stdafx.c: 4: void init_spi(void){
;	-----------------------------------------
;	 function init_spi
;	-----------------------------------------
_init_spi:
;	src\stdafx.c: 6: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
	push	#0x01
	push	#0x01
	call	_CLK_PeripheralClockConfig
	addw	sp, #2
;	src\stdafx.c: 9: GPIO_ExternalPullUpConfig(GPIOC, (GPIO_Pin_TypeDef)(GPIO_PIN_7|GPIO_PIN_6|GPIO_PIN_5),ENABLE);
	push	#0x01
	push	#0xe0
	push	#0x0a
	push	#0x50
	call	_GPIO_ExternalPullUpConfig
	addw	sp, #4
;	src\stdafx.c: 12: SPI_Init(SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_8, SPI_MODE_MASTER, SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE,SPI_DATADIRECTION_2LINES_FULLDUPLEX, SPI_NSS_SOFT,0x07);
	push	#0x07
	push	#0x02
	push	#0x00
	push	#0x01
	push	#0x02
	push	#0x04
	push	#0x10
	push	#0x00
	call	_SPI_Init
	addw	sp, #8
;	src\stdafx.c: 15: SPI_Cmd(ENABLE);
	push	#0x01
	call	_SPI_Cmd
	pop	a
;	src\stdafx.c: 18: GPIO_Init(GPIOE, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_SLOW);
	push	#0xd0
	push	#0x20
	push	#0x14
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
	ret
;	src\stdafx.c: 21: void spi_write_data_8t( uint8_t *pBuffer, uint8_t WriterAddr){
;	-----------------------------------------
;	 function spi_write_data_8t
;	-----------------------------------------
_spi_write_data_8t:
;	src\stdafx.c: 23: GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
	push	#0x20
	push	#0x14
	push	#0x50
	call	_GPIO_WriteHigh
	addw	sp, #3
;	src\stdafx.c: 26: while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET){}
00101$:
	push	#0x02
	call	_SPI_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00101$
;	src\stdafx.c: 29: SPI_SendData( WriterAddr );
	ld	a, (0x05, sp)
	push	a
	call	_SPI_SendData
	pop	a
;	src\stdafx.c: 31: while( *pBuffer )
	ldw	x, (0x03, sp)
00104$:
	ld	a, (x)
	tnz	a
	jreq	00107$
;	src\stdafx.c: 32: SPI_SendData( *pBuffer++ );
	incw	x
	pushw	x
	push	a
	call	_SPI_SendData
	pop	a
	popw	x
	jra	00104$
00107$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Apr 16 19:30:44 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ADC1_GetConversionValue
	.globl _ADC1_StartConversion
	.globl _ADC1_Init
	.globl _ADC1_DeInit
	.globl _UART2_SendData8
	.globl _UART2_Init
	.globl _UART2_DeInit
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _GPIO_DeInit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ;reset
	int 0x0000 ;trap
	int 0x0000 ;int0
	int 0x0000 ;int1
	int 0x0000 ;int2
	int 0x0000 ;int3
	int 0x0000 ;int4
	int 0x0000 ;int5
	int 0x0000 ;int6
	int 0x0000 ;int7
	int 0x0000 ;int8
	int 0x0000 ;int9
	int 0x0000 ;int10
	int 0x0000 ;int11
	int 0x0000 ;int12
	int 0x0000 ;int13
	int 0x0000 ;int14
	int 0x0000 ;int15
	int 0x0000 ;int16
	int 0x0000 ;int17
	int 0x0000 ;int18
	int 0x0000 ;int19
	int 0x0000 ;int20
	int 0x0000 ;int21
	int 0x0000 ;int22
	int 0x0000 ;int23
	int 0x0000 ;int24
	int 0x0000 ;int25
	int 0x0000 ;int26
	int 0x0000 ;int27
	int 0x0000 ;int28
	int 0x0000 ;int29
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	main.c: 11: int main( void ){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	sub	sp, #32
;	main.c: 18: uint16_t nAdc_Buffer[10] = {0,0,0,0,0,0,0,0,0,0};
	ldw	x, sp
	addw	x, #3
	ldw	(0x1f, sp), x
	ldw	x, (0x1f, sp)
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	incw	x
	incw	x
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	addw	x, #0x0004
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	addw	x, #0x0006
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	addw	x, #0x0008
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	addw	x, #0x000a
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	addw	x, #0x000c
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	addw	x, #0x000e
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	addw	x, #0x0010
	clr	(0x1, x)
	clr	(x)
	ldw	x, (0x1f, sp)
	addw	x, #0x0012
	clr	(0x1, x)
	clr	(x)
;	main.c: 19: uint16_t nAdc_Hold = 0;
	clrw	x
	ldw	(0x01, sp), x
;	main.c: 22: GPIO_DeInit(GPIOD);
	push	#0x0f
	push	#0x50
	call	_GPIO_DeInit
	addw	sp, #2
;	main.c: 32: UART_Config();
	call	_UART_Config
;	main.c: 35: ADC_Config();
	call	_ADC_Config
;	main.c: 37: ADC1_StartConversion();
	call	_ADC1_StartConversion
;	main.c: 39: GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
	push	#0xe0
	push	#0x01
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	main.c: 42: for(i=0;i<20000;i++) // A delay loop
00116$:
	ldw	x, #0x4e20
00109$:
;	main.c: 44: nop();
	nop
	decw	x
;	main.c: 42: for(i=0;i<20000;i++) // A delay loop
	tnzw	x
	jrne	00109$
;	main.c: 48: GPIO_WriteReverse(GPIOD, GPIO_PIN_0);
	push	#0x01
	push	#0x0f
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
;	main.c: 50: for ( nCount = 0; nCount< 10; nCount++){
	clrw	x
	ldw	(0x19, sp), x
00110$:
;	main.c: 51: nAdc_Buffer[nCount] = ADC1_GetConversionValue();
	ldw	x, (0x19, sp)
	sllw	x
	ldw	(0x1d, sp), x
	ldw	x, (0x1f, sp)
	addw	x, (0x1d, sp)
	ldw	(0x1b, sp), x
	call	_ADC1_GetConversionValue
	ldw	y, (0x1b, sp)
	ldw	(y), x
;	main.c: 52: nAdc_Hold += nAdc_Buffer[nCount];
	addw	x, (0x01, sp)
	ldw	(0x01, sp), x
;	main.c: 50: for ( nCount = 0; nCount< 10; nCount++){
	ldw	x, (0x19, sp)
	incw	x
	ldw	(0x19, sp), x
	ldw	x, (0x19, sp)
	cpw	x, #0x000a
	jrc	00110$
;	main.c: 54: nAdc_Buffer[0] = nAdc_Hold / 10;
	ldw	x, (0x01, sp)
	ldw	y, #0x000a
	divw	x, y
	ldw	y, (0x1f, sp)
	ldw	(y), x
;	main.c: 55: adc_value = nAdc_Buffer[0];
	ldw	(0x17, sp), x
;	main.c: 59: for ( nCount = 0; nCount< 10; nCount++){
	clrw	y
00112$:
;	main.c: 60: nAdc_Buffer[nCount] = 0;
	ldw	x, y
	sllw	x
	addw	x, (0x1f, sp)
	clr	(0x1, x)
	clr	(x)
;	main.c: 59: for ( nCount = 0; nCount< 10; nCount++){
	incw	y
	cpw	y, #0x000a
	jrc	00112$
;	main.c: 62: nAdc_Hold = 0;
	clrw	x
	ldw	(0x01, sp), x
;	main.c: 69: UART2_SendData8((uint8_t)adc_value);
	ld	a, (0x18, sp)
	push	a
	call	_UART2_SendData8
	pop	a
	jra	00116$
	addw	sp, #32
	ret
;	main.c: 75: static void UART_Config(void){
;	-----------------------------------------
;	 function UART_Config
;	-----------------------------------------
_UART_Config:
;	main.c: 77: UART2_DeInit();
	call	_UART2_DeInit
;	main.c: 78: UART2_Init((uint32_t)9600, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO, UART2_SYNCMODE_CLOCK_DISABLE, UART2_MODE_TXRX_ENABLE );
	push	#0x0c
	push	#0x80
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x25
	clrw	x
	pushw	x
	call	_UART2_Init
	addw	sp, #9
	ret
;	main.c: 81: static void ADC_Config( void ){
;	-----------------------------------------
;	 function ADC_Config
;	-----------------------------------------
_ADC_Config:
;	main.c: 82: GPIO_Init(GPIOB, GPIO_PIN_0, GPIO_MODE_IN_FL_NO_IT );
	push	#0x00
	push	#0x01
	push	#0x05
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	main.c: 83: ADC1_DeInit();
	call	_ADC1_DeInit
;	main.c: 84: ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS, ADC1_CHANNEL_0, ADC1_PRESSEL_FCPU_D2, ADC1_EXTTRIG_TIM,DISABLE, ADC1_ALIGN_RIGHT, ADC1_SCHMITTTRIG_CHANNEL0, DISABLE );
	push	#0x00
	push	#0x00
	push	#0x08
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x01
	call	_ADC1_Init
	addw	sp, #8
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

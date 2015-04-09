;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Apr 09 17:30:57 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _AWU_Config
	.globl _CLK_HSIPrescalerConfig
	.globl _GPIO_WriteLow
	.globl _GPIO_WriteHigh
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
;	main.c: 6: int main( void ){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 10: GPIO_DeInit(GPIOD);
	push	#0x0f
	push	#0x50
	call	_GPIO_DeInit
	addw	sp, #2
;	main.c: 16: AWU_Config();
	call	_AWU_Config
;	main.c: 18: GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
	push	#0xe0
	push	#0x01
	push	#0x0f
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	main.c: 20: while( 1 ){
00103$:
;	main.c: 22: GPIO_WriteLow(GPIOD, GPIO_PIN_0);
	push	#0x01
	push	#0x0f
	push	#0x50
	call	_GPIO_WriteLow
	addw	sp, #3
;	main.c: 24: for(i=0;i<10000;i++) // A delay loop
	ldw	x, #0x2710
00107$:
;	main.c: 26: nop();
	nop
	decw	x
;	main.c: 24: for(i=0;i<10000;i++) // A delay loop
	tnzw	x
	jrne	00107$
;	main.c: 28: GPIO_WriteHigh(GPIOD, GPIO_PIN_0);
	push	#0x01
	push	#0x0f
	push	#0x50
	call	_GPIO_WriteHigh
	addw	sp, #3
;	main.c: 30: halt();/* Program halted */
	halt
	jra	00103$
	ret
;	main.c: 35: static void CLK_Config(void){
;	-----------------------------------------
;	 function CLK_Config
;	-----------------------------------------
_CLK_Config:
;	main.c: 37: CLK_HSIPrescalerConfig(CLK_PRESCALER_CPUDIV128);
	push	#0x87
	call	_CLK_HSIPrescalerConfig
	pop	a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

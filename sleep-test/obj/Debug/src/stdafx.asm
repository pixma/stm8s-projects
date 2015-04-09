;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Apr 09 17:30:58 2015
;--------------------------------------------------------
	.module stdafx
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_ClearFlag
	.globl _TIM3_GetCapture1
	.globl _TIM3_Cmd
	.globl _TIM3_ICInit
	.globl _AWU_LSICalibrationConfig
	.globl _AWU_Init
	.globl _CLK_GetClockFreq
	.globl _AWU_Config
	.globl _LSIMeasurment
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
;	src\stdafx.c: 10: void AWU_Config(void){
;	-----------------------------------------
;	 function AWU_Config
;	-----------------------------------------
_AWU_Config:
;	src\stdafx.c: 14: AWU_LSICalibrationConfig(LSIMeasurment());
	call	_LSIMeasurment
	pushw	x
	pushw	y
	call	_AWU_LSICalibrationConfig
	addw	sp, #4
;	src\stdafx.c: 17: AWU_Init(AWU_TIMEBASE_2S);
	push	#0x0e
	call	_AWU_Init
	pop	a
	ret
;	src\stdafx.c: 21: uint32_t LSIMeasurment(void){
;	-----------------------------------------
;	 function LSIMeasurment
;	-----------------------------------------
_LSIMeasurment:
	sub	sp, #24
;	src\stdafx.c: 28: fmaster = CLK_GetClockFreq();
	call	_CLK_GetClockFreq
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	src\stdafx.c: 31: AWU->CSR |= AWU_CSR_MSR;
	ldw	x, #0x50f0
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
;	src\stdafx.c: 35: TIM3_ICInit(TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI, TIM3_ICPSC_DIV8, 0);
	push	#0x00
	push	#0x0c
	push	#0x01
	push	#0x00
	push	#0x00
	call	_TIM3_ICInit
	addw	sp, #5
;	src\stdafx.c: 37: TIM3_Cmd(ENABLE);
	push	#0x01
	call	_TIM3_Cmd
	pop	a
;	src\stdafx.c: 41: while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
00101$:
	ldw	x, #0x5322
	ld	a, (x)
	clr	(0x17, sp)
	and	a, #0x02
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0002
	jrne	00101$
;	src\stdafx.c: 42: ICValue1 = TIM3_GetCapture1();
	call	_TIM3_GetCapture1
	ldw	(0x03, sp), x
;	src\stdafx.c: 43: TIM3_ClearFlag(TIM3_FLAG_CC1);
	push	#0x02
	push	#0x00
	call	_TIM3_ClearFlag
	addw	sp, #2
;	src\stdafx.c: 46: while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
00104$:
	ldw	x, #0x5322
	ld	a, (x)
	clr	(0x15, sp)
	and	a, #0x02
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0002
	jrne	00104$
;	src\stdafx.c: 48: ICValue2 = TIM3_GetCapture1();
	call	_TIM3_GetCapture1
	ldw	(0x01, sp), x
;	src\stdafx.c: 49: TIM3_ClearFlag(TIM3_FLAG_CC1);
	push	#0x02
	push	#0x00
	call	_TIM3_ClearFlag
	addw	sp, #2
;	src\stdafx.c: 53: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xfe
	ld	(x), a
;	src\stdafx.c: 55: TIM3_Cmd(DISABLE);
	push	#0x00
	call	_TIM3_Cmd
	pop	a
;	src\stdafx.c: 58: lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
	ldw	y, (0x07, sp)
	ldw	(0x13, sp), y
	ldw	y, (0x05, sp)
	ld	a, #0x03
	tnz	a
	jreq	00132$
00131$:
	sll	(0x14, sp)
	rlc	(0x13, sp)
	rlcw	y
	dec	a
	jrne	00131$
00132$:
	ldw	x, (0x01, sp)
	subw	x, (0x03, sp)
	clr	(0x0e, sp)
	clr	(0x0d, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x17, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x0b, sp), x
;	src\stdafx.c: 61: AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
	bres	0x50f0, #0
;	src\stdafx.c: 62: return (lsi_freq_hz);
	ldw	x, (0x0b, sp)
	addw	sp, #24
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

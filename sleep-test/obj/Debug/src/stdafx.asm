;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Apr 09 14:44:44 2015
;--------------------------------------------------------
	.module stdafx
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
;	src\stdafx.c: 13: AWU_LSICalibrationConfig(LSIMeasurment());
	call	_LSIMeasurment
	pushw	x
	pushw	y
	call	_AWU_LSICalibrationConfig
	addw	sp, #4
;	src\stdafx.c: 16: AWU_Init(AWU_TIMEBASE_30S);
	push	#0x10
	call	_AWU_Init
	pop	a
	ret
;	src\stdafx.c: 20: uint32_t LSIMeasurment(void){
;	-----------------------------------------
;	 function LSIMeasurment
;	-----------------------------------------
_LSIMeasurment:
	sub	sp, #8
;	src\stdafx.c: 27: fmaster = CLK_GetClockFreq();
	call	_CLK_GetClockFreq
	ldw	(0x03, sp), x
;	src\stdafx.c: 30: AWU->CSR |= AWU_CSR_MSR;
	bset	0x50f0, #0
;	src\stdafx.c: 32: lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
	ldw	x, (0x03, sp)
	ld	a, #0x03
	tnz	a
	jreq	00104$
00103$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00103$
00104$:
	push	#0x00
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x07, sp), x
;	src\stdafx.c: 35: AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
	bres	0x50f0, #0
;	src\stdafx.c: 36: return (lsi_freq_hz);
	ldw	x, (0x07, sp)
	addw	sp, #8
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

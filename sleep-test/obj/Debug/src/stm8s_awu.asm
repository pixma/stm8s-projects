;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Apr 09 13:21:39 2015
;--------------------------------------------------------
	.module stm8s_awu
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TBR_Array
	.globl _APR_Array
	.globl _AWU_DeInit
	.globl _AWU_Init
	.globl _AWU_Cmd
	.globl _AWU_LSICalibrationConfig
	.globl _AWU_IdleModeEnable
	.globl _AWU_GetFlagStatus
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
;	src\stm8s_awu.c: 73: void AWU_DeInit(void)
;	-----------------------------------------
;	 function AWU_DeInit
;	-----------------------------------------
_AWU_DeInit:
;	src\stm8s_awu.c: 75: AWU->CSR = AWU_CSR_RESET_VALUE;
	ldw	x, #0x50f0
	clr	(x)
;	src\stm8s_awu.c: 76: AWU->APR = AWU_APR_RESET_VALUE;
	ldw	x, #0x50f1
	ld	a, #0x3f
	ld	(x), a
;	src\stm8s_awu.c: 77: AWU->TBR = AWU_TBR_RESET_VALUE;
	ldw	x, #0x50f2
	clr	(x)
	ret
;	src\stm8s_awu.c: 88: void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
;	-----------------------------------------
;	 function AWU_Init
;	-----------------------------------------
_AWU_Init:
	sub	sp, #2
;	src\stm8s_awu.c: 94: AWU->CSR |= AWU_CSR_AWUEN;
	ldw	x, #0x50f0
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
;	src\stm8s_awu.c: 97: AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
	ldw	x, #0x50f2
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	src\stm8s_awu.c: 98: AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
	ldw	x, #0x50f2
	ld	a, (x)
	ld	(0x02, sp), a
	ldw	x, #_TBR_Array+0
	ld	a, xl
	add	a, (0x05, sp)
	ld	xl, a
	ld	a, xh
	adc	a, #0x00
	ld	xh, a
	ld	a, (x)
	or	a, (0x02, sp)
	ldw	x, #0x50f2
	ld	(x), a
;	src\stm8s_awu.c: 101: AWU->APR &= (uint8_t)(~AWU_APR_APR);
	ldw	x, #0x50f1
	ld	a, (x)
	and	a, #0xc0
	ld	(x), a
;	src\stm8s_awu.c: 102: AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
	ldw	x, #0x50f1
	ld	a, (x)
	ld	(0x01, sp), a
	ldw	x, #_APR_Array+0
	ld	a, xl
	add	a, (0x05, sp)
	ld	xl, a
	ld	a, xh
	adc	a, #0x00
	ld	xh, a
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x50f1
	ld	(x), a
	addw	sp, #2
	ret
;	src\stm8s_awu.c: 112: void AWU_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function AWU_Cmd
;	-----------------------------------------
_AWU_Cmd:
;	src\stm8s_awu.c: 114: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_awu.c: 117: AWU->CSR |= AWU_CSR_AWUEN;
	ldw	x, #0x50f0
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_awu.c: 122: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
	ldw	x, #0x50f0
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00104$:
	ret
;	src\stm8s_awu.c: 139: void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
;	-----------------------------------------
;	 function AWU_LSICalibrationConfig
;	-----------------------------------------
_AWU_LSICalibrationConfig:
	sub	sp, #6
;	src\stm8s_awu.c: 147: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
	push	#0xe8
	push	#0x03
	clrw	x
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	exgw	x, y
;	src\stm8s_awu.c: 151: A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
	ldw	x, y
	srlw	x
	srlw	x
	ldw	(0x01, sp), x
;	src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
	ldw	x, (0x01, sp)
	sllw	x
	sllw	x
	ldw	(0x05, sp), x
	subw	y, (0x05, sp)
	ldw	x, (0x01, sp)
	sllw	x
	incw	x
	pushw	x
	pushw	y
;	src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
	call	__mulint
	addw	sp, #4
	ldw	(0x03, sp), x
	ld	a, (0x02, sp)
;	src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
	ldw	x, (0x05, sp)
	cpw	x, (0x03, sp)
	jrc	00102$
;	src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
	sub	a, #0x02
	ldw	x, #0x50f1
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_awu.c: 159: AWU->APR = (uint8_t)(A - 1U);
	dec	a
	ldw	x, #0x50f1
	ld	(x), a
00104$:
	addw	sp, #6
	ret
;	src\stm8s_awu.c: 168: void AWU_IdleModeEnable(void)
;	-----------------------------------------
;	 function AWU_IdleModeEnable
;	-----------------------------------------
_AWU_IdleModeEnable:
;	src\stm8s_awu.c: 171: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
	ldw	x, #0x50f0
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	src\stm8s_awu.c: 174: AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
	ldw	x, #0x50f2
	ld	a, #0xf0
	ld	(x), a
	ret
;	src\stm8s_awu.c: 183: FlagStatus AWU_GetFlagStatus(void)
;	-----------------------------------------
;	 function AWU_GetFlagStatus
;	-----------------------------------------
_AWU_GetFlagStatus:
;	src\stm8s_awu.c: 185: return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
	ldw	x, #0x50f0
	ld	a, (x)
	and	a, #0x20
	sub	a, #0x01
	clr	a
	rlc	a
	tnz	a
	jreq	00103$
	clr	a
	jra	00104$
00103$:
	ld	a, #0x01
00104$:
	ret
	.area CODE
_APR_Array:
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x3D	; 61
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x3E	; 62
_TBR_Array:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0E	; 14
	.db #0x0F	; 15
	.db #0x0F	; 15
	.area INITIALIZER
	.area CABS (ABS)

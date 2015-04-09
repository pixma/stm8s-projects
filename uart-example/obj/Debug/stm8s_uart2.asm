;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Fri Apr 03 17:16:17 2015
;--------------------------------------------------------
	.module stm8s_uart2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _UART2_DeInit
	.globl _UART2_Init
	.globl _UART2_Cmd
	.globl _UART2_ITConfig
	.globl _UART2_IrDAConfig
	.globl _UART2_IrDACmd
	.globl _UART2_LINBreakDetectionConfig
	.globl _UART2_LINConfig
	.globl _UART2_LINCmd
	.globl _UART2_SmartCardCmd
	.globl _UART2_SmartCardNACKCmd
	.globl _UART2_WakeUpConfig
	.globl _UART2_ReceiverWakeUpCmd
	.globl _UART2_ReceiveData8
	.globl _UART2_ReceiveData9
	.globl _UART2_SendData8
	.globl _UART2_SendData9
	.globl _UART2_SendBreak
	.globl _UART2_SetAddress
	.globl _UART2_SetGuardTime
	.globl _UART2_SetPrescaler
	.globl _UART2_GetFlagStatus
	.globl _UART2_ClearFlag
	.globl _UART2_GetITStatus
	.globl _UART2_ClearITPendingBit
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
;	stm8s_uart2.c: 53: void UART2_DeInit(void)
;	-----------------------------------------
;	 function UART2_DeInit
;	-----------------------------------------
_UART2_DeInit:
;	stm8s_uart2.c: 57: (void) UART2->SR;
	ldw	x, #0x5240
	ld	a, (x)
;	stm8s_uart2.c: 58: (void)UART2->DR;
	ldw	x, #0x5241
	ld	a, (x)
;	stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
	ldw	x, #0x5243
	clr	(x)
;	stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
	ldw	x, #0x5242
	clr	(x)
;	stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
	ldw	x, #0x5244
	clr	(x)
;	stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
	ldw	x, #0x5245
	clr	(x)
;	stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
	ldw	x, #0x5246
	clr	(x)
;	stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
	ldw	x, #0x5247
	clr	(x)
;	stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
	ldw	x, #0x5248
	clr	(x)
;	stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
	ldw	x, #0x5249
	clr	(x)
	ret
;	stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
;	-----------------------------------------
;	 function UART2_Init
;	-----------------------------------------
_UART2_Init:
	sub	sp, #35
;	stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
	ldw	x, #0x5244
	ld	a, (x)
	or	a, (0x2a, sp)
	ldw	x, #0x5244
	ld	(x), a
;	stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
	ldw	x, #0x5246
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
	ldw	x, #0x5246
	ld	a, (x)
	or	a, (0x2b, sp)
	ldw	x, #0x5246
	ld	(x), a
;	stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xf9
	ld	(x), a
;	stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
	ldw	x, #0x5244
	ld	a, (x)
	or	a, (0x2c, sp)
	ldw	x, #0x5244
	ld	(x), a
;	stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
	ldw	x, #0x5242
	ld	a, (x)
	ldw	x, #0x5242
	clr	(x)
;	stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
	ldw	x, #0x5243
	ld	a, (x)
	and	a, #0x0f
	ld	(x), a
;	stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
	ldw	x, #0x5243
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x22, sp), x
	ldw	x, (0x28, sp)
	ldw	(0x1e, sp), x
	ldw	x, (0x26, sp)
	ldw	(0x1c, sp), x
	ld	a, #0x04
	tnz	a
	jreq	00125$
00124$:
	sll	(0x1f, sp)
	rlc	(0x1e, sp)
	rlc	(0x1d, sp)
	rlc	(0x1c, sp)
	dec	a
	jrne	00124$
00125$:
	ldw	x, (0x1e, sp)
	pushw	x
	ldw	x, (0x1e, sp)
	pushw	x
	ldw	x, (0x26, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ld	a, xl
	push	a
	ld	a, xh
	push	a
	pushw	y
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x1a, sp), x
	ldw	x, (0x1e, sp)
	pushw	x
	ldw	x, (0x1e, sp)
	pushw	x
	ldw	x, (0x1e, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x16, sp), x
	ldw	(0x14, sp), y
	ldw	x, (0x03, sp)
	subw	x, (0x16, sp)
	ldw	(0x12, sp), x
	ld	a, (0x02, sp)
	sbc	a, (0x15, sp)
	ld	(0x11, sp), a
	ld	a, (0x01, sp)
	sbc	a, (0x14, sp)
	ld	(0x10, sp), a
	ldw	y, (0x12, sp)
	ldw	x, (0x10, sp)
	ld	a, #0x04
	tnz	a
	jreq	00127$
00126$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00126$
00127$:
	push	#0x64
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	y
	pushw	x
	call	__divulong
	addw	sp, #8
	ld	a, xl
	and	a, #0x0f
	ld	(0x09, sp), a
;	stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
	ldw	x, (0x07, sp)
	ldw	y, (0x05, sp)
	ld	a, #0x04
	tnz	a
	jreq	00129$
00128$:
	srlw	y
	rrcw	x
	dec	a
	jrne	00128$
00129$:
	ld	a, xl
	and	a, #0xf0
	ld	xl, a
	clr	(0x0e, sp)
	clr	(0x0d, sp)
	clr	a
	ld	a, xl
;	stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
	or	a, (0x09, sp)
	ldw	x, #0x5243
	ld	(x), a
;	stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
	ld	a, (0x08, sp)
	ldw	x, #0x5242
	ld	(x), a
;	stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
;	stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
	ldw	x, #0x5246
	ld	a, (x)
	and	a, #0xf8
	ld	(x), a
;	stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
	ldw	x, #0x5246
	ld	a, (x)
	ld	(0x0b, sp), a
	ld	a, (0x2d, sp)
	and	a, #0x07
	or	a, (0x0b, sp)
	ldw	x, #0x5246
	ld	(x), a
;	stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
	ld	a, (0x2e, sp)
	bcp	a, #0x04
	jreq	00102$
;	stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
	ldw	x, #0x5245
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00103$
00102$:
;	stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00103$:
;	stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
	ld	a, (0x2e, sp)
	bcp	a, #0x08
	jreq	00105$
;	stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
	ldw	x, #0x5245
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00106$
00105$:
;	stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00106$:
;	stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
	ld	a, (0x2d, sp)
	sll	a
	jrnc	00108$
;	stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
	ldw	x, #0x5246
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	jra	00110$
00108$:
;	stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
	ldw	x, #0x5246
	ld	a, (x)
	ld	(0x0a, sp), a
	ld	a, (0x2d, sp)
	and	a, #0x08
	or	a, (0x0a, sp)
	ldw	x, #0x5246
	ld	(x), a
00110$:
	addw	sp, #35
	ret
;	stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_Cmd
;	-----------------------------------------
_UART2_Cmd:
;	stm8s_uart2.c: 183: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
	ldw	x, #0x5244
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
00104$:
	ret
;	stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_ITConfig
;	-----------------------------------------
_UART2_ITConfig:
	sub	sp, #6
;	stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
	ld	a, (0x09, sp)
	clr	(0x05, sp)
	ld	xh, a
;	stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
	ld	a, (0x0a, sp)
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x01
	ld	(0x01, sp), a
	ld	a, xl
	tnz	a
	jreq	00153$
00152$:
	sll	(0x01, sp)
	dec	a
	jrne	00152$
00153$:
;	stm8s_uart2.c: 227: if (uartreg == 0x01)
	ld	a, xh
	cp	a, #0x01
	jrne	00155$
	ld	a, #0x01
	ld	(0x04, sp), a
	jra	00156$
00155$:
	clr	(0x04, sp)
00156$:
;	stm8s_uart2.c: 231: else if (uartreg == 0x02)
	ld	a, xh
	cp	a, #0x02
	jrne	00158$
	ld	a, #0x01
	ld	(0x03, sp), a
	jra	00159$
00158$:
	clr	(0x03, sp)
00159$:
;	stm8s_uart2.c: 235: else if (uartreg == 0x03)
	ld	a, xh
	cp	a, #0x03
	jrne	00161$
	ld	a, #0x01
	jra	00162$
00161$:
	clr	a
00162$:
;	stm8s_uart2.c: 224: if (NewState != DISABLE)
	tnz	(0x0b, sp)
	jreq	00120$
;	stm8s_uart2.c: 227: if (uartreg == 0x01)
	tnz	(0x04, sp)
	jreq	00108$
;	stm8s_uart2.c: 229: UART2->CR1 |= itpos;
	ldw	x, #0x5244
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5244
	ld	(x), a
	jp	00122$
00108$:
;	stm8s_uart2.c: 231: else if (uartreg == 0x02)
	tnz	(0x03, sp)
	jreq	00105$
;	stm8s_uart2.c: 233: UART2->CR2 |= itpos;
	ldw	x, #0x5245
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5245
	ld	(x), a
	jra	00122$
00105$:
;	stm8s_uart2.c: 235: else if (uartreg == 0x03)
	tnz	a
	jreq	00102$
;	stm8s_uart2.c: 237: UART2->CR4 |= itpos;
	ldw	x, #0x5247
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5247
	ld	(x), a
	jra	00122$
00102$:
;	stm8s_uart2.c: 241: UART2->CR6 |= itpos;
	ldw	x, #0x5249
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5249
	ld	(x), a
	jra	00122$
00120$:
;	stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
	push	a
	ld	a, (0x02, sp)
	cpl	a
	ld	(0x03, sp), a
	pop	a
;	stm8s_uart2.c: 247: if (uartreg == 0x01)
	tnz	(0x04, sp)
	jreq	00117$
;	stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x5244
	ld	(x), a
	jra	00122$
00117$:
;	stm8s_uart2.c: 251: else if (uartreg == 0x02)
	tnz	(0x03, sp)
	jreq	00114$
;	stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x5245
	ld	(x), a
	jra	00122$
00114$:
;	stm8s_uart2.c: 255: else if (uartreg == 0x03)
	tnz	a
	jreq	00111$
;	stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x5247
	ld	(x), a
	jra	00122$
00111$:
;	stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x5249
	ld	(x), a
00122$:
	addw	sp, #6
	ret
;	stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
;	-----------------------------------------
;	 function UART2_IrDAConfig
;	-----------------------------------------
_UART2_IrDAConfig:
;	stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
	ldw	x, #0x5248
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
	ldw	x, #0x5248
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	ret
;	stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_IrDACmd
;	-----------------------------------------
_UART2_IrDACmd:
;	stm8s_uart2.c: 297: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
	ldw	x, #0x5248
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
	ldw	x, #0x5248
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
;	stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
;	-----------------------------------------
;	 function UART2_LINBreakDetectionConfig
;	-----------------------------------------
_UART2_LINBreakDetectionConfig:
;	stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
	ldw	x, #0x5247
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	ret
;	stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
;	-----------------------------------------
;	 function UART2_LINConfig
;	-----------------------------------------
_UART2_LINConfig:
;	stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
	ldw	x, #0x5249
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00103$
00102$:
;	stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00103$:
;	stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
;	stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
	ldw	x, #0x5249
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00106$
00105$:
;	stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
	ldw	x, #0x5249
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00106$:
;	stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
	tnz	(0x05, sp)
	jreq	00108$
;	stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
	ldw	x, #0x5249
	ld	a, (x)
	or	a, #0x80
	ld	(x), a
	jra	00110$
00108$:
;	stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
	bres	0x5249, #7
00110$:
	ret
;	stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_LINCmd
;	-----------------------------------------
_UART2_LINCmd:
;	stm8s_uart2.c: 388: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
	ldw	x, #0x5246
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
	ldw	x, #0x5246
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	ret
;	stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_SmartCardCmd
;	-----------------------------------------
_UART2_SmartCardCmd:
;	stm8s_uart2.c: 411: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
	ldw	x, #0x5248
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
	ldw	x, #0x5248
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	ret
;	stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_SmartCardNACKCmd
;	-----------------------------------------
_UART2_SmartCardNACKCmd:
;	stm8s_uart2.c: 434: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
	ldw	x, #0x5248
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
	ldw	x, #0x5248
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00104$:
	ret
;	stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
;	-----------------------------------------
;	 function UART2_WakeUpConfig
;	-----------------------------------------
_UART2_WakeUpConfig:
;	stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
;	stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
	ldw	x, #0x5244
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5244
	ld	(x), a
	ret
;	stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function UART2_ReceiverWakeUpCmd
;	-----------------------------------------
_UART2_ReceiverWakeUpCmd:
;	stm8s_uart2.c: 470: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
	ldw	x, #0x5245
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
;	stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
;	-----------------------------------------
;	 function UART2_ReceiveData8
;	-----------------------------------------
_UART2_ReceiveData8:
;	stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
	ldw	x, #0x5241
	ld	a, (x)
	ret
;	stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
;	-----------------------------------------
;	 function UART2_ReceiveData9
;	-----------------------------------------
_UART2_ReceiveData9:
	sub	sp, #4
;	stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
	ldw	x, #0x5244
	ld	a, (x)
	clr	(0x03, sp)
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
	sllw	x
	ldw	(0x01, sp), x
;	stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
	ldw	x, #0x5241
	ld	a, (x)
	clrw	x
	ld	xl, a
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x01, sp)
	and	a, #0x01
	ld	xh, a
	addw	sp, #4
	ret
;	stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
;	-----------------------------------------
;	 function UART2_SendData8
;	-----------------------------------------
_UART2_SendData8:
;	stm8s_uart2.c: 514: UART2->DR = Data;
	ldw	x, #0x5241
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
;	-----------------------------------------
;	 function UART2_SendData9
;	-----------------------------------------
_UART2_SendData9:
	push	a
;	stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
	ldw	x, #0x5244
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
;	stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
	ldw	x, #0x5244
	ld	a, (x)
	ld	(0x01, sp), a
	ldw	x, (0x04, sp)
	srlw	x
	srlw	x
	ld	a, xl
	and	a, #0x40
	or	a, (0x01, sp)
	ldw	x, #0x5244
	ld	(x), a
;	stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
	ld	a, (0x05, sp)
	ldw	x, #0x5241
	ld	(x), a
	pop	a
	ret
;	stm8s_uart2.c: 539: void UART2_SendBreak(void)
;	-----------------------------------------
;	 function UART2_SendBreak
;	-----------------------------------------
_UART2_SendBreak:
;	stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
	bset	0x5245, #0
	ret
;	stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
;	-----------------------------------------
;	 function UART2_SetAddress
;	-----------------------------------------
_UART2_SetAddress:
;	stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
	ldw	x, #0x5247
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5247
	ld	(x), a
	ret
;	stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
;	-----------------------------------------
;	 function UART2_SetGuardTime
;	-----------------------------------------
_UART2_SetGuardTime:
;	stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
	ldw	x, #0x524a
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
;	-----------------------------------------
;	 function UART2_SetPrescaler
;	-----------------------------------------
_UART2_SetPrescaler:
;	stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
	ldw	x, #0x524b
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
;	-----------------------------------------
;	 function UART2_GetFlagStatus
;	-----------------------------------------
_UART2_GetFlagStatus:
	push	a
;	stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ld	a, (0x05, sp)
	ld	(0x01, sp), a
;	stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
	ldw	x, (0x04, sp)
	cpw	x, #0x0210
	jrne	00121$
;	stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5247
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00102$
;	stm8s_uart2.c: 619: status = SET;
	ld	a, #0x01
	jra	00122$
00102$:
;	stm8s_uart2.c: 624: status = RESET;
	clr	a
	jra	00122$
00121$:
;	stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
	ldw	x, (0x04, sp)
	cpw	x, #0x0101
	jrne	00118$
;	stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5245
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00105$
;	stm8s_uart2.c: 632: status = SET;
	ld	a, #0x01
	jra	00122$
00105$:
;	stm8s_uart2.c: 637: status = RESET;
	clr	a
	jra	00122$
00118$:
;	stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
	ldw	x, (0x04, sp)
	cpw	x, #0x0302
	jreq	00113$
	ldw	x, (0x04, sp)
	cpw	x, #0x0301
	jrne	00114$
00113$:
;	stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5249
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00108$
;	stm8s_uart2.c: 645: status = SET;
	ld	a, #0x01
	jra	00122$
00108$:
;	stm8s_uart2.c: 650: status = RESET;
	clr	a
	jra	00122$
00114$:
;	stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5240
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00111$
;	stm8s_uart2.c: 658: status = SET;
	ld	a, #0x01
	jra	00122$
00111$:
;	stm8s_uart2.c: 663: status = RESET;
	clr	a
00122$:
;	stm8s_uart2.c: 668: return  status;
	addw	sp, #1
	ret
;	stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
;	-----------------------------------------
;	 function UART2_ClearFlag
;	-----------------------------------------
_UART2_ClearFlag:
;	stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
	ldw	x, (0x03, sp)
	cpw	x, #0x0020
	jrne	00108$
;	stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
	ldw	x, #0x5240
	ld	a, #0xdf
	ld	(x), a
	jra	00110$
00108$:
;	stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
	ldw	x, (0x03, sp)
	cpw	x, #0x0210
	jrne	00105$
;	stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	jra	00110$
00105$:
;	stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
	ldw	x, (0x03, sp)
	cpw	x, #0x0302
	jrne	00102$
;	stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
	jra	00110$
00102$:
;	stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
	bres	0x5249, #0
00110$:
	ret
;	stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
;	-----------------------------------------
;	 function UART2_GetITStatus
;	-----------------------------------------
_UART2_GetITStatus:
	sub	sp, #6
;	stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
	ld	a, (0x0a, sp)
	ld	xh, a
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, xl
	tnz	a
	jreq	00173$
00172$:
	sll	(0x03, sp)
	dec	a
	jrne	00172$
00173$:
;	stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
	rlwa	x
	swap	a
	and	a, #0x0f
	rrwa	x
;	stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	tnz	a
	jreq	00175$
00174$:
	sll	(0x02, sp)
	dec	a
	jrne	00174$
00175$:
;	stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
	ldw	x, (0x09, sp)
	cpw	x, #0x0100
	jrne	00124$
;	stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
	ldw	x, #0x5244
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x06, sp), a
;	stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5240
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
	tnz	(0x06, sp)
	jreq	00102$
;	stm8s_uart2.c: 766: pendingbitstatus = SET;
	ld	a, #0x01
	jp	00125$
00102$:
;	stm8s_uart2.c: 771: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00124$:
;	stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
	ldw	x, (0x09, sp)
	cpw	x, #0x0346
	jrne	00121$
;	stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x05, sp), a
;	stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5247
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00106$
	tnz	(0x05, sp)
	jreq	00106$
;	stm8s_uart2.c: 782: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00106$:
;	stm8s_uart2.c: 787: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00121$:
;	stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
	ldw	x, (0x09, sp)
	cpw	x, #0x0412
	jrne	00118$
;	stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5249
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00110$
	tnz	(0x01, sp)
	jreq	00110$
;	stm8s_uart2.c: 798: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00110$:
;	stm8s_uart2.c: 803: pendingbitstatus = RESET;
	clr	a
	jra	00125$
00118$:
;	stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
	ldw	x, #0x5245
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x04, sp), a
;	stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5240
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00114$
	tnz	(0x04, sp)
	jreq	00114$
;	stm8s_uart2.c: 814: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00125$
00114$:
;	stm8s_uart2.c: 819: pendingbitstatus = RESET;
	clr	a
00125$:
;	stm8s_uart2.c: 823: return  pendingbitstatus;
	addw	sp, #6
	ret
;	stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
;	-----------------------------------------
;	 function UART2_ClearITPendingBit
;	-----------------------------------------
_UART2_ClearITPendingBit:
;	stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
	ldw	x, (0x03, sp)
	cpw	x, #0x0255
	jrne	00105$
;	stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
	ldw	x, #0x5240
	ld	a, #0xdf
	ld	(x), a
	jra	00107$
00105$:
;	stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
	ldw	x, (0x03, sp)
	cpw	x, #0x0346
	jrne	00102$
;	stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
	ldw	x, #0x5247
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	jra	00107$
00102$:
;	stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
	ldw	x, #0x5249
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00107$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

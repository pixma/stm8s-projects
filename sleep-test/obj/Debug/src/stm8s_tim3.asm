;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Apr 09 15:59:14 2015
;--------------------------------------------------------
	.module stm8s_tim3
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_DeInit
	.globl _TIM3_TimeBaseInit
	.globl _TIM3_OC1Init
	.globl _TIM3_OC2Init
	.globl _TIM3_ICInit
	.globl _TIM3_PWMIConfig
	.globl _TIM3_Cmd
	.globl _TIM3_ITConfig
	.globl _TIM3_UpdateDisableConfig
	.globl _TIM3_UpdateRequestConfig
	.globl _TIM3_SelectOnePulseMode
	.globl _TIM3_PrescalerConfig
	.globl _TIM3_ForcedOC1Config
	.globl _TIM3_ForcedOC2Config
	.globl _TIM3_ARRPreloadConfig
	.globl _TIM3_OC1PreloadConfig
	.globl _TIM3_OC2PreloadConfig
	.globl _TIM3_GenerateEvent
	.globl _TIM3_OC1PolarityConfig
	.globl _TIM3_OC2PolarityConfig
	.globl _TIM3_CCxCmd
	.globl _TIM3_SelectOCxM
	.globl _TIM3_SetCounter
	.globl _TIM3_SetAutoreload
	.globl _TIM3_SetCompare1
	.globl _TIM3_SetCompare2
	.globl _TIM3_SetIC1Prescaler
	.globl _TIM3_SetIC2Prescaler
	.globl _TIM3_GetCapture1
	.globl _TIM3_GetCapture2
	.globl _TIM3_GetCounter
	.globl _TIM3_GetPrescaler
	.globl _TIM3_GetFlagStatus
	.globl _TIM3_ClearFlag
	.globl _TIM3_GetITStatus
	.globl _TIM3_ClearITPendingBit
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
;	src\stm8s_tim3.c: 51: void TIM3_DeInit(void)
;	-----------------------------------------
;	 function TIM3_DeInit
;	-----------------------------------------
_TIM3_DeInit:
;	src\stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
	ldw	x, #0x5320
	clr	(x)
;	src\stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
	ldw	x, #0x5321
	clr	(x)
;	src\stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
	ldw	x, #0x5323
	clr	(x)
;	src\stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
	ldw	x, #0x5327
	clr	(x)
;	src\stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
	ldw	x, #0x5327
	clr	(x)
;	src\stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
	ldw	x, #0x5325
	clr	(x)
;	src\stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
	ldw	x, #0x5326
	clr	(x)
;	src\stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
	ldw	x, #0x5328
	clr	(x)
;	src\stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
	ldw	x, #0x5329
	clr	(x)
;	src\stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
	ldw	x, #0x532a
	clr	(x)
;	src\stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
	ldw	x, #0x532b
	ld	a, #0xff
	ld	(x), a
;	src\stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
	ldw	x, #0x532c
	ld	a, #0xff
	ld	(x), a
;	src\stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
	ldw	x, #0x532d
	clr	(x)
;	src\stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
	ldw	x, #0x532e
	clr	(x)
;	src\stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
	ldw	x, #0x532f
	clr	(x)
;	src\stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
	ldw	x, #0x5330
	clr	(x)
;	src\stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
	ldw	x, #0x5322
	clr	(x)
	ret
;	src\stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
;	-----------------------------------------
;	 function TIM3_TimeBaseInit
;	-----------------------------------------
_TIM3_TimeBaseInit:
	sub	sp, #2
;	src\stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
	ldw	x, #0x532a
	ld	a, (0x05, sp)
	ld	(x), a
;	src\stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
	ld	a, (0x06, sp)
	clr	(0x01, sp)
	ldw	x, #0x532b
	ld	(x), a
;	src\stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
	ld	a, (0x07, sp)
	ldw	x, #0x532c
	ld	(x), a
	addw	sp, #2
	ret
;	src\stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
;	-----------------------------------------
;	 function TIM3_OC1Init
;	-----------------------------------------
_TIM3_OC1Init:
	sub	sp, #4
;	src\stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
;	src\stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
	ldw	x, #0x5327
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x08, sp)
	and	a, #0x01
	ld	(0x03, sp), a
	ld	a, (0x0b, sp)
	and	a, #0x02
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	ldw	x, #0x5327
	ld	(x), a
;	src\stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ldw	x, #0x5325
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x07, sp)
	ldw	x, #0x5325
	ld	(x), a
;	src\stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
	ld	a, (0x09, sp)
	clr	(0x01, sp)
	ldw	x, #0x532d
	ld	(x), a
;	src\stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
	ld	a, (0x0a, sp)
	ldw	x, #0x532e
	ld	(x), a
	addw	sp, #4
	ret
;	src\stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
;	-----------------------------------------
;	 function TIM3_OC2Init
;	-----------------------------------------
_TIM3_OC2Init:
	sub	sp, #4
;	src\stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	src\stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
	ldw	x, #0x5327
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x08, sp)
	and	a, #0x10
	ld	(0x03, sp), a
	ld	a, (0x0b, sp)
	and	a, #0x20
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	ldw	x, #0x5327
	ld	(x), a
;	src\stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ldw	x, #0x5326
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x07, sp)
	ldw	x, #0x5326
	ld	(x), a
;	src\stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
	ld	a, (0x09, sp)
	clr	(0x01, sp)
	ldw	x, #0x532f
	ld	(x), a
;	src\stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
	ld	a, (0x0a, sp)
	ldw	x, #0x5330
	ld	(x), a
	addw	sp, #4
	ret
;	src\stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
;	-----------------------------------------
;	 function TIM3_ICInit
;	-----------------------------------------
_TIM3_ICInit:
;	src\stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00102$
;	src\stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	src\stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	ld	a, (0x06, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	src\stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x06, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
00104$:
	ret
;	src\stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
;	-----------------------------------------
;	 function TIM3_PWMIConfig
;	-----------------------------------------
_TIM3_PWMIConfig:
	sub	sp, #2
;	src\stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
	ld	a, (0x06, sp)
	cp	a, #0x44
	jreq	00102$
;	src\stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
	ld	a, #0x44
	ld	(0x02, sp), a
	jra	00103$
00102$:
;	src\stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
	clr	(0x02, sp)
00103$:
;	src\stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
	ld	a, (0x07, sp)
	cp	a, #0x01
	jrne	00105$
;	src\stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x01, sp), a
	jra	00106$
00105$:
;	src\stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x01, sp), a
00106$:
;	src\stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00108$
;	src\stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	src\stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
;	src\stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	src\stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
;	src\stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	_TI2_Config
	addw	sp, #3
;	src\stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM3_SetIC2Prescaler
	pop	a
;	src\stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	_TI1_Config
	addw	sp, #3
;	src\stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM3_SetIC1Prescaler
	pop	a
00110$:
	addw	sp, #2
	ret
;	src\stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_Cmd
;	-----------------------------------------
_TIM3_Cmd:
;	src\stm8s_tim3.c: 289: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
	ldw	x, #0x5320
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
	bres	0x5320, #0
00104$:
	ret
;	src\stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_ITConfig
;	-----------------------------------------
_TIM3_ITConfig:
	push	a
;	src\stm8s_tim3.c: 317: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
	ldw	x, #0x5321
	ld	a, (x)
	or	a, (0x04, sp)
	ldw	x, #0x5321
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
	ldw	x, #0x5321
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x5321
	ld	(x), a
00104$:
	pop	a
	ret
;	src\stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_UpdateDisableConfig
;	-----------------------------------------
_TIM3_UpdateDisableConfig:
;	src\stm8s_tim3.c: 341: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
	ldw	x, #0x5320
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
	ldw	x, #0x5320
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
;	src\stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
;	-----------------------------------------
;	 function TIM3_UpdateRequestConfig
;	-----------------------------------------
_TIM3_UpdateRequestConfig:
;	src\stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
	ldw	x, #0x5320
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
	ldw	x, #0x5320
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	ret
;	src\stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
;	-----------------------------------------
;	 function TIM3_SelectOnePulseMode
;	-----------------------------------------
_TIM3_SelectOnePulseMode:
;	src\stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
	ldw	x, #0x5320
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
	ldw	x, #0x5320
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	ret
;	src\stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
;	-----------------------------------------
;	 function TIM3_PrescalerConfig
;	-----------------------------------------
_TIM3_PrescalerConfig:
;	src\stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
	ldw	x, #0x532a
	ld	a, (0x03, sp)
	ld	(x), a
;	src\stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
	ldw	x, #0x5324
	ld	a, (0x04, sp)
	ld	(x), a
	ret
;	src\stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
;	-----------------------------------------
;	 function TIM3_ForcedOC1Config
;	-----------------------------------------
_TIM3_ForcedOC1Config:
;	src\stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
	ldw	x, #0x5325
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x03, sp)
	ldw	x, #0x5325
	ld	(x), a
	ret
;	src\stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
;	-----------------------------------------
;	 function TIM3_ForcedOC2Config
;	-----------------------------------------
_TIM3_ForcedOC2Config:
;	src\stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
	ldw	x, #0x5326
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x03, sp)
	ldw	x, #0x5326
	ld	(x), a
	ret
;	src\stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_ARRPreloadConfig
;	-----------------------------------------
_TIM3_ARRPreloadConfig:
;	src\stm8s_tim3.c: 489: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
	ldw	x, #0x5320
	ld	a, (x)
	or	a, #0x80
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
	bres	0x5320, #7
00104$:
	ret
;	src\stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_OC1PreloadConfig
;	-----------------------------------------
_TIM3_OC1PreloadConfig:
;	src\stm8s_tim3.c: 511: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
	ldw	x, #0x5325
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
	ldw	x, #0x5325
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	ret
;	src\stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_OC2PreloadConfig
;	-----------------------------------------
_TIM3_OC2PreloadConfig:
;	src\stm8s_tim3.c: 533: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
	ldw	x, #0x5326
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
	ldw	x, #0x5326
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	ret
;	src\stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
;	-----------------------------------------
;	 function TIM3_GenerateEvent
;	-----------------------------------------
_TIM3_GenerateEvent:
;	src\stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
	ldw	x, #0x5324
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	src\stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
;	-----------------------------------------
;	 function TIM3_OC1PolarityConfig
;	-----------------------------------------
_TIM3_OC1PolarityConfig:
;	src\stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
	ldw	x, #0x5327
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
;	src\stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
;	-----------------------------------------
;	 function TIM3_OC2PolarityConfig
;	-----------------------------------------
_TIM3_OC2PolarityConfig:
;	src\stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
	ldw	x, #0x5327
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	ret
;	src\stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM3_CCxCmd
;	-----------------------------------------
_TIM3_CCxCmd:
;	src\stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00108$
;	src\stm8s_tim3.c: 628: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
	ldw	x, #0x5327
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00110$
00102$:
;	src\stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xfe
	ld	(x), a
	jra	00110$
00108$:
;	src\stm8s_tim3.c: 641: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
;	src\stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
	ldw	x, #0x5327
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00110$
00105$:
;	src\stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00110$:
	ret
;	src\stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
;	-----------------------------------------
;	 function TIM3_SelectOCxM
;	-----------------------------------------
_TIM3_SelectOCxM:
;	src\stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
	tnz	(0x03, sp)
	jrne	00102$
;	src\stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	bres	0x5327, #0
;	src\stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ldw	x, #0x5325
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x04, sp)
	ldw	x, #0x5325
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	src\stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
	ldw	x, #0x5326
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x04, sp)
	ldw	x, #0x5326
	ld	(x), a
00104$:
	ret
;	src\stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
;	-----------------------------------------
;	 function TIM3_SetCounter
;	-----------------------------------------
_TIM3_SetCounter:
	sub	sp, #2
;	src\stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ldw	x, #0x5328
	ld	(x), a
;	src\stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
	ld	a, (0x06, sp)
	ldw	x, #0x5329
	ld	(x), a
	addw	sp, #2
	ret
;	src\stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
;	-----------------------------------------
;	 function TIM3_SetAutoreload
;	-----------------------------------------
_TIM3_SetAutoreload:
	sub	sp, #2
;	src\stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ldw	x, #0x532b
	ld	(x), a
;	src\stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
	ld	a, (0x06, sp)
	ldw	x, #0x532c
	ld	(x), a
	addw	sp, #2
	ret
;	src\stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
;	-----------------------------------------
;	 function TIM3_SetCompare1
;	-----------------------------------------
_TIM3_SetCompare1:
	sub	sp, #2
;	src\stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ldw	x, #0x532d
	ld	(x), a
;	src\stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
	ld	a, (0x06, sp)
	ldw	x, #0x532e
	ld	(x), a
	addw	sp, #2
	ret
;	src\stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
;	-----------------------------------------
;	 function TIM3_SetCompare2
;	-----------------------------------------
_TIM3_SetCompare2:
	sub	sp, #2
;	src\stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ldw	x, #0x532f
	ld	(x), a
;	src\stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
	ld	a, (0x06, sp)
	ldw	x, #0x5330
	ld	(x), a
	addw	sp, #2
	ret
;	src\stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
;	-----------------------------------------
;	 function TIM3_SetIC1Prescaler
;	-----------------------------------------
_TIM3_SetIC1Prescaler:
;	src\stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
	ldw	x, #0x5325
	ld	a, (x)
	and	a, #0xf3
	or	a, (0x03, sp)
	ldw	x, #0x5325
	ld	(x), a
	ret
;	src\stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
;	-----------------------------------------
;	 function TIM3_SetIC2Prescaler
;	-----------------------------------------
_TIM3_SetIC2Prescaler:
;	src\stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
	ldw	x, #0x5326
	ld	a, (x)
	and	a, #0xf3
	or	a, (0x03, sp)
	ldw	x, #0x5326
	ld	(x), a
	ret
;	src\stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
;	-----------------------------------------
;	 function TIM3_GetCapture1
;	-----------------------------------------
_TIM3_GetCapture1:
	sub	sp, #5
;	src\stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
	ldw	x, #0x532d
	ld	a, (x)
;	src\stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
	ldw	x, #0x532e
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x02, sp)
	ld	(0x04, sp), a
	pop	a
	clr	(0x02, sp)
	ldw	y, (0x02, sp)
	ldw	(0x04, sp), y
;	src\stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ld	a, xl
	or	a, (0x05, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x04, sp)
	ld	xh, a
;	src\stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
	addw	sp, #5
	ret
;	src\stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
;	-----------------------------------------
;	 function TIM3_GetCapture2
;	-----------------------------------------
_TIM3_GetCapture2:
	sub	sp, #5
;	src\stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
	ldw	x, #0x532f
	ld	a, (x)
;	src\stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
	ldw	x, #0x5330
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x02, sp)
	ld	(0x04, sp), a
	pop	a
	clr	(0x02, sp)
	ldw	y, (0x02, sp)
	ldw	(0x04, sp), y
;	src\stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ld	a, xl
	or	a, (0x05, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x04, sp)
	ld	xh, a
;	src\stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
	addw	sp, #5
	ret
;	src\stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
;	-----------------------------------------
;	 function TIM3_GetCounter
;	-----------------------------------------
_TIM3_GetCounter:
	sub	sp, #2
;	src\stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
	ldw	x, #0x5328
	ld	a, (x)
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x01, sp), x
;	src\stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
	ldw	x, #0x5329
	ld	a, (x)
	clrw	x
	ld	xl, a
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, xh
	or	a, (0x01, sp)
	ld	xh, a
	addw	sp, #2
	ret
;	src\stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM3_GetPrescaler
;	-----------------------------------------
_TIM3_GetPrescaler:
;	src\stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
	ldw	x, #0x532a
	ld	a, (x)
	ret
;	src\stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
;	-----------------------------------------
;	 function TIM3_GetFlagStatus
;	-----------------------------------------
_TIM3_GetFlagStatus:
	sub	sp, #5
;	src\stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
	ldw	x, #0x5322
	ld	a, (x)
	ld	(0x05, sp), a
	ld	a, (0x09, sp)
	and	a, (0x05, sp)
	ld	(0x02, sp), a
;	src\stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
	ld	a, (0x08, sp)
	ld	(0x04, sp), a
	clr	a
	ld	a, (0x04, sp)
	ld	(0x01, sp), a
;	src\stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
	ldw	x, #0x5323
	ld	a, (x)
	and	a, (0x01, sp)
	or	a, (0x02, sp)
	tnz	a
	jreq	00102$
;	src\stm8s_tim3.c: 874: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
;	src\stm8s_tim3.c: 878: bitstatus = RESET;
	clr	a
00103$:
;	src\stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
	addw	sp, #5
	ret
;	src\stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
;	-----------------------------------------
;	 function TIM3_ClearFlag
;	-----------------------------------------
_TIM3_ClearFlag:
	sub	sp, #2
;	src\stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
	ld	a, (0x06, sp)
	cpl	a
	ldw	x, #0x5322
	ld	(x), a
;	src\stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	cpl	a
	ldw	x, #0x5323
	ld	(x), a
	addw	sp, #2
	ret
;	src\stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
;	-----------------------------------------
;	 function TIM3_GetITStatus
;	-----------------------------------------
_TIM3_GetITStatus:
	push	a
;	src\stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
	ldw	x, #0x5322
	ld	a, (x)
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	src\stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
	ldw	x, #0x5321
	ld	a, (x)
	and	a, (0x04, sp)
;	src\stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
;	src\stm8s_tim3.c: 927: bitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
;	src\stm8s_tim3.c: 931: bitstatus = RESET;
	clr	a
00103$:
;	src\stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
	addw	sp, #1
	ret
;	src\stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
;	-----------------------------------------
;	 function TIM3_ClearITPendingBit
;	-----------------------------------------
_TIM3_ClearITPendingBit:
;	src\stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
	ld	a, (0x03, sp)
	cpl	a
	ldw	x, #0x5322
	ld	(x), a
	ret
;	src\stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
;	-----------------------------------------
;	 function TI1_Config
;	-----------------------------------------
_TI1_Config:
	push	a
;	src\stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
	bres	0x5327, #0
;	src\stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
	ldw	x, #0x5325
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	sll	a
	sll	a
	sll	a
	sll	a
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5325
	ld	(x), a
;	src\stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
	ldw	x, #0x5327
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
;	src\stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
;	src\stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
	ldw	x, #0x5327
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	pop	a
	ret
;	src\stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
;	-----------------------------------------
;	 function TI2_Config
;	-----------------------------------------
_TI2_Config:
	push	a
;	src\stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	src\stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
	ldw	x, #0x5326
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
;	src\stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
	ld	a, (0x06, sp)
	sll	a
	sll	a
	sll	a
	sll	a
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5326
	ld	(x), a
;	src\stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	src\stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
	ldw	x, #0x5327
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00103$
00102$:
;	src\stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
	ldw	x, #0x5327
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00103$:
;	src\stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
	ldw	x, #0x5327
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	pop	a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

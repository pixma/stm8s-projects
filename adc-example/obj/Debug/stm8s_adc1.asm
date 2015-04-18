;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Thu Apr 16 17:18:44 2015
;--------------------------------------------------------
	.module stm8s_adc1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_DeInit
	.globl _ADC1_Init
	.globl _ADC1_Cmd
	.globl _ADC1_ScanModeCmd
	.globl _ADC1_DataBufferCmd
	.globl _ADC1_ITConfig
	.globl _ADC1_PrescalerConfig
	.globl _ADC1_SchmittTriggerConfig
	.globl _ADC1_ConversionConfig
	.globl _ADC1_ExternalTriggerConfig
	.globl _ADC1_StartConversion
	.globl _ADC1_GetConversionValue
	.globl _ADC1_AWDChannelConfig
	.globl _ADC1_SetHighThreshold
	.globl _ADC1_SetLowThreshold
	.globl _ADC1_GetBufferValue
	.globl _ADC1_GetAWDChannelStatus
	.globl _ADC1_GetFlagStatus
	.globl _ADC1_ClearFlag
	.globl _ADC1_GetITStatus
	.globl _ADC1_ClearITPendingBit
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
;	stm8s_adc1.c: 52: void ADC1_DeInit(void)
;	-----------------------------------------
;	 function ADC1_DeInit
;	-----------------------------------------
_ADC1_DeInit:
;	stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
	ldw	x, #0x5400
	clr	(x)
;	stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
	ldw	x, #0x5401
	clr	(x)
;	stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
	ldw	x, #0x5402
	clr	(x)
;	stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
	ldw	x, #0x5403
	clr	(x)
;	stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
	ldw	x, #0x5406
	clr	(x)
;	stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
	ldw	x, #0x5407
	clr	(x)
;	stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
	ldw	x, #0x5408
	ld	a, #0xff
	ld	(x), a
;	stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
	ldw	x, #0x5409
	ld	a, #0x03
	ld	(x), a
;	stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
	ldw	x, #0x540a
	clr	(x)
;	stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
	ldw	x, #0x540b
	clr	(x)
;	stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
	ldw	x, #0x540e
	clr	(x)
;	stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
	ldw	x, #0x540f
	clr	(x)
	ret
;	stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
;	-----------------------------------------
;	 function ADC1_Init
;	-----------------------------------------
_ADC1_Init:
;	stm8s_adc1.c: 103: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	call	_ADC1_ConversionConfig
	addw	sp, #3
;	stm8s_adc1.c: 105: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
	ld	a, (0x05, sp)
	push	a
	call	_ADC1_PrescalerConfig
	pop	a
;	stm8s_adc1.c: 110: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_ADC1_ExternalTriggerConfig
	addw	sp, #2
;	stm8s_adc1.c: 115: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	_ADC1_SchmittTriggerConfig
	addw	sp, #2
;	stm8s_adc1.c: 118: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	0x5401, #0
	ret
;	stm8s_adc1.c: 126: void ADC1_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_Cmd
;	-----------------------------------------
_ADC1_Cmd:
;	stm8s_adc1.c: 131: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
	ldw	x, #0x5401
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_adc1.c: 137: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
	bres	0x5401, #0
00104$:
	ret
;	stm8s_adc1.c: 146: void ADC1_ScanModeCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ScanModeCmd
;	-----------------------------------------
_ADC1_ScanModeCmd:
;	stm8s_adc1.c: 151: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
	ldw	x, #0x5402
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_adc1.c: 157: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
;	stm8s_adc1.c: 166: void ADC1_DataBufferCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_DataBufferCmd
;	-----------------------------------------
_ADC1_DataBufferCmd:
;	stm8s_adc1.c: 171: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
	ldw	x, #0x5403
	ld	a, (x)
	or	a, #0x80
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_adc1.c: 177: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
	bres	0x5403, #7
00104$:
	ret
;	stm8s_adc1.c: 190: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ITConfig
;	-----------------------------------------
_ADC1_ITConfig:
	push	a
;	stm8s_adc1.c: 196: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5400
	ld	(x), a
	jra	00104$
00102$:
;	stm8s_adc1.c: 204: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
	ldw	x, #0x5400
	ld	a, (x)
	ldw	x, (0x04, sp)
	cplw	x
	pushw	x
	and	a, (2, sp)
	popw	x
	ldw	x, #0x5400
	ld	(x), a
00104$:
	pop	a
	ret
;	stm8s_adc1.c: 214: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
;	-----------------------------------------
;	 function ADC1_PrescalerConfig
;	-----------------------------------------
_ADC1_PrescalerConfig:
;	stm8s_adc1.c: 220: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
	ldw	x, #0x5401
	ld	a, (x)
	and	a, #0x8f
	ld	(x), a
;	stm8s_adc1.c: 222: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
	ldw	x, #0x5401
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5401
	ld	(x), a
	ret
;	stm8s_adc1.c: 233: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_SchmittTriggerConfig
;	-----------------------------------------
_ADC1_SchmittTriggerConfig:
	sub	sp, #4
;	stm8s_adc1.c: 239: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
	ld	a, (0x07, sp)
	cp	a, #0xff
	jrne	00114$
;	stm8s_adc1.c: 241: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00102$
;	stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
	ldw	x, #0x5407
	ld	a, (x)
	ldw	x, #0x5407
	clr	(x)
;	stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
	ldw	x, #0x5406
	ld	a, (x)
	ldw	x, #0x5406
	clr	(x)
	jp	00116$
00102$:
;	stm8s_adc1.c: 248: ADC1->TDRL |= (uint8_t)0xFF;
	ldw	x, #0x5407
	ld	a, (x)
	ldw	x, #0x5407
	ld	a, #0xff
	ld	(x), a
;	stm8s_adc1.c: 249: ADC1->TDRH |= (uint8_t)0xFF;
	ldw	x, #0x5406
	ld	a, (x)
	ldw	x, #0x5406
	ld	a, #0xff
	ld	(x), a
	jp	00116$
00114$:
;	stm8s_adc1.c: 252: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
	ld	a, (0x07, sp)
	cp	a, #0x08
	jrnc	00111$
;	stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
	ld	a, #0x01
	ld	(0x04, sp), a
	ld	a, (0x07, sp)
	tnz	a
	jreq	00144$
00143$:
	sll	(0x04, sp)
	dec	a
	jrne	00143$
00144$:
;	stm8s_adc1.c: 254: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00105$
;	stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
	ldw	x, #0x5407
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x03, sp)
	ldw	x, #0x5407
	ld	(x), a
	jra	00116$
00105$:
;	stm8s_adc1.c: 260: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
	ldw	x, #0x5407
	ld	a, (x)
	or	a, (0x04, sp)
	ldw	x, #0x5407
	ld	(x), a
	jra	00116$
00111$:
;	stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
	ld	a, (0x07, sp)
	sub	a, #0x08
	ld	xh, a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	tnz	a
	jreq	00147$
00146$:
	sll	(0x02, sp)
	dec	a
	jrne	00146$
00147$:
;	stm8s_adc1.c: 265: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00108$
;	stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
	ldw	x, #0x5406
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x02, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x5406
	ld	(x), a
	jra	00116$
00108$:
;	stm8s_adc1.c: 271: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
	ldw	x, #0x5406
	ld	a, (x)
	or	a, (0x02, sp)
	ldw	x, #0x5406
	ld	(x), a
00116$:
	addw	sp, #4
	ret
;	stm8s_adc1.c: 286: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
;	-----------------------------------------
;	 function ADC1_ConversionConfig
;	-----------------------------------------
_ADC1_ConversionConfig:
;	stm8s_adc1.c: 294: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
;	stm8s_adc1.c: 296: ADC1->CR2 |= (uint8_t)(ADC1_Align);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x5402
	ld	(x), a
;	stm8s_adc1.c: 298: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
	ld	a, (0x03, sp)
	cp	a, #0x01
	jrne	00102$
;	stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
	ldw	x, #0x5401
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
;	stm8s_adc1.c: 306: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
	ldw	x, #0x5401
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
;	stm8s_adc1.c: 310: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
	ldw	x, #0x5400
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	stm8s_adc1.c: 312: ADC1->CSR |= (uint8_t)(ADC1_Channel);
	ldw	x, #0x5400
	ld	a, (x)
	or	a, (0x04, sp)
	ldw	x, #0x5400
	ld	(x), a
	ret
;	stm8s_adc1.c: 325: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ExternalTriggerConfig
;	-----------------------------------------
_ADC1_ExternalTriggerConfig:
;	stm8s_adc1.c: 332: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	stm8s_adc1.c: 334: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
;	stm8s_adc1.c: 337: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00103$
00102$:
;	stm8s_adc1.c: 342: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00103$:
;	stm8s_adc1.c: 346: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5402
	ld	(x), a
	ret
;	stm8s_adc1.c: 358: void ADC1_StartConversion(void)
;	-----------------------------------------
;	 function ADC1_StartConversion
;	-----------------------------------------
_ADC1_StartConversion:
;	stm8s_adc1.c: 360: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	0x5401, #0
	ret
;	stm8s_adc1.c: 370: uint16_t ADC1_GetConversionValue(void)
;	-----------------------------------------
;	 function ADC1_GetConversionValue
;	-----------------------------------------
_ADC1_GetConversionValue:
	sub	sp, #11
;	stm8s_adc1.c: 375: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ldw	x, #0x5402
	ld	a, (x)
	bcp	a, #0x08
	jreq	00102$
;	stm8s_adc1.c: 378: templ = ADC1->DRL;
	ldw	x, #0x5405
	ld	a, (x)
	ld	(0x0b, sp), a
;	stm8s_adc1.c: 380: temph = ADC1->DRH;
	ldw	x, #0x5404
	ld	a, (x)
	clrw	x
	ld	xl, a
;	stm8s_adc1.c: 382: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ld	a, (0x0b, sp)
	ld	(0x0a, sp), a
	clr	(0x09, sp)
	ld	a, xl
	or	a, (0x0a, sp)
	ld	(0x08, sp), a
	ld	a, xh
	or	a, (0x09, sp)
	push	a
	ld	a, (0x09, sp)
	ld	(0x07, sp), a
	pop	a
	jra	00103$
00102$:
;	stm8s_adc1.c: 387: temph = ADC1->DRH;
	ldw	x, #0x5404
	ld	a, (x)
	clrw	y
	ld	yl, a
;	stm8s_adc1.c: 389: templ = ADC1->DRL;
	ldw	x, #0x5405
	ld	a, (x)
;	stm8s_adc1.c: 391: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x03, sp), x
	ldw	x, y
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ld	a, xl
	or	a, (0x04, sp)
	ld	(0x02, sp), a
	ld	a, xh
	or	a, (0x03, sp)
	push	a
	ld	a, (0x03, sp)
	ld	(0x07, sp), a
	pop	a
00103$:
;	stm8s_adc1.c: 394: return ((uint16_t)temph);
	ld	xh, a
	ld	a, (0x06, sp)
	ld	xl, a
	addw	sp, #11
	ret
;	stm8s_adc1.c: 405: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_AWDChannelConfig
;	-----------------------------------------
_ADC1_AWDChannelConfig:
	sub	sp, #4
;	stm8s_adc1.c: 411: if (Channel < (uint8_t)8)
	ld	a, (0x07, sp)
	cp	a, #0x08
	jrnc	00108$
;	stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
	ld	a, #0x01
	ld	(0x04, sp), a
	ld	a, (0x07, sp)
	tnz	a
	jreq	00126$
00125$:
	sll	(0x04, sp)
	dec	a
	jrne	00125$
00126$:
;	stm8s_adc1.c: 413: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00102$
;	stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
	ldw	x, #0x540f
	ld	a, (x)
	or	a, (0x04, sp)
	ldw	x, #0x540f
	ld	(x), a
	jra	00110$
00102$:
;	stm8s_adc1.c: 419: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
	ldw	x, #0x540f
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x03, sp)
	ldw	x, #0x540f
	ld	(x), a
	jra	00110$
00108$:
;	stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
	ld	a, (0x07, sp)
	sub	a, #0x08
	ld	xh, a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	tnz	a
	jreq	00129$
00128$:
	sll	(0x02, sp)
	dec	a
	jrne	00128$
00129$:
;	stm8s_adc1.c: 424: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00105$
;	stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
	ldw	x, #0x540e
	ld	a, (x)
	or	a, (0x02, sp)
	ldw	x, #0x540e
	ld	(x), a
	jra	00110$
00105$:
;	stm8s_adc1.c: 430: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
	ldw	x, #0x540e
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x02, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x540e
	ld	(x), a
00110$:
	addw	sp, #4
	ret
;	stm8s_adc1.c: 441: void ADC1_SetHighThreshold(uint16_t Threshold)
;	-----------------------------------------
;	 function ADC1_SetHighThreshold
;	-----------------------------------------
_ADC1_SetHighThreshold:
;	stm8s_adc1.c: 443: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
	ldw	x, (0x03, sp)
	srlw	x
	srlw	x
	ld	a, xl
	ldw	x, #0x5408
	ld	(x), a
;	stm8s_adc1.c: 444: ADC1->HTRL = (uint8_t)Threshold;
	ld	a, (0x04, sp)
	ldw	x, #0x5409
	ld	(x), a
	ret
;	stm8s_adc1.c: 453: void ADC1_SetLowThreshold(uint16_t Threshold)
;	-----------------------------------------
;	 function ADC1_SetLowThreshold
;	-----------------------------------------
_ADC1_SetLowThreshold:
;	stm8s_adc1.c: 455: ADC1->LTRL = (uint8_t)Threshold;
	ld	a, (0x04, sp)
	ldw	x, #0x540b
	ld	(x), a
;	stm8s_adc1.c: 456: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
	ldw	x, (0x03, sp)
	srlw	x
	srlw	x
	ld	a, xl
	ldw	x, #0x540a
	ld	(x), a
	ret
;	stm8s_adc1.c: 466: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
;	-----------------------------------------
;	 function ADC1_GetBufferValue
;	-----------------------------------------
_ADC1_GetBufferValue:
	sub	sp, #13
;	stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ldw	x, #0x5402
	ld	a, (x)
	ld	(0x0d, sp), a
;	stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ld	a, (0x10, sp)
	sll	a
	clrw	x
	ld	xl, a
	ldw	y, x
	addw	y, #0x53e1
;	stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	addw	x, #0x53e0
;	stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
;	stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
;	stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ld	a, (y)
	ld	(0x0c, sp), a
;	stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	ld	a, (x)
	clrw	x
	ld	xl, a
;	stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ld	a, (0x0d, sp)
	bcp	a, #0x08
	jreq	00102$
;	stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ld	a, (0x0c, sp)
	ld	(0x0b, sp), a
;	stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
;	stm8s_adc1.c: 481: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ld	a, (0x0b, sp)
	ld	(0x0a, sp), a
	clr	(0x09, sp)
	ld	a, xl
	or	a, (0x0a, sp)
	ld	(0x08, sp), a
	ld	a, xh
	or	a, (0x09, sp)
	ld	(0x05, sp), a
	ld	a, (0x08, sp)
	ld	(0x06, sp), a
	jra	00103$
00102$:
;	stm8s_adc1.c: 486: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	ldw	y, x
;	stm8s_adc1.c: 488: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ld	a, (0x0c, sp)
;	stm8s_adc1.c: 490: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x03, sp), x
	ldw	x, y
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ld	a, xl
	or	a, (0x04, sp)
	ld	(0x02, sp), a
	ld	a, xh
	or	a, (0x03, sp)
	ld	(0x05, sp), a
	ld	a, (0x02, sp)
	ld	(0x06, sp), a
00103$:
;	stm8s_adc1.c: 493: return ((uint16_t)temph);
	ldw	x, (0x05, sp)
	addw	sp, #13
	ret
;	stm8s_adc1.c: 502: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
;	-----------------------------------------
;	 function ADC1_GetAWDChannelStatus
;	-----------------------------------------
_ADC1_GetAWDChannelStatus:
	sub	sp, #2
;	stm8s_adc1.c: 509: if (Channel < (uint8_t)8)
	ld	a, (0x05, sp)
	cp	a, #0x08
	jrnc	00102$
;	stm8s_adc1.c: 511: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
	ldw	x, #0x540d
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, #0x01
	push	a
	ld	a, (0x06, sp)
	tnz	a
	jreq	00112$
00111$:
	sll	(1, sp)
	dec	a
	jrne	00111$
00112$:
	pop	a
	and	a, (0x02, sp)
	jra	00103$
00102$:
;	stm8s_adc1.c: 515: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
	ldw	x, #0x540c
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	sub	a, #0x08
	ld	xh, a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00114$
00113$:
	sll	(1, sp)
	dec	a
	jrne	00113$
00114$:
	pop	a
	and	a, (0x01, sp)
00103$:
;	stm8s_adc1.c: 518: return ((FlagStatus)status);
	addw	sp, #2
	ret
;	stm8s_adc1.c: 527: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
;	-----------------------------------------
;	 function ADC1_GetFlagStatus
;	-----------------------------------------
_ADC1_GetFlagStatus:
	sub	sp, #4
;	stm8s_adc1.c: 535: if ((Flag & 0x0F) == 0x01)
	ld	a, (0x07, sp)
	and	a, #0x0f
	ld	(0x04, sp), a
	ld	a, (0x04, sp)
	cp	a, #0x01
	jrne	00108$
;	stm8s_adc1.c: 538: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
	ldw	x, #0x5403
	ld	a, (x)
	and	a, #0x40
	jra	00109$
00108$:
;	stm8s_adc1.c: 540: else if ((Flag & 0xF0) == 0x10)
	ld	a, (0x07, sp)
	and	a, #0xf0
	cp	a, #0x10
	jrne	00105$
;	stm8s_adc1.c: 543: temp = (uint8_t)(Flag & (uint8_t)0x0F);
	ld	a, (0x04, sp)
	ld	(0x01, sp), a
;	stm8s_adc1.c: 544: if (temp < 8)
	ld	a, (0x01, sp)
	cp	a, #0x08
	jrnc	00102$
;	stm8s_adc1.c: 546: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
	ldw	x, #0x540d
	ld	a, (x)
	ld	xh, a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, (0x01, sp)
	tnz	a
	jreq	00132$
00131$:
	sll	(0x03, sp)
	dec	a
	jrne	00131$
00132$:
	ld	a, xh
	and	a, (0x03, sp)
	jra	00109$
00102$:
;	stm8s_adc1.c: 550: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
	ldw	x, #0x540c
	ld	a, (x)
	ld	xh, a
	ld	a, (0x01, sp)
	sub	a, #0x08
	ld	xl, a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xl
	tnz	a
	jreq	00134$
00133$:
	sll	(0x02, sp)
	dec	a
	jrne	00133$
00134$:
	ld	a, xh
	and	a, (0x02, sp)
	jra	00109$
00105$:
;	stm8s_adc1.c: 555: flagstatus = (uint8_t)(ADC1->CSR & Flag);
	ldw	x, #0x5400
	ld	a, (x)
	and	a, (0x07, sp)
00109$:
;	stm8s_adc1.c: 557: return ((FlagStatus)flagstatus);
	addw	sp, #4
	ret
;	stm8s_adc1.c: 567: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
;	-----------------------------------------
;	 function ADC1_ClearFlag
;	-----------------------------------------
_ADC1_ClearFlag:
	sub	sp, #3
;	stm8s_adc1.c: 574: if ((Flag & 0x0F) == 0x01)
	ld	a, (0x06, sp)
	and	a, #0x0f
	ld	xh, a
	cp	a, #0x01
	jrne	00108$
;	stm8s_adc1.c: 577: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
	ldw	x, #0x5403
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
	jra	00110$
00108$:
;	stm8s_adc1.c: 579: else if ((Flag & 0xF0) == 0x10)
	ld	a, (0x06, sp)
	and	a, #0xf0
	cp	a, #0x10
	jrne	00105$
;	stm8s_adc1.c: 582: temp = (uint8_t)(Flag & (uint8_t)0x0F);
;	stm8s_adc1.c: 583: if (temp < 8)
	ld	a, xh
	cp	a, #0x08
	jrnc	00102$
;	stm8s_adc1.c: 585: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
	ldw	y, #0x540d
	ld	a, (y)
	ld	(0x03, sp), a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00132$
00131$:
	sll	(1, sp)
	dec	a
	jrne	00131$
00132$:
	pop	a
	cpl	a
	and	a, (0x03, sp)
	ldw	x, #0x540d
	ld	(x), a
	jra	00110$
00102$:
;	stm8s_adc1.c: 589: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
	ldw	y, #0x540c
	ld	a, (y)
	ld	(0x02, sp), a
	subw	x, #2048
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00134$
00133$:
	sll	(1, sp)
	dec	a
	jrne	00133$
00134$:
	pop	a
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x540c
	ld	(x), a
	jra	00110$
00105$:
;	stm8s_adc1.c: 594: ADC1->CSR &= (uint8_t) (~Flag);
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x5400
	ld	(x), a
00110$:
	addw	sp, #3
	ret
;	stm8s_adc1.c: 616: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
;	-----------------------------------------
;	 function ADC1_GetITStatus
;	-----------------------------------------
_ADC1_GetITStatus:
	sub	sp, #3
;	stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
	ld	a, (0x07, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
;	stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
	ld	a, (0x07, sp)
	and	a, #0x0f
	ld	xh, a
	clr	a
;	stm8s_adc1.c: 628: if (temp < 8)
	ld	a, xh
	cp	a, #0x08
	jrnc	00102$
;	stm8s_adc1.c: 630: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
	ldw	y, #0x540d
	ld	a, (y)
	ld	xl, a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, xh
	tnz	a
	jreq	00122$
00121$:
	sll	(0x03, sp)
	dec	a
	jrne	00121$
00122$:
	ld	a, xl
	and	a, (0x03, sp)
	jra	00106$
00102$:
;	stm8s_adc1.c: 634: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
	ldw	y, #0x540c
	ld	a, (y)
	ld	xl, a
	subw	x, #2048
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	tnz	a
	jreq	00124$
00123$:
	sll	(0x02, sp)
	dec	a
	jrne	00123$
00124$:
	ld	a, xl
	and	a, (0x02, sp)
	jra	00106$
00105$:
;	stm8s_adc1.c: 639: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x07, sp)
	and	a, (0x01, sp)
00106$:
;	stm8s_adc1.c: 641: return ((ITStatus)itstatus);
	addw	sp, #3
	ret
;	stm8s_adc1.c: 662: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
;	-----------------------------------------
;	 function ADC1_ClearITPendingBit
;	-----------------------------------------
_ADC1_ClearITPendingBit:
	sub	sp, #2
;	stm8s_adc1.c: 669: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
	ld	a, (0x06, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
;	stm8s_adc1.c: 672: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
	ld	a, (0x06, sp)
	and	a, #0x0f
	ld	xh, a
	clr	a
;	stm8s_adc1.c: 673: if (temp < 8)
	ld	a, xh
	cp	a, #0x08
	jrnc	00102$
;	stm8s_adc1.c: 675: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
	ldw	y, #0x540d
	ld	a, (y)
	ld	(0x02, sp), a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00122$
00121$:
	sll	(1, sp)
	dec	a
	jrne	00121$
00122$:
	pop	a
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x540d
	ld	(x), a
	jra	00107$
00102$:
;	stm8s_adc1.c: 679: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
	ldw	y, #0x540c
	ld	a, (y)
	ld	(0x01, sp), a
	subw	x, #2048
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00124$
00123$:
	sll	(1, sp)
	dec	a
	jrne	00123$
00124$:
	pop	a
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x540c
	ld	(x), a
	jra	00107$
00105$:
;	stm8s_adc1.c: 684: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
	ldw	x, #0x5400
	ld	a, (x)
	ldw	x, (0x05, sp)
	cplw	x
	pushw	x
	and	a, (2, sp)
	popw	x
	ldw	x, #0x5400
	ld	(x), a
00107$:
	addw	sp, #2
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

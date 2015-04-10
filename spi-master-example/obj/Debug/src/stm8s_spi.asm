;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Fri Apr 10 13:22:39 2015
;--------------------------------------------------------
	.module stm8s_spi
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_DeInit
	.globl _SPI_Init
	.globl _SPI_Cmd
	.globl _SPI_ITConfig
	.globl _SPI_SendData
	.globl _SPI_ReceiveData
	.globl _SPI_NSSInternalSoftwareCmd
	.globl _SPI_TransmitCRC
	.globl _SPI_CalculateCRCCmd
	.globl _SPI_GetCRC
	.globl _SPI_ResetCRC
	.globl _SPI_GetCRCPolynomial
	.globl _SPI_BiDirectionalLineConfig
	.globl _SPI_GetFlagStatus
	.globl _SPI_ClearFlag
	.globl _SPI_GetITStatus
	.globl _SPI_ClearITPendingBit
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
;	src\stm8s_spi.c: 50: void SPI_DeInit(void)
;	-----------------------------------------
;	 function SPI_DeInit
;	-----------------------------------------
_SPI_DeInit:
;	src\stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
	ldw	x, #0x5200
	clr	(x)
;	src\stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
	ldw	x, #0x5201
	clr	(x)
;	src\stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
	ldw	x, #0x5202
	clr	(x)
;	src\stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
	ldw	x, #0x5203
	ld	a, #0x02
	ld	(x), a
;	src\stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
	ldw	x, #0x5205
	ld	a, #0x07
	ld	(x), a
	ret
;	src\stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	push	a
;	src\stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
	ld	a, (0x04, sp)
	or	a, (0x05, sp)
	ld	(0x01, sp), a
;	src\stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
	ld	a, (0x07, sp)
	or	a, (0x08, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5200
	ld	(x), a
;	src\stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
	ld	a, (0x09, sp)
	or	a, (0x0a, sp)
	ldw	x, #0x5201
	ld	(x), a
;	src\stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
	ld	a, (0x06, sp)
	cp	a, #0x04
	jrne	00102$
;	src\stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00103$
00102$:
;	src\stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
	bres	0x5201, #0
00103$:
;	src\stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
	ldw	x, #0x5200
	ld	a, (x)
	or	a, (0x06, sp)
	ldw	x, #0x5200
	ld	(x), a
;	src\stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
	ldw	x, #0x5205
	ld	a, (0x0b, sp)
	ld	(x), a
	pop	a
	ret
;	src\stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_Cmd
;	-----------------------------------------
_SPI_Cmd:
;	src\stm8s_spi.c: 124: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
	ldw	x, #0x5200
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
	ldw	x, #0x5200
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	ret
;	src\stm8s_spi.c: 141: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_ITConfig
;	-----------------------------------------
_SPI_ITConfig:
	sub	sp, #2
;	src\stm8s_spi.c: 149: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
	ld	a, (0x05, sp)
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	ld	(0x01, sp), a
	ld	a, xh
	tnz	a
	jreq	00111$
00110$:
	sll	(0x01, sp)
	dec	a
	jrne	00110$
00111$:
;	src\stm8s_spi.c: 151: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	src\stm8s_spi.c: 153: SPI->ICR |= itpos; /* Enable interrupt*/
	ldw	x, #0x5202
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5202
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_spi.c: 157: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
	ldw	x, #0x5202
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x5202
	ld	(x), a
00104$:
	addw	sp, #2
	ret
;	src\stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
;	-----------------------------------------
;	 function SPI_SendData
;	-----------------------------------------
_SPI_SendData:
;	src\stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
	ldw	x, #0x5204
	ld	a, (0x03, sp)
	ld	(x), a
	ret
;	src\stm8s_spi.c: 176: uint8_t SPI_ReceiveData(void)
;	-----------------------------------------
;	 function SPI_ReceiveData
;	-----------------------------------------
_SPI_ReceiveData:
;	src\stm8s_spi.c: 178: return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
	ldw	x, #0x5204
	ld	a, (x)
	ret
;	src\stm8s_spi.c: 187: void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_NSSInternalSoftwareCmd
;	-----------------------------------------
_SPI_NSSInternalSoftwareCmd:
;	src\stm8s_spi.c: 192: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_spi.c: 194: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x01
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_spi.c: 198: SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
	bres	0x5201, #0
00104$:
	ret
;	src\stm8s_spi.c: 207: void SPI_TransmitCRC(void)
;	-----------------------------------------
;	 function SPI_TransmitCRC
;	-----------------------------------------
_SPI_TransmitCRC:
;	src\stm8s_spi.c: 209: SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	ret
;	src\stm8s_spi.c: 218: void SPI_CalculateCRCCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_CalculateCRCCmd
;	-----------------------------------------
_SPI_CalculateCRCCmd:
;	src\stm8s_spi.c: 223: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_spi.c: 225: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_spi.c: 229: SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
	ldw	x, #0x5201
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	ret
;	src\stm8s_spi.c: 238: uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
;	-----------------------------------------
;	 function SPI_GetCRC
;	-----------------------------------------
_SPI_GetCRC:
;	src\stm8s_spi.c: 245: if (SPI_CRC != SPI_CRC_RX)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_spi.c: 247: crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
	ldw	x, #0x5207
	ld	a, (x)
	jra	00103$
00102$:
;	src\stm8s_spi.c: 251: crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
	ldw	x, #0x5206
	ld	a, (x)
00103$:
;	src\stm8s_spi.c: 255: return crcreg;
	ret
;	src\stm8s_spi.c: 263: void SPI_ResetCRC(void)
;	-----------------------------------------
;	 function SPI_ResetCRC
;	-----------------------------------------
_SPI_ResetCRC:
;	src\stm8s_spi.c: 267: SPI_CalculateCRCCmd(ENABLE);
	push	#0x01
	call	_SPI_CalculateCRCCmd
	pop	a
;	src\stm8s_spi.c: 270: SPI_Cmd(ENABLE);
	push	#0x01
	call	_SPI_Cmd
	pop	a
	ret
;	src\stm8s_spi.c: 278: uint8_t SPI_GetCRCPolynomial(void)
;	-----------------------------------------
;	 function SPI_GetCRCPolynomial
;	-----------------------------------------
_SPI_GetCRCPolynomial:
;	src\stm8s_spi.c: 280: return SPI->CRCPR; /* Return the CRC polynomial register */
	ldw	x, #0x5205
	ld	a, (x)
	ret
;	src\stm8s_spi.c: 288: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
;	-----------------------------------------
;	 function SPI_BiDirectionalLineConfig
;	-----------------------------------------
_SPI_BiDirectionalLineConfig:
;	src\stm8s_spi.c: 293: if (SPI_Direction != SPI_DIRECTION_RX)
	tnz	(0x03, sp)
	jreq	00102$
;	src\stm8s_spi.c: 295: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	src\stm8s_spi.c: 299: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
	ldw	x, #0x5201
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	ret
;	src\stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
;	-----------------------------------------
;	 function SPI_GetFlagStatus
;	-----------------------------------------
_SPI_GetFlagStatus:
;	src\stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
	ldw	x, #0x5203
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
;	src\stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
	ld	a, #0x01
	jra	00103$
00102$:
;	src\stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
	clr	a
00103$:
;	src\stm8s_spi.c: 328: return status;
	ret
;	src\stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
;	-----------------------------------------
;	 function SPI_ClearFlag
;	-----------------------------------------
_SPI_ClearFlag:
;	src\stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
	ld	a, (0x03, sp)
	cpl	a
	ldw	x, #0x5203
	ld	(x), a
	ret
;	src\stm8s_spi.c: 366: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
;	-----------------------------------------
;	 function SPI_GetITStatus
;	-----------------------------------------
_SPI_GetITStatus:
	sub	sp, #3
;	src\stm8s_spi.c: 375: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
	ld	a, (0x06, sp)
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, xh
	tnz	a
	jreq	00116$
00115$:
	sll	(0x03, sp)
	dec	a
	jrne	00115$
00116$:
;	src\stm8s_spi.c: 378: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
	ld	a, (0x06, sp)
	swap	a
	and	a, #0x0f
	ld	xh, a
;	src\stm8s_spi.c: 380: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	tnz	a
	jreq	00118$
00117$:
	sll	(0x02, sp)
	dec	a
	jrne	00117$
00118$:
;	src\stm8s_spi.c: 382: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
	ldw	x, #0x5203
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	src\stm8s_spi.c: 384: if (((SPI->ICR & itpos) != RESET) && enablestatus)
	ldw	x, #0x5202
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
	tnz	(0x01, sp)
	jreq	00102$
;	src\stm8s_spi.c: 387: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00103$
00102$:
;	src\stm8s_spi.c: 392: pendingbitstatus = RESET;
	clr	a
00103$:
;	src\stm8s_spi.c: 395: return  pendingbitstatus;
	addw	sp, #3
	ret
;	src\stm8s_spi.c: 412: void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
;	-----------------------------------------
;	 function SPI_ClearITPendingBit
;	-----------------------------------------
_SPI_ClearITPendingBit:
;	src\stm8s_spi.c: 420: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
	ld	a, (0x03, sp)
	and	a, #0xf0
	swap	a
	and	a, #0x0f
	rlwa	x
	ld	a, #0x01
	rrwa	x
	tnz	a
	jreq	00104$
00103$:
	rlwa	x
	sll	a
	rrwa	x
	dec	a
	jrne	00103$
00104$:
;	src\stm8s_spi.c: 422: SPI->SR = (uint8_t)(~itpos);
	ld	a, xh
	cpl	a
	ldw	x, #0x5203
	ld	(x), a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Fri Apr 10 13:22:39 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8s_spi
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _SPI_DeInit
                                     13 	.globl _SPI_Init
                                     14 	.globl _SPI_Cmd
                                     15 	.globl _SPI_ITConfig
                                     16 	.globl _SPI_SendData
                                     17 	.globl _SPI_ReceiveData
                                     18 	.globl _SPI_NSSInternalSoftwareCmd
                                     19 	.globl _SPI_TransmitCRC
                                     20 	.globl _SPI_CalculateCRCCmd
                                     21 	.globl _SPI_GetCRC
                                     22 	.globl _SPI_ResetCRC
                                     23 	.globl _SPI_GetCRCPolynomial
                                     24 	.globl _SPI_BiDirectionalLineConfig
                                     25 	.globl _SPI_GetFlagStatus
                                     26 	.globl _SPI_ClearFlag
                                     27 	.globl _SPI_GetITStatus
                                     28 	.globl _SPI_ClearITPendingBit
                                     29 ;--------------------------------------------------------
                                     30 ; ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DATA
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area INITIALIZED
                                     37 ;--------------------------------------------------------
                                     38 ; absolute external ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DABS (ABS)
                                     41 ;--------------------------------------------------------
                                     42 ; global & static initialisations
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area GSINIT
                                     48 ;--------------------------------------------------------
                                     49 ; Home
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area HOME
                                     53 ;--------------------------------------------------------
                                     54 ; code
                                     55 ;--------------------------------------------------------
                                     56 	.area CODE
                                     57 ;	src\stm8s_spi.c: 50: void SPI_DeInit(void)
                                     58 ;	-----------------------------------------
                                     59 ;	 function SPI_DeInit
                                     60 ;	-----------------------------------------
      0085ED                         61 _SPI_DeInit:
                                     62 ;	src\stm8s_spi.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
      0085ED AE 52 00         [ 2]   63 	ldw	x, #0x5200
      0085F0 7F               [ 1]   64 	clr	(x)
                                     65 ;	src\stm8s_spi.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
      0085F1 AE 52 01         [ 2]   66 	ldw	x, #0x5201
      0085F4 7F               [ 1]   67 	clr	(x)
                                     68 ;	src\stm8s_spi.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
      0085F5 AE 52 02         [ 2]   69 	ldw	x, #0x5202
      0085F8 7F               [ 1]   70 	clr	(x)
                                     71 ;	src\stm8s_spi.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
      0085F9 AE 52 03         [ 2]   72 	ldw	x, #0x5203
      0085FC A6 02            [ 1]   73 	ld	a, #0x02
      0085FE F7               [ 1]   74 	ld	(x), a
                                     75 ;	src\stm8s_spi.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
      0085FF AE 52 05         [ 2]   76 	ldw	x, #0x5205
      008602 A6 07            [ 1]   77 	ld	a, #0x07
      008604 F7               [ 1]   78 	ld	(x), a
      008605 81               [ 4]   79 	ret
                                     80 ;	src\stm8s_spi.c: 78: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
                                     81 ;	-----------------------------------------
                                     82 ;	 function SPI_Init
                                     83 ;	-----------------------------------------
      008606                         84 _SPI_Init:
      008606 88               [ 1]   85 	push	a
                                     86 ;	src\stm8s_spi.c: 91: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
      008607 7B 04            [ 1]   87 	ld	a, (0x04, sp)
      008609 1A 05            [ 1]   88 	or	a, (0x05, sp)
      00860B 6B 01            [ 1]   89 	ld	(0x01, sp), a
                                     90 ;	src\stm8s_spi.c: 92: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
      00860D 7B 07            [ 1]   91 	ld	a, (0x07, sp)
      00860F 1A 08            [ 1]   92 	or	a, (0x08, sp)
      008611 1A 01            [ 1]   93 	or	a, (0x01, sp)
      008613 AE 52 00         [ 2]   94 	ldw	x, #0x5200
      008616 F7               [ 1]   95 	ld	(x), a
                                     96 ;	src\stm8s_spi.c: 95: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
      008617 7B 09            [ 1]   97 	ld	a, (0x09, sp)
      008619 1A 0A            [ 1]   98 	or	a, (0x0a, sp)
      00861B AE 52 01         [ 2]   99 	ldw	x, #0x5201
      00861E F7               [ 1]  100 	ld	(x), a
                                    101 ;	src\stm8s_spi.c: 97: if (Mode == SPI_MODE_MASTER)
      00861F 7B 06            [ 1]  102 	ld	a, (0x06, sp)
      008621 A1 04            [ 1]  103 	cp	a, #0x04
      008623 26 09            [ 1]  104 	jrne	00102$
                                    105 ;	src\stm8s_spi.c: 99: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
      008625 AE 52 01         [ 2]  106 	ldw	x, #0x5201
      008628 F6               [ 1]  107 	ld	a, (x)
      008629 AA 01            [ 1]  108 	or	a, #0x01
      00862B F7               [ 1]  109 	ld	(x), a
      00862C 20 04            [ 2]  110 	jra	00103$
      00862E                        111 00102$:
                                    112 ;	src\stm8s_spi.c: 103: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
      00862E 72 11 52 01      [ 1]  113 	bres	0x5201, #0
      008632                        114 00103$:
                                    115 ;	src\stm8s_spi.c: 107: SPI->CR1 |= (uint8_t)(Mode);
      008632 AE 52 00         [ 2]  116 	ldw	x, #0x5200
      008635 F6               [ 1]  117 	ld	a, (x)
      008636 1A 06            [ 1]  118 	or	a, (0x06, sp)
      008638 AE 52 00         [ 2]  119 	ldw	x, #0x5200
      00863B F7               [ 1]  120 	ld	(x), a
                                    121 ;	src\stm8s_spi.c: 110: SPI->CRCPR = (uint8_t)CRCPolynomial;
      00863C AE 52 05         [ 2]  122 	ldw	x, #0x5205
      00863F 7B 0B            [ 1]  123 	ld	a, (0x0b, sp)
      008641 F7               [ 1]  124 	ld	(x), a
      008642 84               [ 1]  125 	pop	a
      008643 81               [ 4]  126 	ret
                                    127 ;	src\stm8s_spi.c: 119: void SPI_Cmd(FunctionalState NewState)
                                    128 ;	-----------------------------------------
                                    129 ;	 function SPI_Cmd
                                    130 ;	-----------------------------------------
      008644                        131 _SPI_Cmd:
                                    132 ;	src\stm8s_spi.c: 124: if (NewState != DISABLE)
      008644 0D 03            [ 1]  133 	tnz	(0x03, sp)
      008646 27 09            [ 1]  134 	jreq	00102$
                                    135 ;	src\stm8s_spi.c: 126: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
      008648 AE 52 00         [ 2]  136 	ldw	x, #0x5200
      00864B F6               [ 1]  137 	ld	a, (x)
      00864C AA 40            [ 1]  138 	or	a, #0x40
      00864E F7               [ 1]  139 	ld	(x), a
      00864F 20 07            [ 2]  140 	jra	00104$
      008651                        141 00102$:
                                    142 ;	src\stm8s_spi.c: 130: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
      008651 AE 52 00         [ 2]  143 	ldw	x, #0x5200
      008654 F6               [ 1]  144 	ld	a, (x)
      008655 A4 BF            [ 1]  145 	and	a, #0xbf
      008657 F7               [ 1]  146 	ld	(x), a
      008658                        147 00104$:
      008658 81               [ 4]  148 	ret
                                    149 ;	src\stm8s_spi.c: 141: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
                                    150 ;	-----------------------------------------
                                    151 ;	 function SPI_ITConfig
                                    152 ;	-----------------------------------------
      008659                        153 _SPI_ITConfig:
      008659 52 02            [ 2]  154 	sub	sp, #2
                                    155 ;	src\stm8s_spi.c: 149: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
      00865B 7B 05            [ 1]  156 	ld	a, (0x05, sp)
      00865D A4 0F            [ 1]  157 	and	a, #0x0f
      00865F 95               [ 1]  158 	ld	xh, a
      008660 A6 01            [ 1]  159 	ld	a, #0x01
      008662 6B 01            [ 1]  160 	ld	(0x01, sp), a
      008664 9E               [ 1]  161 	ld	a, xh
      008665 4D               [ 1]  162 	tnz	a
      008666 27 05            [ 1]  163 	jreq	00111$
      008668                        164 00110$:
      008668 08 01            [ 1]  165 	sll	(0x01, sp)
      00866A 4A               [ 1]  166 	dec	a
      00866B 26 FB            [ 1]  167 	jrne	00110$
      00866D                        168 00111$:
                                    169 ;	src\stm8s_spi.c: 151: if (NewState != DISABLE)
      00866D 0D 06            [ 1]  170 	tnz	(0x06, sp)
      00866F 27 0C            [ 1]  171 	jreq	00102$
                                    172 ;	src\stm8s_spi.c: 153: SPI->ICR |= itpos; /* Enable interrupt*/
      008671 AE 52 02         [ 2]  173 	ldw	x, #0x5202
      008674 F6               [ 1]  174 	ld	a, (x)
      008675 1A 01            [ 1]  175 	or	a, (0x01, sp)
      008677 AE 52 02         [ 2]  176 	ldw	x, #0x5202
      00867A F7               [ 1]  177 	ld	(x), a
      00867B 20 0F            [ 2]  178 	jra	00104$
      00867D                        179 00102$:
                                    180 ;	src\stm8s_spi.c: 157: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
      00867D AE 52 02         [ 2]  181 	ldw	x, #0x5202
      008680 F6               [ 1]  182 	ld	a, (x)
      008681 6B 02            [ 1]  183 	ld	(0x02, sp), a
      008683 7B 01            [ 1]  184 	ld	a, (0x01, sp)
      008685 43               [ 1]  185 	cpl	a
      008686 14 02            [ 1]  186 	and	a, (0x02, sp)
      008688 AE 52 02         [ 2]  187 	ldw	x, #0x5202
      00868B F7               [ 1]  188 	ld	(x), a
      00868C                        189 00104$:
      00868C 5B 02            [ 2]  190 	addw	sp, #2
      00868E 81               [ 4]  191 	ret
                                    192 ;	src\stm8s_spi.c: 166: void SPI_SendData(uint8_t Data)
                                    193 ;	-----------------------------------------
                                    194 ;	 function SPI_SendData
                                    195 ;	-----------------------------------------
      00868F                        196 _SPI_SendData:
                                    197 ;	src\stm8s_spi.c: 168: SPI->DR = Data; /* Write in the DR register the data to be sent*/
      00868F AE 52 04         [ 2]  198 	ldw	x, #0x5204
      008692 7B 03            [ 1]  199 	ld	a, (0x03, sp)
      008694 F7               [ 1]  200 	ld	(x), a
      008695 81               [ 4]  201 	ret
                                    202 ;	src\stm8s_spi.c: 176: uint8_t SPI_ReceiveData(void)
                                    203 ;	-----------------------------------------
                                    204 ;	 function SPI_ReceiveData
                                    205 ;	-----------------------------------------
      008696                        206 _SPI_ReceiveData:
                                    207 ;	src\stm8s_spi.c: 178: return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
      008696 AE 52 04         [ 2]  208 	ldw	x, #0x5204
      008699 F6               [ 1]  209 	ld	a, (x)
      00869A 81               [ 4]  210 	ret
                                    211 ;	src\stm8s_spi.c: 187: void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
                                    212 ;	-----------------------------------------
                                    213 ;	 function SPI_NSSInternalSoftwareCmd
                                    214 ;	-----------------------------------------
      00869B                        215 _SPI_NSSInternalSoftwareCmd:
                                    216 ;	src\stm8s_spi.c: 192: if (NewState != DISABLE)
      00869B 0D 03            [ 1]  217 	tnz	(0x03, sp)
      00869D 27 09            [ 1]  218 	jreq	00102$
                                    219 ;	src\stm8s_spi.c: 194: SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
      00869F AE 52 01         [ 2]  220 	ldw	x, #0x5201
      0086A2 F6               [ 1]  221 	ld	a, (x)
      0086A3 AA 01            [ 1]  222 	or	a, #0x01
      0086A5 F7               [ 1]  223 	ld	(x), a
      0086A6 20 04            [ 2]  224 	jra	00104$
      0086A8                        225 00102$:
                                    226 ;	src\stm8s_spi.c: 198: SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
      0086A8 72 11 52 01      [ 1]  227 	bres	0x5201, #0
      0086AC                        228 00104$:
      0086AC 81               [ 4]  229 	ret
                                    230 ;	src\stm8s_spi.c: 207: void SPI_TransmitCRC(void)
                                    231 ;	-----------------------------------------
                                    232 ;	 function SPI_TransmitCRC
                                    233 ;	-----------------------------------------
      0086AD                        234 _SPI_TransmitCRC:
                                    235 ;	src\stm8s_spi.c: 209: SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
      0086AD AE 52 01         [ 2]  236 	ldw	x, #0x5201
      0086B0 F6               [ 1]  237 	ld	a, (x)
      0086B1 AA 10            [ 1]  238 	or	a, #0x10
      0086B3 F7               [ 1]  239 	ld	(x), a
      0086B4 81               [ 4]  240 	ret
                                    241 ;	src\stm8s_spi.c: 218: void SPI_CalculateCRCCmd(FunctionalState NewState)
                                    242 ;	-----------------------------------------
                                    243 ;	 function SPI_CalculateCRCCmd
                                    244 ;	-----------------------------------------
      0086B5                        245 _SPI_CalculateCRCCmd:
                                    246 ;	src\stm8s_spi.c: 223: if (NewState != DISABLE)
      0086B5 0D 03            [ 1]  247 	tnz	(0x03, sp)
      0086B7 27 09            [ 1]  248 	jreq	00102$
                                    249 ;	src\stm8s_spi.c: 225: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
      0086B9 AE 52 01         [ 2]  250 	ldw	x, #0x5201
      0086BC F6               [ 1]  251 	ld	a, (x)
      0086BD AA 20            [ 1]  252 	or	a, #0x20
      0086BF F7               [ 1]  253 	ld	(x), a
      0086C0 20 07            [ 2]  254 	jra	00104$
      0086C2                        255 00102$:
                                    256 ;	src\stm8s_spi.c: 229: SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
      0086C2 AE 52 01         [ 2]  257 	ldw	x, #0x5201
      0086C5 F6               [ 1]  258 	ld	a, (x)
      0086C6 A4 DF            [ 1]  259 	and	a, #0xdf
      0086C8 F7               [ 1]  260 	ld	(x), a
      0086C9                        261 00104$:
      0086C9 81               [ 4]  262 	ret
                                    263 ;	src\stm8s_spi.c: 238: uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
                                    264 ;	-----------------------------------------
                                    265 ;	 function SPI_GetCRC
                                    266 ;	-----------------------------------------
      0086CA                        267 _SPI_GetCRC:
                                    268 ;	src\stm8s_spi.c: 245: if (SPI_CRC != SPI_CRC_RX)
      0086CA 0D 03            [ 1]  269 	tnz	(0x03, sp)
      0086CC 27 06            [ 1]  270 	jreq	00102$
                                    271 ;	src\stm8s_spi.c: 247: crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
      0086CE AE 52 07         [ 2]  272 	ldw	x, #0x5207
      0086D1 F6               [ 1]  273 	ld	a, (x)
      0086D2 20 04            [ 2]  274 	jra	00103$
      0086D4                        275 00102$:
                                    276 ;	src\stm8s_spi.c: 251: crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
      0086D4 AE 52 06         [ 2]  277 	ldw	x, #0x5206
      0086D7 F6               [ 1]  278 	ld	a, (x)
      0086D8                        279 00103$:
                                    280 ;	src\stm8s_spi.c: 255: return crcreg;
      0086D8 81               [ 4]  281 	ret
                                    282 ;	src\stm8s_spi.c: 263: void SPI_ResetCRC(void)
                                    283 ;	-----------------------------------------
                                    284 ;	 function SPI_ResetCRC
                                    285 ;	-----------------------------------------
      0086D9                        286 _SPI_ResetCRC:
                                    287 ;	src\stm8s_spi.c: 267: SPI_CalculateCRCCmd(ENABLE);
      0086D9 4B 01            [ 1]  288 	push	#0x01
      0086DB CD 86 B5         [ 4]  289 	call	_SPI_CalculateCRCCmd
      0086DE 84               [ 1]  290 	pop	a
                                    291 ;	src\stm8s_spi.c: 270: SPI_Cmd(ENABLE);
      0086DF 4B 01            [ 1]  292 	push	#0x01
      0086E1 CD 86 44         [ 4]  293 	call	_SPI_Cmd
      0086E4 84               [ 1]  294 	pop	a
      0086E5 81               [ 4]  295 	ret
                                    296 ;	src\stm8s_spi.c: 278: uint8_t SPI_GetCRCPolynomial(void)
                                    297 ;	-----------------------------------------
                                    298 ;	 function SPI_GetCRCPolynomial
                                    299 ;	-----------------------------------------
      0086E6                        300 _SPI_GetCRCPolynomial:
                                    301 ;	src\stm8s_spi.c: 280: return SPI->CRCPR; /* Return the CRC polynomial register */
      0086E6 AE 52 05         [ 2]  302 	ldw	x, #0x5205
      0086E9 F6               [ 1]  303 	ld	a, (x)
      0086EA 81               [ 4]  304 	ret
                                    305 ;	src\stm8s_spi.c: 288: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
                                    306 ;	-----------------------------------------
                                    307 ;	 function SPI_BiDirectionalLineConfig
                                    308 ;	-----------------------------------------
      0086EB                        309 _SPI_BiDirectionalLineConfig:
                                    310 ;	src\stm8s_spi.c: 293: if (SPI_Direction != SPI_DIRECTION_RX)
      0086EB 0D 03            [ 1]  311 	tnz	(0x03, sp)
      0086ED 27 09            [ 1]  312 	jreq	00102$
                                    313 ;	src\stm8s_spi.c: 295: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
      0086EF AE 52 01         [ 2]  314 	ldw	x, #0x5201
      0086F2 F6               [ 1]  315 	ld	a, (x)
      0086F3 AA 40            [ 1]  316 	or	a, #0x40
      0086F5 F7               [ 1]  317 	ld	(x), a
      0086F6 20 07            [ 2]  318 	jra	00104$
      0086F8                        319 00102$:
                                    320 ;	src\stm8s_spi.c: 299: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
      0086F8 AE 52 01         [ 2]  321 	ldw	x, #0x5201
      0086FB F6               [ 1]  322 	ld	a, (x)
      0086FC A4 BF            [ 1]  323 	and	a, #0xbf
      0086FE F7               [ 1]  324 	ld	(x), a
      0086FF                        325 00104$:
      0086FF 81               [ 4]  326 	ret
                                    327 ;	src\stm8s_spi.c: 311: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
                                    328 ;	-----------------------------------------
                                    329 ;	 function SPI_GetFlagStatus
                                    330 ;	-----------------------------------------
      008700                        331 _SPI_GetFlagStatus:
                                    332 ;	src\stm8s_spi.c: 318: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
      008700 AE 52 03         [ 2]  333 	ldw	x, #0x5203
      008703 F6               [ 1]  334 	ld	a, (x)
      008704 14 03            [ 1]  335 	and	a, (0x03, sp)
      008706 4D               [ 1]  336 	tnz	a
      008707 27 04            [ 1]  337 	jreq	00102$
                                    338 ;	src\stm8s_spi.c: 320: status = SET; /* SPI_FLAG is set */
      008709 A6 01            [ 1]  339 	ld	a, #0x01
      00870B 20 01            [ 2]  340 	jra	00103$
      00870D                        341 00102$:
                                    342 ;	src\stm8s_spi.c: 324: status = RESET; /* SPI_FLAG is reset*/
      00870D 4F               [ 1]  343 	clr	a
      00870E                        344 00103$:
                                    345 ;	src\stm8s_spi.c: 328: return status;
      00870E 81               [ 4]  346 	ret
                                    347 ;	src\stm8s_spi.c: 346: void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
                                    348 ;	-----------------------------------------
                                    349 ;	 function SPI_ClearFlag
                                    350 ;	-----------------------------------------
      00870F                        351 _SPI_ClearFlag:
                                    352 ;	src\stm8s_spi.c: 350: SPI->SR = (uint8_t)(~SPI_FLAG);
      00870F 7B 03            [ 1]  353 	ld	a, (0x03, sp)
      008711 43               [ 1]  354 	cpl	a
      008712 AE 52 03         [ 2]  355 	ldw	x, #0x5203
      008715 F7               [ 1]  356 	ld	(x), a
      008716 81               [ 4]  357 	ret
                                    358 ;	src\stm8s_spi.c: 366: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
                                    359 ;	-----------------------------------------
                                    360 ;	 function SPI_GetITStatus
                                    361 ;	-----------------------------------------
      008717                        362 _SPI_GetITStatus:
      008717 52 03            [ 2]  363 	sub	sp, #3
                                    364 ;	src\stm8s_spi.c: 375: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
      008719 7B 06            [ 1]  365 	ld	a, (0x06, sp)
      00871B A4 0F            [ 1]  366 	and	a, #0x0f
      00871D 95               [ 1]  367 	ld	xh, a
      00871E A6 01            [ 1]  368 	ld	a, #0x01
      008720 6B 03            [ 1]  369 	ld	(0x03, sp), a
      008722 9E               [ 1]  370 	ld	a, xh
      008723 4D               [ 1]  371 	tnz	a
      008724 27 05            [ 1]  372 	jreq	00116$
      008726                        373 00115$:
      008726 08 03            [ 1]  374 	sll	(0x03, sp)
      008728 4A               [ 1]  375 	dec	a
      008729 26 FB            [ 1]  376 	jrne	00115$
      00872B                        377 00116$:
                                    378 ;	src\stm8s_spi.c: 378: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
      00872B 7B 06            [ 1]  379 	ld	a, (0x06, sp)
      00872D 4E               [ 1]  380 	swap	a
      00872E A4 0F            [ 1]  381 	and	a, #0x0f
      008730 95               [ 1]  382 	ld	xh, a
                                    383 ;	src\stm8s_spi.c: 380: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      008731 A6 01            [ 1]  384 	ld	a, #0x01
      008733 6B 02            [ 1]  385 	ld	(0x02, sp), a
      008735 9E               [ 1]  386 	ld	a, xh
      008736 4D               [ 1]  387 	tnz	a
      008737 27 05            [ 1]  388 	jreq	00118$
      008739                        389 00117$:
      008739 08 02            [ 1]  390 	sll	(0x02, sp)
      00873B 4A               [ 1]  391 	dec	a
      00873C 26 FB            [ 1]  392 	jrne	00117$
      00873E                        393 00118$:
                                    394 ;	src\stm8s_spi.c: 382: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
      00873E AE 52 03         [ 2]  395 	ldw	x, #0x5203
      008741 F6               [ 1]  396 	ld	a, (x)
      008742 14 02            [ 1]  397 	and	a, (0x02, sp)
      008744 6B 01            [ 1]  398 	ld	(0x01, sp), a
                                    399 ;	src\stm8s_spi.c: 384: if (((SPI->ICR & itpos) != RESET) && enablestatus)
      008746 AE 52 02         [ 2]  400 	ldw	x, #0x5202
      008749 F6               [ 1]  401 	ld	a, (x)
      00874A 14 03            [ 1]  402 	and	a, (0x03, sp)
      00874C 4D               [ 1]  403 	tnz	a
      00874D 27 08            [ 1]  404 	jreq	00102$
      00874F 0D 01            [ 1]  405 	tnz	(0x01, sp)
      008751 27 04            [ 1]  406 	jreq	00102$
                                    407 ;	src\stm8s_spi.c: 387: pendingbitstatus = SET;
      008753 A6 01            [ 1]  408 	ld	a, #0x01
      008755 20 01            [ 2]  409 	jra	00103$
      008757                        410 00102$:
                                    411 ;	src\stm8s_spi.c: 392: pendingbitstatus = RESET;
      008757 4F               [ 1]  412 	clr	a
      008758                        413 00103$:
                                    414 ;	src\stm8s_spi.c: 395: return  pendingbitstatus;
      008758 5B 03            [ 2]  415 	addw	sp, #3
      00875A 81               [ 4]  416 	ret
                                    417 ;	src\stm8s_spi.c: 412: void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
                                    418 ;	-----------------------------------------
                                    419 ;	 function SPI_ClearITPendingBit
                                    420 ;	-----------------------------------------
      00875B                        421 _SPI_ClearITPendingBit:
                                    422 ;	src\stm8s_spi.c: 420: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
      00875B 7B 03            [ 1]  423 	ld	a, (0x03, sp)
      00875D A4 F0            [ 1]  424 	and	a, #0xf0
      00875F 4E               [ 1]  425 	swap	a
      008760 A4 0F            [ 1]  426 	and	a, #0x0f
      008762 02               [ 1]  427 	rlwa	x
      008763 A6 01            [ 1]  428 	ld	a, #0x01
      008765 01               [ 1]  429 	rrwa	x
      008766 4D               [ 1]  430 	tnz	a
      008767 27 06            [ 1]  431 	jreq	00104$
      008769                        432 00103$:
      008769 02               [ 1]  433 	rlwa	x
      00876A 48               [ 1]  434 	sll	a
      00876B 01               [ 1]  435 	rrwa	x
      00876C 4A               [ 1]  436 	dec	a
      00876D 26 FA            [ 1]  437 	jrne	00103$
      00876F                        438 00104$:
                                    439 ;	src\stm8s_spi.c: 422: SPI->SR = (uint8_t)(~itpos);
      00876F 9E               [ 1]  440 	ld	a, xh
      008770 43               [ 1]  441 	cpl	a
      008771 AE 52 03         [ 2]  442 	ldw	x, #0x5203
      008774 F7               [ 1]  443 	ld	(x), a
      008775 81               [ 4]  444 	ret
                                    445 	.area CODE
                                    446 	.area INITIALIZER
                                    447 	.area CABS (ABS)

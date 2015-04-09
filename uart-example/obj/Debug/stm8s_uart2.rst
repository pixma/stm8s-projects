                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Fri Apr 03 17:16:17 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8s_uart2
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _CLK_GetClockFreq
                                     13 	.globl _UART2_DeInit
                                     14 	.globl _UART2_Init
                                     15 	.globl _UART2_Cmd
                                     16 	.globl _UART2_ITConfig
                                     17 	.globl _UART2_IrDAConfig
                                     18 	.globl _UART2_IrDACmd
                                     19 	.globl _UART2_LINBreakDetectionConfig
                                     20 	.globl _UART2_LINConfig
                                     21 	.globl _UART2_LINCmd
                                     22 	.globl _UART2_SmartCardCmd
                                     23 	.globl _UART2_SmartCardNACKCmd
                                     24 	.globl _UART2_WakeUpConfig
                                     25 	.globl _UART2_ReceiverWakeUpCmd
                                     26 	.globl _UART2_ReceiveData8
                                     27 	.globl _UART2_ReceiveData9
                                     28 	.globl _UART2_SendData8
                                     29 	.globl _UART2_SendData9
                                     30 	.globl _UART2_SendBreak
                                     31 	.globl _UART2_SetAddress
                                     32 	.globl _UART2_SetGuardTime
                                     33 	.globl _UART2_SetPrescaler
                                     34 	.globl _UART2_GetFlagStatus
                                     35 	.globl _UART2_ClearFlag
                                     36 	.globl _UART2_GetITStatus
                                     37 	.globl _UART2_ClearITPendingBit
                                     38 ;--------------------------------------------------------
                                     39 ; ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DATA
                                     42 ;--------------------------------------------------------
                                     43 ; ram data
                                     44 ;--------------------------------------------------------
                                     45 	.area INITIALIZED
                                     46 ;--------------------------------------------------------
                                     47 ; absolute external ram data
                                     48 ;--------------------------------------------------------
                                     49 	.area DABS (ABS)
                                     50 ;--------------------------------------------------------
                                     51 ; global & static initialisations
                                     52 ;--------------------------------------------------------
                                     53 	.area HOME
                                     54 	.area GSINIT
                                     55 	.area GSFINAL
                                     56 	.area GSINIT
                                     57 ;--------------------------------------------------------
                                     58 ; Home
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area HOME
                                     62 ;--------------------------------------------------------
                                     63 ; code
                                     64 ;--------------------------------------------------------
                                     65 	.area CODE
                                     66 ;	stm8s_uart2.c: 53: void UART2_DeInit(void)
                                     67 ;	-----------------------------------------
                                     68 ;	 function UART2_DeInit
                                     69 ;	-----------------------------------------
      008584                         70 _UART2_DeInit:
                                     71 ;	stm8s_uart2.c: 57: (void) UART2->SR;
      008584 AE 52 40         [ 2]   72 	ldw	x, #0x5240
      008587 F6               [ 1]   73 	ld	a, (x)
                                     74 ;	stm8s_uart2.c: 58: (void)UART2->DR;
      008588 AE 52 41         [ 2]   75 	ldw	x, #0x5241
      00858B F6               [ 1]   76 	ld	a, (x)
                                     77 ;	stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      00858C AE 52 43         [ 2]   78 	ldw	x, #0x5243
      00858F 7F               [ 1]   79 	clr	(x)
                                     80 ;	stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      008590 AE 52 42         [ 2]   81 	ldw	x, #0x5242
      008593 7F               [ 1]   82 	clr	(x)
                                     83 ;	stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      008594 AE 52 44         [ 2]   84 	ldw	x, #0x5244
      008597 7F               [ 1]   85 	clr	(x)
                                     86 ;	stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      008598 AE 52 45         [ 2]   87 	ldw	x, #0x5245
      00859B 7F               [ 1]   88 	clr	(x)
                                     89 ;	stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      00859C AE 52 46         [ 2]   90 	ldw	x, #0x5246
      00859F 7F               [ 1]   91 	clr	(x)
                                     92 ;	stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      0085A0 AE 52 47         [ 2]   93 	ldw	x, #0x5247
      0085A3 7F               [ 1]   94 	clr	(x)
                                     95 ;	stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      0085A4 AE 52 48         [ 2]   96 	ldw	x, #0x5248
      0085A7 7F               [ 1]   97 	clr	(x)
                                     98 ;	stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      0085A8 AE 52 49         [ 2]   99 	ldw	x, #0x5249
      0085AB 7F               [ 1]  100 	clr	(x)
      0085AC 81               [ 4]  101 	ret
                                    102 ;	stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      0085AD                        106 _UART2_Init:
      0085AD 52 23            [ 2]  107 	sub	sp, #35
                                    108 ;	stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      0085AF AE 52 44         [ 2]  109 	ldw	x, #0x5244
      0085B2 F6               [ 1]  110 	ld	a, (x)
      0085B3 A4 EF            [ 1]  111 	and	a, #0xef
      0085B5 F7               [ 1]  112 	ld	(x), a
                                    113 ;	stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      0085B6 AE 52 44         [ 2]  114 	ldw	x, #0x5244
      0085B9 F6               [ 1]  115 	ld	a, (x)
      0085BA 1A 2A            [ 1]  116 	or	a, (0x2a, sp)
      0085BC AE 52 44         [ 2]  117 	ldw	x, #0x5244
      0085BF F7               [ 1]  118 	ld	(x), a
                                    119 ;	stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      0085C0 AE 52 46         [ 2]  120 	ldw	x, #0x5246
      0085C3 F6               [ 1]  121 	ld	a, (x)
      0085C4 A4 CF            [ 1]  122 	and	a, #0xcf
      0085C6 F7               [ 1]  123 	ld	(x), a
                                    124 ;	stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      0085C7 AE 52 46         [ 2]  125 	ldw	x, #0x5246
      0085CA F6               [ 1]  126 	ld	a, (x)
      0085CB 1A 2B            [ 1]  127 	or	a, (0x2b, sp)
      0085CD AE 52 46         [ 2]  128 	ldw	x, #0x5246
      0085D0 F7               [ 1]  129 	ld	(x), a
                                    130 ;	stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      0085D1 AE 52 44         [ 2]  131 	ldw	x, #0x5244
      0085D4 F6               [ 1]  132 	ld	a, (x)
      0085D5 A4 F9            [ 1]  133 	and	a, #0xf9
      0085D7 F7               [ 1]  134 	ld	(x), a
                                    135 ;	stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      0085D8 AE 52 44         [ 2]  136 	ldw	x, #0x5244
      0085DB F6               [ 1]  137 	ld	a, (x)
      0085DC 1A 2C            [ 1]  138 	or	a, (0x2c, sp)
      0085DE AE 52 44         [ 2]  139 	ldw	x, #0x5244
      0085E1 F7               [ 1]  140 	ld	(x), a
                                    141 ;	stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      0085E2 AE 52 42         [ 2]  142 	ldw	x, #0x5242
      0085E5 F6               [ 1]  143 	ld	a, (x)
      0085E6 AE 52 42         [ 2]  144 	ldw	x, #0x5242
      0085E9 7F               [ 1]  145 	clr	(x)
                                    146 ;	stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      0085EA AE 52 43         [ 2]  147 	ldw	x, #0x5243
      0085ED F6               [ 1]  148 	ld	a, (x)
      0085EE A4 0F            [ 1]  149 	and	a, #0x0f
      0085F0 F7               [ 1]  150 	ld	(x), a
                                    151 ;	stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      0085F1 AE 52 43         [ 2]  152 	ldw	x, #0x5243
      0085F4 F6               [ 1]  153 	ld	a, (x)
      0085F5 A4 F0            [ 1]  154 	and	a, #0xf0
      0085F7 F7               [ 1]  155 	ld	(x), a
                                    156 ;	stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      0085F8 CD 83 AA         [ 4]  157 	call	_CLK_GetClockFreq
      0085FB 1F 22            [ 2]  158 	ldw	(0x22, sp), x
      0085FD 1E 28            [ 2]  159 	ldw	x, (0x28, sp)
      0085FF 1F 1E            [ 2]  160 	ldw	(0x1e, sp), x
      008601 1E 26            [ 2]  161 	ldw	x, (0x26, sp)
      008603 1F 1C            [ 2]  162 	ldw	(0x1c, sp), x
      008605 A6 04            [ 1]  163 	ld	a, #0x04
      008607 4D               [ 1]  164 	tnz	a
      008608 27 0B            [ 1]  165 	jreq	00125$
      00860A                        166 00124$:
      00860A 08 1F            [ 1]  167 	sll	(0x1f, sp)
      00860C 09 1E            [ 1]  168 	rlc	(0x1e, sp)
      00860E 09 1D            [ 1]  169 	rlc	(0x1d, sp)
      008610 09 1C            [ 1]  170 	rlc	(0x1c, sp)
      008612 4A               [ 1]  171 	dec	a
      008613 26 F5            [ 1]  172 	jrne	00124$
      008615                        173 00125$:
      008615 1E 1E            [ 2]  174 	ldw	x, (0x1e, sp)
      008617 89               [ 2]  175 	pushw	x
      008618 1E 1E            [ 2]  176 	ldw	x, (0x1e, sp)
      00861A 89               [ 2]  177 	pushw	x
      00861B 1E 26            [ 2]  178 	ldw	x, (0x26, sp)
      00861D 89               [ 2]  179 	pushw	x
      00861E 90 89            [ 2]  180 	pushw	y
      008620 CD 8A C4         [ 4]  181 	call	__divulong
      008623 5B 08            [ 2]  182 	addw	sp, #8
      008625 1F 07            [ 2]  183 	ldw	(0x07, sp), x
      008627 17 05            [ 2]  184 	ldw	(0x05, sp), y
                                    185 ;	stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      008629 CD 83 AA         [ 4]  186 	call	_CLK_GetClockFreq
      00862C 9F               [ 1]  187 	ld	a, xl
      00862D 88               [ 1]  188 	push	a
      00862E 9E               [ 1]  189 	ld	a, xh
      00862F 88               [ 1]  190 	push	a
      008630 90 89            [ 2]  191 	pushw	y
      008632 4B 64            [ 1]  192 	push	#0x64
      008634 5F               [ 1]  193 	clrw	x
      008635 89               [ 2]  194 	pushw	x
      008636 4B 00            [ 1]  195 	push	#0x00
      008638 CD 8B 63         [ 4]  196 	call	__mullong
      00863B 5B 08            [ 2]  197 	addw	sp, #8
      00863D 1F 1A            [ 2]  198 	ldw	(0x1a, sp), x
      00863F 1E 1E            [ 2]  199 	ldw	x, (0x1e, sp)
      008641 89               [ 2]  200 	pushw	x
      008642 1E 1E            [ 2]  201 	ldw	x, (0x1e, sp)
      008644 89               [ 2]  202 	pushw	x
      008645 1E 1E            [ 2]  203 	ldw	x, (0x1e, sp)
      008647 89               [ 2]  204 	pushw	x
      008648 90 89            [ 2]  205 	pushw	y
      00864A CD 8A C4         [ 4]  206 	call	__divulong
      00864D 5B 08            [ 2]  207 	addw	sp, #8
      00864F 1F 03            [ 2]  208 	ldw	(0x03, sp), x
      008651 17 01            [ 2]  209 	ldw	(0x01, sp), y
                                    210 ;	stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      008653 1E 07            [ 2]  211 	ldw	x, (0x07, sp)
      008655 89               [ 2]  212 	pushw	x
      008656 1E 07            [ 2]  213 	ldw	x, (0x07, sp)
      008658 89               [ 2]  214 	pushw	x
      008659 4B 64            [ 1]  215 	push	#0x64
      00865B 5F               [ 1]  216 	clrw	x
      00865C 89               [ 2]  217 	pushw	x
      00865D 4B 00            [ 1]  218 	push	#0x00
      00865F CD 8B 63         [ 4]  219 	call	__mullong
      008662 5B 08            [ 2]  220 	addw	sp, #8
      008664 1F 16            [ 2]  221 	ldw	(0x16, sp), x
      008666 17 14            [ 2]  222 	ldw	(0x14, sp), y
      008668 1E 03            [ 2]  223 	ldw	x, (0x03, sp)
      00866A 72 F0 16         [ 2]  224 	subw	x, (0x16, sp)
      00866D 1F 12            [ 2]  225 	ldw	(0x12, sp), x
      00866F 7B 02            [ 1]  226 	ld	a, (0x02, sp)
      008671 12 15            [ 1]  227 	sbc	a, (0x15, sp)
      008673 6B 11            [ 1]  228 	ld	(0x11, sp), a
      008675 7B 01            [ 1]  229 	ld	a, (0x01, sp)
      008677 12 14            [ 1]  230 	sbc	a, (0x14, sp)
      008679 6B 10            [ 1]  231 	ld	(0x10, sp), a
      00867B 16 12            [ 2]  232 	ldw	y, (0x12, sp)
      00867D 1E 10            [ 2]  233 	ldw	x, (0x10, sp)
      00867F A6 04            [ 1]  234 	ld	a, #0x04
      008681 4D               [ 1]  235 	tnz	a
      008682 27 06            [ 1]  236 	jreq	00127$
      008684                        237 00126$:
      008684 90 58            [ 2]  238 	sllw	y
      008686 59               [ 2]  239 	rlcw	x
      008687 4A               [ 1]  240 	dec	a
      008688 26 FA            [ 1]  241 	jrne	00126$
      00868A                        242 00127$:
      00868A 4B 64            [ 1]  243 	push	#0x64
      00868C 4B 00            [ 1]  244 	push	#0x00
      00868E 4B 00            [ 1]  245 	push	#0x00
      008690 4B 00            [ 1]  246 	push	#0x00
      008692 90 89            [ 2]  247 	pushw	y
      008694 89               [ 2]  248 	pushw	x
      008695 CD 8A C4         [ 4]  249 	call	__divulong
      008698 5B 08            [ 2]  250 	addw	sp, #8
      00869A 9F               [ 1]  251 	ld	a, xl
      00869B A4 0F            [ 1]  252 	and	a, #0x0f
      00869D 6B 09            [ 1]  253 	ld	(0x09, sp), a
                                    254 ;	stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      00869F 1E 07            [ 2]  255 	ldw	x, (0x07, sp)
      0086A1 16 05            [ 2]  256 	ldw	y, (0x05, sp)
      0086A3 A6 04            [ 1]  257 	ld	a, #0x04
      0086A5 4D               [ 1]  258 	tnz	a
      0086A6 27 06            [ 1]  259 	jreq	00129$
      0086A8                        260 00128$:
      0086A8 90 54            [ 2]  261 	srlw	y
      0086AA 56               [ 2]  262 	rrcw	x
      0086AB 4A               [ 1]  263 	dec	a
      0086AC 26 FA            [ 1]  264 	jrne	00128$
      0086AE                        265 00129$:
      0086AE 9F               [ 1]  266 	ld	a, xl
      0086AF A4 F0            [ 1]  267 	and	a, #0xf0
      0086B1 97               [ 1]  268 	ld	xl, a
      0086B2 0F 0E            [ 1]  269 	clr	(0x0e, sp)
      0086B4 0F 0D            [ 1]  270 	clr	(0x0d, sp)
      0086B6 4F               [ 1]  271 	clr	a
      0086B7 9F               [ 1]  272 	ld	a, xl
                                    273 ;	stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      0086B8 1A 09            [ 1]  274 	or	a, (0x09, sp)
      0086BA AE 52 43         [ 2]  275 	ldw	x, #0x5243
      0086BD F7               [ 1]  276 	ld	(x), a
                                    277 ;	stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      0086BE 7B 08            [ 1]  278 	ld	a, (0x08, sp)
      0086C0 AE 52 42         [ 2]  279 	ldw	x, #0x5242
      0086C3 F7               [ 1]  280 	ld	(x), a
                                    281 ;	stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      0086C4 AE 52 45         [ 2]  282 	ldw	x, #0x5245
      0086C7 F6               [ 1]  283 	ld	a, (x)
      0086C8 A4 F3            [ 1]  284 	and	a, #0xf3
      0086CA F7               [ 1]  285 	ld	(x), a
                                    286 ;	stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      0086CB AE 52 46         [ 2]  287 	ldw	x, #0x5246
      0086CE F6               [ 1]  288 	ld	a, (x)
      0086CF A4 F8            [ 1]  289 	and	a, #0xf8
      0086D1 F7               [ 1]  290 	ld	(x), a
                                    291 ;	stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      0086D2 AE 52 46         [ 2]  292 	ldw	x, #0x5246
      0086D5 F6               [ 1]  293 	ld	a, (x)
      0086D6 6B 0B            [ 1]  294 	ld	(0x0b, sp), a
      0086D8 7B 2D            [ 1]  295 	ld	a, (0x2d, sp)
      0086DA A4 07            [ 1]  296 	and	a, #0x07
      0086DC 1A 0B            [ 1]  297 	or	a, (0x0b, sp)
      0086DE AE 52 46         [ 2]  298 	ldw	x, #0x5246
      0086E1 F7               [ 1]  299 	ld	(x), a
                                    300 ;	stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      0086E2 7B 2E            [ 1]  301 	ld	a, (0x2e, sp)
      0086E4 A5 04            [ 1]  302 	bcp	a, #0x04
      0086E6 27 09            [ 1]  303 	jreq	00102$
                                    304 ;	stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      0086E8 AE 52 45         [ 2]  305 	ldw	x, #0x5245
      0086EB F6               [ 1]  306 	ld	a, (x)
      0086EC AA 08            [ 1]  307 	or	a, #0x08
      0086EE F7               [ 1]  308 	ld	(x), a
      0086EF 20 07            [ 2]  309 	jra	00103$
      0086F1                        310 00102$:
                                    311 ;	stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      0086F1 AE 52 45         [ 2]  312 	ldw	x, #0x5245
      0086F4 F6               [ 1]  313 	ld	a, (x)
      0086F5 A4 F7            [ 1]  314 	and	a, #0xf7
      0086F7 F7               [ 1]  315 	ld	(x), a
      0086F8                        316 00103$:
                                    317 ;	stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      0086F8 7B 2E            [ 1]  318 	ld	a, (0x2e, sp)
      0086FA A5 08            [ 1]  319 	bcp	a, #0x08
      0086FC 27 09            [ 1]  320 	jreq	00105$
                                    321 ;	stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      0086FE AE 52 45         [ 2]  322 	ldw	x, #0x5245
      008701 F6               [ 1]  323 	ld	a, (x)
      008702 AA 04            [ 1]  324 	or	a, #0x04
      008704 F7               [ 1]  325 	ld	(x), a
      008705 20 07            [ 2]  326 	jra	00106$
      008707                        327 00105$:
                                    328 ;	stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      008707 AE 52 45         [ 2]  329 	ldw	x, #0x5245
      00870A F6               [ 1]  330 	ld	a, (x)
      00870B A4 FB            [ 1]  331 	and	a, #0xfb
      00870D F7               [ 1]  332 	ld	(x), a
      00870E                        333 00106$:
                                    334 ;	stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      00870E 7B 2D            [ 1]  335 	ld	a, (0x2d, sp)
      008710 48               [ 1]  336 	sll	a
      008711 24 09            [ 1]  337 	jrnc	00108$
                                    338 ;	stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      008713 AE 52 46         [ 2]  339 	ldw	x, #0x5246
      008716 F6               [ 1]  340 	ld	a, (x)
      008717 A4 F7            [ 1]  341 	and	a, #0xf7
      008719 F7               [ 1]  342 	ld	(x), a
      00871A 20 10            [ 2]  343 	jra	00110$
      00871C                        344 00108$:
                                    345 ;	stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      00871C AE 52 46         [ 2]  346 	ldw	x, #0x5246
      00871F F6               [ 1]  347 	ld	a, (x)
      008720 6B 0A            [ 1]  348 	ld	(0x0a, sp), a
      008722 7B 2D            [ 1]  349 	ld	a, (0x2d, sp)
      008724 A4 08            [ 1]  350 	and	a, #0x08
      008726 1A 0A            [ 1]  351 	or	a, (0x0a, sp)
      008728 AE 52 46         [ 2]  352 	ldw	x, #0x5246
      00872B F7               [ 1]  353 	ld	(x), a
      00872C                        354 00110$:
      00872C 5B 23            [ 2]  355 	addw	sp, #35
      00872E 81               [ 4]  356 	ret
                                    357 ;	stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    358 ;	-----------------------------------------
                                    359 ;	 function UART2_Cmd
                                    360 ;	-----------------------------------------
      00872F                        361 _UART2_Cmd:
                                    362 ;	stm8s_uart2.c: 183: if (NewState != DISABLE)
      00872F 0D 03            [ 1]  363 	tnz	(0x03, sp)
      008731 27 09            [ 1]  364 	jreq	00102$
                                    365 ;	stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008733 AE 52 44         [ 2]  366 	ldw	x, #0x5244
      008736 F6               [ 1]  367 	ld	a, (x)
      008737 A4 DF            [ 1]  368 	and	a, #0xdf
      008739 F7               [ 1]  369 	ld	(x), a
      00873A 20 07            [ 2]  370 	jra	00104$
      00873C                        371 00102$:
                                    372 ;	stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      00873C AE 52 44         [ 2]  373 	ldw	x, #0x5244
      00873F F6               [ 1]  374 	ld	a, (x)
      008740 AA 20            [ 1]  375 	or	a, #0x20
      008742 F7               [ 1]  376 	ld	(x), a
      008743                        377 00104$:
      008743 81               [ 4]  378 	ret
                                    379 ;	stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    380 ;	-----------------------------------------
                                    381 ;	 function UART2_ITConfig
                                    382 ;	-----------------------------------------
      008744                        383 _UART2_ITConfig:
      008744 52 06            [ 2]  384 	sub	sp, #6
                                    385 ;	stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
      008746 7B 09            [ 1]  386 	ld	a, (0x09, sp)
      008748 0F 05            [ 1]  387 	clr	(0x05, sp)
      00874A 95               [ 1]  388 	ld	xh, a
                                    389 ;	stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      00874B 7B 0A            [ 1]  390 	ld	a, (0x0a, sp)
      00874D A4 0F            [ 1]  391 	and	a, #0x0f
      00874F 97               [ 1]  392 	ld	xl, a
      008750 A6 01            [ 1]  393 	ld	a, #0x01
      008752 6B 01            [ 1]  394 	ld	(0x01, sp), a
      008754 9F               [ 1]  395 	ld	a, xl
      008755 4D               [ 1]  396 	tnz	a
      008756 27 05            [ 1]  397 	jreq	00153$
      008758                        398 00152$:
      008758 08 01            [ 1]  399 	sll	(0x01, sp)
      00875A 4A               [ 1]  400 	dec	a
      00875B 26 FB            [ 1]  401 	jrne	00152$
      00875D                        402 00153$:
                                    403 ;	stm8s_uart2.c: 227: if (uartreg == 0x01)
      00875D 9E               [ 1]  404 	ld	a, xh
      00875E A1 01            [ 1]  405 	cp	a, #0x01
      008760 26 06            [ 1]  406 	jrne	00155$
      008762 A6 01            [ 1]  407 	ld	a, #0x01
      008764 6B 04            [ 1]  408 	ld	(0x04, sp), a
      008766 20 02            [ 2]  409 	jra	00156$
      008768                        410 00155$:
      008768 0F 04            [ 1]  411 	clr	(0x04, sp)
      00876A                        412 00156$:
                                    413 ;	stm8s_uart2.c: 231: else if (uartreg == 0x02)
      00876A 9E               [ 1]  414 	ld	a, xh
      00876B A1 02            [ 1]  415 	cp	a, #0x02
      00876D 26 06            [ 1]  416 	jrne	00158$
      00876F A6 01            [ 1]  417 	ld	a, #0x01
      008771 6B 03            [ 1]  418 	ld	(0x03, sp), a
      008773 20 02            [ 2]  419 	jra	00159$
      008775                        420 00158$:
      008775 0F 03            [ 1]  421 	clr	(0x03, sp)
      008777                        422 00159$:
                                    423 ;	stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008777 9E               [ 1]  424 	ld	a, xh
      008778 A1 03            [ 1]  425 	cp	a, #0x03
      00877A 26 04            [ 1]  426 	jrne	00161$
      00877C A6 01            [ 1]  427 	ld	a, #0x01
      00877E 20 01            [ 2]  428 	jra	00162$
      008780                        429 00161$:
      008780 4F               [ 1]  430 	clr	a
      008781                        431 00162$:
                                    432 ;	stm8s_uart2.c: 224: if (NewState != DISABLE)
      008781 0D 0B            [ 1]  433 	tnz	(0x0b, sp)
      008783 27 3C            [ 1]  434 	jreq	00120$
                                    435 ;	stm8s_uart2.c: 227: if (uartreg == 0x01)
      008785 0D 04            [ 1]  436 	tnz	(0x04, sp)
      008787 27 0D            [ 1]  437 	jreq	00108$
                                    438 ;	stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      008789 AE 52 44         [ 2]  439 	ldw	x, #0x5244
      00878C F6               [ 1]  440 	ld	a, (x)
      00878D 1A 01            [ 1]  441 	or	a, (0x01, sp)
      00878F AE 52 44         [ 2]  442 	ldw	x, #0x5244
      008792 F7               [ 1]  443 	ld	(x), a
      008793 CC 88 01         [ 2]  444 	jp	00122$
      008796                        445 00108$:
                                    446 ;	stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008796 0D 03            [ 1]  447 	tnz	(0x03, sp)
      008798 27 0C            [ 1]  448 	jreq	00105$
                                    449 ;	stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      00879A AE 52 45         [ 2]  450 	ldw	x, #0x5245
      00879D F6               [ 1]  451 	ld	a, (x)
      00879E 1A 01            [ 1]  452 	or	a, (0x01, sp)
      0087A0 AE 52 45         [ 2]  453 	ldw	x, #0x5245
      0087A3 F7               [ 1]  454 	ld	(x), a
      0087A4 20 5B            [ 2]  455 	jra	00122$
      0087A6                        456 00105$:
                                    457 ;	stm8s_uart2.c: 235: else if (uartreg == 0x03)
      0087A6 4D               [ 1]  458 	tnz	a
      0087A7 27 0C            [ 1]  459 	jreq	00102$
                                    460 ;	stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      0087A9 AE 52 47         [ 2]  461 	ldw	x, #0x5247
      0087AC F6               [ 1]  462 	ld	a, (x)
      0087AD 1A 01            [ 1]  463 	or	a, (0x01, sp)
      0087AF AE 52 47         [ 2]  464 	ldw	x, #0x5247
      0087B2 F7               [ 1]  465 	ld	(x), a
      0087B3 20 4C            [ 2]  466 	jra	00122$
      0087B5                        467 00102$:
                                    468 ;	stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      0087B5 AE 52 49         [ 2]  469 	ldw	x, #0x5249
      0087B8 F6               [ 1]  470 	ld	a, (x)
      0087B9 1A 01            [ 1]  471 	or	a, (0x01, sp)
      0087BB AE 52 49         [ 2]  472 	ldw	x, #0x5249
      0087BE F7               [ 1]  473 	ld	(x), a
      0087BF 20 40            [ 2]  474 	jra	00122$
      0087C1                        475 00120$:
                                    476 ;	stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      0087C1 88               [ 1]  477 	push	a
      0087C2 7B 02            [ 1]  478 	ld	a, (0x02, sp)
      0087C4 43               [ 1]  479 	cpl	a
      0087C5 6B 03            [ 1]  480 	ld	(0x03, sp), a
      0087C7 84               [ 1]  481 	pop	a
                                    482 ;	stm8s_uart2.c: 247: if (uartreg == 0x01)
      0087C8 0D 04            [ 1]  483 	tnz	(0x04, sp)
      0087CA 27 0C            [ 1]  484 	jreq	00117$
                                    485 ;	stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      0087CC AE 52 44         [ 2]  486 	ldw	x, #0x5244
      0087CF F6               [ 1]  487 	ld	a, (x)
      0087D0 14 02            [ 1]  488 	and	a, (0x02, sp)
      0087D2 AE 52 44         [ 2]  489 	ldw	x, #0x5244
      0087D5 F7               [ 1]  490 	ld	(x), a
      0087D6 20 29            [ 2]  491 	jra	00122$
      0087D8                        492 00117$:
                                    493 ;	stm8s_uart2.c: 251: else if (uartreg == 0x02)
      0087D8 0D 03            [ 1]  494 	tnz	(0x03, sp)
      0087DA 27 0C            [ 1]  495 	jreq	00114$
                                    496 ;	stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      0087DC AE 52 45         [ 2]  497 	ldw	x, #0x5245
      0087DF F6               [ 1]  498 	ld	a, (x)
      0087E0 14 02            [ 1]  499 	and	a, (0x02, sp)
      0087E2 AE 52 45         [ 2]  500 	ldw	x, #0x5245
      0087E5 F7               [ 1]  501 	ld	(x), a
      0087E6 20 19            [ 2]  502 	jra	00122$
      0087E8                        503 00114$:
                                    504 ;	stm8s_uart2.c: 255: else if (uartreg == 0x03)
      0087E8 4D               [ 1]  505 	tnz	a
      0087E9 27 0C            [ 1]  506 	jreq	00111$
                                    507 ;	stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      0087EB AE 52 47         [ 2]  508 	ldw	x, #0x5247
      0087EE F6               [ 1]  509 	ld	a, (x)
      0087EF 14 02            [ 1]  510 	and	a, (0x02, sp)
      0087F1 AE 52 47         [ 2]  511 	ldw	x, #0x5247
      0087F4 F7               [ 1]  512 	ld	(x), a
      0087F5 20 0A            [ 2]  513 	jra	00122$
      0087F7                        514 00111$:
                                    515 ;	stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      0087F7 AE 52 49         [ 2]  516 	ldw	x, #0x5249
      0087FA F6               [ 1]  517 	ld	a, (x)
      0087FB 14 02            [ 1]  518 	and	a, (0x02, sp)
      0087FD AE 52 49         [ 2]  519 	ldw	x, #0x5249
      008800 F7               [ 1]  520 	ld	(x), a
      008801                        521 00122$:
      008801 5B 06            [ 2]  522 	addw	sp, #6
      008803 81               [ 4]  523 	ret
                                    524 ;	stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    525 ;	-----------------------------------------
                                    526 ;	 function UART2_IrDAConfig
                                    527 ;	-----------------------------------------
      008804                        528 _UART2_IrDAConfig:
                                    529 ;	stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      008804 0D 03            [ 1]  530 	tnz	(0x03, sp)
      008806 27 09            [ 1]  531 	jreq	00102$
                                    532 ;	stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      008808 AE 52 48         [ 2]  533 	ldw	x, #0x5248
      00880B F6               [ 1]  534 	ld	a, (x)
      00880C AA 04            [ 1]  535 	or	a, #0x04
      00880E F7               [ 1]  536 	ld	(x), a
      00880F 20 07            [ 2]  537 	jra	00104$
      008811                        538 00102$:
                                    539 ;	stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      008811 AE 52 48         [ 2]  540 	ldw	x, #0x5248
      008814 F6               [ 1]  541 	ld	a, (x)
      008815 A4 FB            [ 1]  542 	and	a, #0xfb
      008817 F7               [ 1]  543 	ld	(x), a
      008818                        544 00104$:
      008818 81               [ 4]  545 	ret
                                    546 ;	stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    547 ;	-----------------------------------------
                                    548 ;	 function UART2_IrDACmd
                                    549 ;	-----------------------------------------
      008819                        550 _UART2_IrDACmd:
                                    551 ;	stm8s_uart2.c: 297: if (NewState != DISABLE)
      008819 0D 03            [ 1]  552 	tnz	(0x03, sp)
      00881B 27 09            [ 1]  553 	jreq	00102$
                                    554 ;	stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      00881D AE 52 48         [ 2]  555 	ldw	x, #0x5248
      008820 F6               [ 1]  556 	ld	a, (x)
      008821 AA 02            [ 1]  557 	or	a, #0x02
      008823 F7               [ 1]  558 	ld	(x), a
      008824 20 07            [ 2]  559 	jra	00104$
      008826                        560 00102$:
                                    561 ;	stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      008826 AE 52 48         [ 2]  562 	ldw	x, #0x5248
      008829 F6               [ 1]  563 	ld	a, (x)
      00882A A4 FD            [ 1]  564 	and	a, #0xfd
      00882C F7               [ 1]  565 	ld	(x), a
      00882D                        566 00104$:
      00882D 81               [ 4]  567 	ret
                                    568 ;	stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    569 ;	-----------------------------------------
                                    570 ;	 function UART2_LINBreakDetectionConfig
                                    571 ;	-----------------------------------------
      00882E                        572 _UART2_LINBreakDetectionConfig:
                                    573 ;	stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      00882E 0D 03            [ 1]  574 	tnz	(0x03, sp)
      008830 27 09            [ 1]  575 	jreq	00102$
                                    576 ;	stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      008832 AE 52 47         [ 2]  577 	ldw	x, #0x5247
      008835 F6               [ 1]  578 	ld	a, (x)
      008836 AA 20            [ 1]  579 	or	a, #0x20
      008838 F7               [ 1]  580 	ld	(x), a
      008839 20 07            [ 2]  581 	jra	00104$
      00883B                        582 00102$:
                                    583 ;	stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      00883B AE 52 47         [ 2]  584 	ldw	x, #0x5247
      00883E F6               [ 1]  585 	ld	a, (x)
      00883F A4 DF            [ 1]  586 	and	a, #0xdf
      008841 F7               [ 1]  587 	ld	(x), a
      008842                        588 00104$:
      008842 81               [ 4]  589 	ret
                                    590 ;	stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    591 ;	-----------------------------------------
                                    592 ;	 function UART2_LINConfig
                                    593 ;	-----------------------------------------
      008843                        594 _UART2_LINConfig:
                                    595 ;	stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      008843 0D 03            [ 1]  596 	tnz	(0x03, sp)
      008845 27 09            [ 1]  597 	jreq	00102$
                                    598 ;	stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008847 AE 52 49         [ 2]  599 	ldw	x, #0x5249
      00884A F6               [ 1]  600 	ld	a, (x)
      00884B AA 20            [ 1]  601 	or	a, #0x20
      00884D F7               [ 1]  602 	ld	(x), a
      00884E 20 07            [ 2]  603 	jra	00103$
      008850                        604 00102$:
                                    605 ;	stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      008850 AE 52 49         [ 2]  606 	ldw	x, #0x5249
      008853 F6               [ 1]  607 	ld	a, (x)
      008854 A4 DF            [ 1]  608 	and	a, #0xdf
      008856 F7               [ 1]  609 	ld	(x), a
      008857                        610 00103$:
                                    611 ;	stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      008857 0D 04            [ 1]  612 	tnz	(0x04, sp)
      008859 27 09            [ 1]  613 	jreq	00105$
                                    614 ;	stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      00885B AE 52 49         [ 2]  615 	ldw	x, #0x5249
      00885E F6               [ 1]  616 	ld	a, (x)
      00885F AA 10            [ 1]  617 	or	a, #0x10
      008861 F7               [ 1]  618 	ld	(x), a
      008862 20 07            [ 2]  619 	jra	00106$
      008864                        620 00105$:
                                    621 ;	stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      008864 AE 52 49         [ 2]  622 	ldw	x, #0x5249
      008867 F6               [ 1]  623 	ld	a, (x)
      008868 A4 EF            [ 1]  624 	and	a, #0xef
      00886A F7               [ 1]  625 	ld	(x), a
      00886B                        626 00106$:
                                    627 ;	stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      00886B 0D 05            [ 1]  628 	tnz	(0x05, sp)
      00886D 27 09            [ 1]  629 	jreq	00108$
                                    630 ;	stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      00886F AE 52 49         [ 2]  631 	ldw	x, #0x5249
      008872 F6               [ 1]  632 	ld	a, (x)
      008873 AA 80            [ 1]  633 	or	a, #0x80
      008875 F7               [ 1]  634 	ld	(x), a
      008876 20 04            [ 2]  635 	jra	00110$
      008878                        636 00108$:
                                    637 ;	stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      008878 72 17 52 49      [ 1]  638 	bres	0x5249, #7
      00887C                        639 00110$:
      00887C 81               [ 4]  640 	ret
                                    641 ;	stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    642 ;	-----------------------------------------
                                    643 ;	 function UART2_LINCmd
                                    644 ;	-----------------------------------------
      00887D                        645 _UART2_LINCmd:
                                    646 ;	stm8s_uart2.c: 388: if (NewState != DISABLE)
      00887D 0D 03            [ 1]  647 	tnz	(0x03, sp)
      00887F 27 09            [ 1]  648 	jreq	00102$
                                    649 ;	stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      008881 AE 52 46         [ 2]  650 	ldw	x, #0x5246
      008884 F6               [ 1]  651 	ld	a, (x)
      008885 AA 40            [ 1]  652 	or	a, #0x40
      008887 F7               [ 1]  653 	ld	(x), a
      008888 20 07            [ 2]  654 	jra	00104$
      00888A                        655 00102$:
                                    656 ;	stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      00888A AE 52 46         [ 2]  657 	ldw	x, #0x5246
      00888D F6               [ 1]  658 	ld	a, (x)
      00888E A4 BF            [ 1]  659 	and	a, #0xbf
      008890 F7               [ 1]  660 	ld	(x), a
      008891                        661 00104$:
      008891 81               [ 4]  662 	ret
                                    663 ;	stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    664 ;	-----------------------------------------
                                    665 ;	 function UART2_SmartCardCmd
                                    666 ;	-----------------------------------------
      008892                        667 _UART2_SmartCardCmd:
                                    668 ;	stm8s_uart2.c: 411: if (NewState != DISABLE)
      008892 0D 03            [ 1]  669 	tnz	(0x03, sp)
      008894 27 09            [ 1]  670 	jreq	00102$
                                    671 ;	stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      008896 AE 52 48         [ 2]  672 	ldw	x, #0x5248
      008899 F6               [ 1]  673 	ld	a, (x)
      00889A AA 20            [ 1]  674 	or	a, #0x20
      00889C F7               [ 1]  675 	ld	(x), a
      00889D 20 07            [ 2]  676 	jra	00104$
      00889F                        677 00102$:
                                    678 ;	stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      00889F AE 52 48         [ 2]  679 	ldw	x, #0x5248
      0088A2 F6               [ 1]  680 	ld	a, (x)
      0088A3 A4 DF            [ 1]  681 	and	a, #0xdf
      0088A5 F7               [ 1]  682 	ld	(x), a
      0088A6                        683 00104$:
      0088A6 81               [ 4]  684 	ret
                                    685 ;	stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    686 ;	-----------------------------------------
                                    687 ;	 function UART2_SmartCardNACKCmd
                                    688 ;	-----------------------------------------
      0088A7                        689 _UART2_SmartCardNACKCmd:
                                    690 ;	stm8s_uart2.c: 434: if (NewState != DISABLE)
      0088A7 0D 03            [ 1]  691 	tnz	(0x03, sp)
      0088A9 27 09            [ 1]  692 	jreq	00102$
                                    693 ;	stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      0088AB AE 52 48         [ 2]  694 	ldw	x, #0x5248
      0088AE F6               [ 1]  695 	ld	a, (x)
      0088AF AA 10            [ 1]  696 	or	a, #0x10
      0088B1 F7               [ 1]  697 	ld	(x), a
      0088B2 20 07            [ 2]  698 	jra	00104$
      0088B4                        699 00102$:
                                    700 ;	stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      0088B4 AE 52 48         [ 2]  701 	ldw	x, #0x5248
      0088B7 F6               [ 1]  702 	ld	a, (x)
      0088B8 A4 EF            [ 1]  703 	and	a, #0xef
      0088BA F7               [ 1]  704 	ld	(x), a
      0088BB                        705 00104$:
      0088BB 81               [ 4]  706 	ret
                                    707 ;	stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    708 ;	-----------------------------------------
                                    709 ;	 function UART2_WakeUpConfig
                                    710 ;	-----------------------------------------
      0088BC                        711 _UART2_WakeUpConfig:
                                    712 ;	stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      0088BC AE 52 44         [ 2]  713 	ldw	x, #0x5244
      0088BF F6               [ 1]  714 	ld	a, (x)
      0088C0 A4 F7            [ 1]  715 	and	a, #0xf7
      0088C2 F7               [ 1]  716 	ld	(x), a
                                    717 ;	stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      0088C3 AE 52 44         [ 2]  718 	ldw	x, #0x5244
      0088C6 F6               [ 1]  719 	ld	a, (x)
      0088C7 1A 03            [ 1]  720 	or	a, (0x03, sp)
      0088C9 AE 52 44         [ 2]  721 	ldw	x, #0x5244
      0088CC F7               [ 1]  722 	ld	(x), a
      0088CD 81               [ 4]  723 	ret
                                    724 ;	stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    725 ;	-----------------------------------------
                                    726 ;	 function UART2_ReceiverWakeUpCmd
                                    727 ;	-----------------------------------------
      0088CE                        728 _UART2_ReceiverWakeUpCmd:
                                    729 ;	stm8s_uart2.c: 470: if (NewState != DISABLE)
      0088CE 0D 03            [ 1]  730 	tnz	(0x03, sp)
      0088D0 27 09            [ 1]  731 	jreq	00102$
                                    732 ;	stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      0088D2 AE 52 45         [ 2]  733 	ldw	x, #0x5245
      0088D5 F6               [ 1]  734 	ld	a, (x)
      0088D6 AA 02            [ 1]  735 	or	a, #0x02
      0088D8 F7               [ 1]  736 	ld	(x), a
      0088D9 20 07            [ 2]  737 	jra	00104$
      0088DB                        738 00102$:
                                    739 ;	stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      0088DB AE 52 45         [ 2]  740 	ldw	x, #0x5245
      0088DE F6               [ 1]  741 	ld	a, (x)
      0088DF A4 FD            [ 1]  742 	and	a, #0xfd
      0088E1 F7               [ 1]  743 	ld	(x), a
      0088E2                        744 00104$:
      0088E2 81               [ 4]  745 	ret
                                    746 ;	stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                    747 ;	-----------------------------------------
                                    748 ;	 function UART2_ReceiveData8
                                    749 ;	-----------------------------------------
      0088E3                        750 _UART2_ReceiveData8:
                                    751 ;	stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      0088E3 AE 52 41         [ 2]  752 	ldw	x, #0x5241
      0088E6 F6               [ 1]  753 	ld	a, (x)
      0088E7 81               [ 4]  754 	ret
                                    755 ;	stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                    756 ;	-----------------------------------------
                                    757 ;	 function UART2_ReceiveData9
                                    758 ;	-----------------------------------------
      0088E8                        759 _UART2_ReceiveData9:
      0088E8 52 04            [ 2]  760 	sub	sp, #4
                                    761 ;	stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      0088EA AE 52 44         [ 2]  762 	ldw	x, #0x5244
      0088ED F6               [ 1]  763 	ld	a, (x)
      0088EE 0F 03            [ 1]  764 	clr	(0x03, sp)
      0088F0 A4 80            [ 1]  765 	and	a, #0x80
      0088F2 97               [ 1]  766 	ld	xl, a
      0088F3 4F               [ 1]  767 	clr	a
      0088F4 95               [ 1]  768 	ld	xh, a
      0088F5 58               [ 2]  769 	sllw	x
      0088F6 1F 01            [ 2]  770 	ldw	(0x01, sp), x
                                    771 ;	stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      0088F8 AE 52 41         [ 2]  772 	ldw	x, #0x5241
      0088FB F6               [ 1]  773 	ld	a, (x)
      0088FC 5F               [ 1]  774 	clrw	x
      0088FD 97               [ 1]  775 	ld	xl, a
      0088FE 1A 02            [ 1]  776 	or	a, (0x02, sp)
      008900 97               [ 1]  777 	ld	xl, a
      008901 9E               [ 1]  778 	ld	a, xh
      008902 1A 01            [ 1]  779 	or	a, (0x01, sp)
      008904 A4 01            [ 1]  780 	and	a, #0x01
      008906 95               [ 1]  781 	ld	xh, a
      008907 5B 04            [ 2]  782 	addw	sp, #4
      008909 81               [ 4]  783 	ret
                                    784 ;	stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                    785 ;	-----------------------------------------
                                    786 ;	 function UART2_SendData8
                                    787 ;	-----------------------------------------
      00890A                        788 _UART2_SendData8:
                                    789 ;	stm8s_uart2.c: 514: UART2->DR = Data;
      00890A AE 52 41         [ 2]  790 	ldw	x, #0x5241
      00890D 7B 03            [ 1]  791 	ld	a, (0x03, sp)
      00890F F7               [ 1]  792 	ld	(x), a
      008910 81               [ 4]  793 	ret
                                    794 ;	stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                    795 ;	-----------------------------------------
                                    796 ;	 function UART2_SendData9
                                    797 ;	-----------------------------------------
      008911                        798 _UART2_SendData9:
      008911 88               [ 1]  799 	push	a
                                    800 ;	stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      008912 AE 52 44         [ 2]  801 	ldw	x, #0x5244
      008915 F6               [ 1]  802 	ld	a, (x)
      008916 A4 BF            [ 1]  803 	and	a, #0xbf
      008918 F7               [ 1]  804 	ld	(x), a
                                    805 ;	stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      008919 AE 52 44         [ 2]  806 	ldw	x, #0x5244
      00891C F6               [ 1]  807 	ld	a, (x)
      00891D 6B 01            [ 1]  808 	ld	(0x01, sp), a
      00891F 1E 04            [ 2]  809 	ldw	x, (0x04, sp)
      008921 54               [ 2]  810 	srlw	x
      008922 54               [ 2]  811 	srlw	x
      008923 9F               [ 1]  812 	ld	a, xl
      008924 A4 40            [ 1]  813 	and	a, #0x40
      008926 1A 01            [ 1]  814 	or	a, (0x01, sp)
      008928 AE 52 44         [ 2]  815 	ldw	x, #0x5244
      00892B F7               [ 1]  816 	ld	(x), a
                                    817 ;	stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      00892C 7B 05            [ 1]  818 	ld	a, (0x05, sp)
      00892E AE 52 41         [ 2]  819 	ldw	x, #0x5241
      008931 F7               [ 1]  820 	ld	(x), a
      008932 84               [ 1]  821 	pop	a
      008933 81               [ 4]  822 	ret
                                    823 ;	stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                    824 ;	-----------------------------------------
                                    825 ;	 function UART2_SendBreak
                                    826 ;	-----------------------------------------
      008934                        827 _UART2_SendBreak:
                                    828 ;	stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      008934 72 10 52 45      [ 1]  829 	bset	0x5245, #0
      008938 81               [ 4]  830 	ret
                                    831 ;	stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                    832 ;	-----------------------------------------
                                    833 ;	 function UART2_SetAddress
                                    834 ;	-----------------------------------------
      008939                        835 _UART2_SetAddress:
                                    836 ;	stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      008939 AE 52 47         [ 2]  837 	ldw	x, #0x5247
      00893C F6               [ 1]  838 	ld	a, (x)
      00893D A4 F0            [ 1]  839 	and	a, #0xf0
      00893F F7               [ 1]  840 	ld	(x), a
                                    841 ;	stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      008940 AE 52 47         [ 2]  842 	ldw	x, #0x5247
      008943 F6               [ 1]  843 	ld	a, (x)
      008944 1A 03            [ 1]  844 	or	a, (0x03, sp)
      008946 AE 52 47         [ 2]  845 	ldw	x, #0x5247
      008949 F7               [ 1]  846 	ld	(x), a
      00894A 81               [ 4]  847 	ret
                                    848 ;	stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                    849 ;	-----------------------------------------
                                    850 ;	 function UART2_SetGuardTime
                                    851 ;	-----------------------------------------
      00894B                        852 _UART2_SetGuardTime:
                                    853 ;	stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      00894B AE 52 4A         [ 2]  854 	ldw	x, #0x524a
      00894E 7B 03            [ 1]  855 	ld	a, (0x03, sp)
      008950 F7               [ 1]  856 	ld	(x), a
      008951 81               [ 4]  857 	ret
                                    858 ;	stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                    859 ;	-----------------------------------------
                                    860 ;	 function UART2_SetPrescaler
                                    861 ;	-----------------------------------------
      008952                        862 _UART2_SetPrescaler:
                                    863 ;	stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      008952 AE 52 4B         [ 2]  864 	ldw	x, #0x524b
      008955 7B 03            [ 1]  865 	ld	a, (0x03, sp)
      008957 F7               [ 1]  866 	ld	(x), a
      008958 81               [ 4]  867 	ret
                                    868 ;	stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                    869 ;	-----------------------------------------
                                    870 ;	 function UART2_GetFlagStatus
                                    871 ;	-----------------------------------------
      008959                        872 _UART2_GetFlagStatus:
      008959 88               [ 1]  873 	push	a
                                    874 ;	stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00895A 7B 05            [ 1]  875 	ld	a, (0x05, sp)
      00895C 6B 01            [ 1]  876 	ld	(0x01, sp), a
                                    877 ;	stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      00895E 1E 04            [ 2]  878 	ldw	x, (0x04, sp)
      008960 A3 02 10         [ 2]  879 	cpw	x, #0x0210
      008963 26 10            [ 1]  880 	jrne	00121$
                                    881 ;	stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008965 AE 52 47         [ 2]  882 	ldw	x, #0x5247
      008968 F6               [ 1]  883 	ld	a, (x)
      008969 14 01            [ 1]  884 	and	a, (0x01, sp)
      00896B 4D               [ 1]  885 	tnz	a
      00896C 27 04            [ 1]  886 	jreq	00102$
                                    887 ;	stm8s_uart2.c: 619: status = SET;
      00896E A6 01            [ 1]  888 	ld	a, #0x01
      008970 20 46            [ 2]  889 	jra	00122$
      008972                        890 00102$:
                                    891 ;	stm8s_uart2.c: 624: status = RESET;
      008972 4F               [ 1]  892 	clr	a
      008973 20 43            [ 2]  893 	jra	00122$
      008975                        894 00121$:
                                    895 ;	stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      008975 1E 04            [ 2]  896 	ldw	x, (0x04, sp)
      008977 A3 01 01         [ 2]  897 	cpw	x, #0x0101
      00897A 26 10            [ 1]  898 	jrne	00118$
                                    899 ;	stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00897C AE 52 45         [ 2]  900 	ldw	x, #0x5245
      00897F F6               [ 1]  901 	ld	a, (x)
      008980 14 01            [ 1]  902 	and	a, (0x01, sp)
      008982 4D               [ 1]  903 	tnz	a
      008983 27 04            [ 1]  904 	jreq	00105$
                                    905 ;	stm8s_uart2.c: 632: status = SET;
      008985 A6 01            [ 1]  906 	ld	a, #0x01
      008987 20 2F            [ 2]  907 	jra	00122$
      008989                        908 00105$:
                                    909 ;	stm8s_uart2.c: 637: status = RESET;
      008989 4F               [ 1]  910 	clr	a
      00898A 20 2C            [ 2]  911 	jra	00122$
      00898C                        912 00118$:
                                    913 ;	stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      00898C 1E 04            [ 2]  914 	ldw	x, (0x04, sp)
      00898E A3 03 02         [ 2]  915 	cpw	x, #0x0302
      008991 27 07            [ 1]  916 	jreq	00113$
      008993 1E 04            [ 2]  917 	ldw	x, (0x04, sp)
      008995 A3 03 01         [ 2]  918 	cpw	x, #0x0301
      008998 26 10            [ 1]  919 	jrne	00114$
      00899A                        920 00113$:
                                    921 ;	stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      00899A AE 52 49         [ 2]  922 	ldw	x, #0x5249
      00899D F6               [ 1]  923 	ld	a, (x)
      00899E 14 01            [ 1]  924 	and	a, (0x01, sp)
      0089A0 4D               [ 1]  925 	tnz	a
      0089A1 27 04            [ 1]  926 	jreq	00108$
                                    927 ;	stm8s_uart2.c: 645: status = SET;
      0089A3 A6 01            [ 1]  928 	ld	a, #0x01
      0089A5 20 11            [ 2]  929 	jra	00122$
      0089A7                        930 00108$:
                                    931 ;	stm8s_uart2.c: 650: status = RESET;
      0089A7 4F               [ 1]  932 	clr	a
      0089A8 20 0E            [ 2]  933 	jra	00122$
      0089AA                        934 00114$:
                                    935 ;	stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      0089AA AE 52 40         [ 2]  936 	ldw	x, #0x5240
      0089AD F6               [ 1]  937 	ld	a, (x)
      0089AE 14 01            [ 1]  938 	and	a, (0x01, sp)
      0089B0 4D               [ 1]  939 	tnz	a
      0089B1 27 04            [ 1]  940 	jreq	00111$
                                    941 ;	stm8s_uart2.c: 658: status = SET;
      0089B3 A6 01            [ 1]  942 	ld	a, #0x01
      0089B5 20 01            [ 2]  943 	jra	00122$
      0089B7                        944 00111$:
                                    945 ;	stm8s_uart2.c: 663: status = RESET;
      0089B7 4F               [ 1]  946 	clr	a
      0089B8                        947 00122$:
                                    948 ;	stm8s_uart2.c: 668: return  status;
      0089B8 5B 01            [ 2]  949 	addw	sp, #1
      0089BA 81               [ 4]  950 	ret
                                    951 ;	stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                    952 ;	-----------------------------------------
                                    953 ;	 function UART2_ClearFlag
                                    954 ;	-----------------------------------------
      0089BB                        955 _UART2_ClearFlag:
                                    956 ;	stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      0089BB 1E 03            [ 2]  957 	ldw	x, (0x03, sp)
      0089BD A3 00 20         [ 2]  958 	cpw	x, #0x0020
      0089C0 26 08            [ 1]  959 	jrne	00108$
                                    960 ;	stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      0089C2 AE 52 40         [ 2]  961 	ldw	x, #0x5240
      0089C5 A6 DF            [ 1]  962 	ld	a, #0xdf
      0089C7 F7               [ 1]  963 	ld	(x), a
      0089C8 20 24            [ 2]  964 	jra	00110$
      0089CA                        965 00108$:
                                    966 ;	stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      0089CA 1E 03            [ 2]  967 	ldw	x, (0x03, sp)
      0089CC A3 02 10         [ 2]  968 	cpw	x, #0x0210
      0089CF 26 09            [ 1]  969 	jrne	00105$
                                    970 ;	stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      0089D1 AE 52 47         [ 2]  971 	ldw	x, #0x5247
      0089D4 F6               [ 1]  972 	ld	a, (x)
      0089D5 A4 EF            [ 1]  973 	and	a, #0xef
      0089D7 F7               [ 1]  974 	ld	(x), a
      0089D8 20 14            [ 2]  975 	jra	00110$
      0089DA                        976 00105$:
                                    977 ;	stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      0089DA 1E 03            [ 2]  978 	ldw	x, (0x03, sp)
      0089DC A3 03 02         [ 2]  979 	cpw	x, #0x0302
      0089DF 26 09            [ 1]  980 	jrne	00102$
                                    981 ;	stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      0089E1 AE 52 49         [ 2]  982 	ldw	x, #0x5249
      0089E4 F6               [ 1]  983 	ld	a, (x)
      0089E5 A4 FD            [ 1]  984 	and	a, #0xfd
      0089E7 F7               [ 1]  985 	ld	(x), a
      0089E8 20 04            [ 2]  986 	jra	00110$
      0089EA                        987 00102$:
                                    988 ;	stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      0089EA 72 11 52 49      [ 1]  989 	bres	0x5249, #0
      0089EE                        990 00110$:
      0089EE 81               [ 4]  991 	ret
                                    992 ;	stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                    993 ;	-----------------------------------------
                                    994 ;	 function UART2_GetITStatus
                                    995 ;	-----------------------------------------
      0089EF                        996 _UART2_GetITStatus:
      0089EF 52 06            [ 2]  997 	sub	sp, #6
                                    998 ;	stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      0089F1 7B 0A            [ 1]  999 	ld	a, (0x0a, sp)
      0089F3 95               [ 1] 1000 	ld	xh, a
      0089F4 A4 0F            [ 1] 1001 	and	a, #0x0f
      0089F6 97               [ 1] 1002 	ld	xl, a
      0089F7 A6 01            [ 1] 1003 	ld	a, #0x01
      0089F9 6B 03            [ 1] 1004 	ld	(0x03, sp), a
      0089FB 9F               [ 1] 1005 	ld	a, xl
      0089FC 4D               [ 1] 1006 	tnz	a
      0089FD 27 05            [ 1] 1007 	jreq	00173$
      0089FF                       1008 00172$:
      0089FF 08 03            [ 1] 1009 	sll	(0x03, sp)
      008A01 4A               [ 1] 1010 	dec	a
      008A02 26 FB            [ 1] 1011 	jrne	00172$
      008A04                       1012 00173$:
                                   1013 ;	stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      008A04 02               [ 1] 1014 	rlwa	x
      008A05 4E               [ 1] 1015 	swap	a
      008A06 A4 0F            [ 1] 1016 	and	a, #0x0f
      008A08 01               [ 1] 1017 	rrwa	x
                                   1018 ;	stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      008A09 A6 01            [ 1] 1019 	ld	a, #0x01
      008A0B 6B 02            [ 1] 1020 	ld	(0x02, sp), a
      008A0D 9E               [ 1] 1021 	ld	a, xh
      008A0E 4D               [ 1] 1022 	tnz	a
      008A0F 27 05            [ 1] 1023 	jreq	00175$
      008A11                       1024 00174$:
      008A11 08 02            [ 1] 1025 	sll	(0x02, sp)
      008A13 4A               [ 1] 1026 	dec	a
      008A14 26 FB            [ 1] 1027 	jrne	00174$
      008A16                       1028 00175$:
                                   1029 ;	stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      008A16 1E 09            [ 2] 1030 	ldw	x, (0x09, sp)
      008A18 A3 01 00         [ 2] 1031 	cpw	x, #0x0100
      008A1B 26 1D            [ 1] 1032 	jrne	00124$
                                   1033 ;	stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      008A1D AE 52 44         [ 2] 1034 	ldw	x, #0x5244
      008A20 F6               [ 1] 1035 	ld	a, (x)
      008A21 14 02            [ 1] 1036 	and	a, (0x02, sp)
      008A23 6B 06            [ 1] 1037 	ld	(0x06, sp), a
                                   1038 ;	stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008A25 AE 52 40         [ 2] 1039 	ldw	x, #0x5240
      008A28 F6               [ 1] 1040 	ld	a, (x)
      008A29 14 03            [ 1] 1041 	and	a, (0x03, sp)
      008A2B 4D               [ 1] 1042 	tnz	a
      008A2C 27 09            [ 1] 1043 	jreq	00102$
      008A2E 0D 06            [ 1] 1044 	tnz	(0x06, sp)
      008A30 27 05            [ 1] 1045 	jreq	00102$
                                   1046 ;	stm8s_uart2.c: 766: pendingbitstatus = SET;
      008A32 A6 01            [ 1] 1047 	ld	a, #0x01
      008A34 CC 8A 9A         [ 2] 1048 	jp	00125$
      008A37                       1049 00102$:
                                   1050 ;	stm8s_uart2.c: 771: pendingbitstatus = RESET;
      008A37 4F               [ 1] 1051 	clr	a
      008A38 20 60            [ 2] 1052 	jra	00125$
      008A3A                       1053 00124$:
                                   1054 ;	stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      008A3A 1E 09            [ 2] 1055 	ldw	x, (0x09, sp)
      008A3C A3 03 46         [ 2] 1056 	cpw	x, #0x0346
      008A3F 26 1C            [ 1] 1057 	jrne	00121$
                                   1058 ;	stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      008A41 AE 52 47         [ 2] 1059 	ldw	x, #0x5247
      008A44 F6               [ 1] 1060 	ld	a, (x)
      008A45 14 02            [ 1] 1061 	and	a, (0x02, sp)
      008A47 6B 05            [ 1] 1062 	ld	(0x05, sp), a
                                   1063 ;	stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      008A49 AE 52 47         [ 2] 1064 	ldw	x, #0x5247
      008A4C F6               [ 1] 1065 	ld	a, (x)
      008A4D 14 03            [ 1] 1066 	and	a, (0x03, sp)
      008A4F 4D               [ 1] 1067 	tnz	a
      008A50 27 08            [ 1] 1068 	jreq	00106$
      008A52 0D 05            [ 1] 1069 	tnz	(0x05, sp)
      008A54 27 04            [ 1] 1070 	jreq	00106$
                                   1071 ;	stm8s_uart2.c: 782: pendingbitstatus = SET;
      008A56 A6 01            [ 1] 1072 	ld	a, #0x01
      008A58 20 40            [ 2] 1073 	jra	00125$
      008A5A                       1074 00106$:
                                   1075 ;	stm8s_uart2.c: 787: pendingbitstatus = RESET;
      008A5A 4F               [ 1] 1076 	clr	a
      008A5B 20 3D            [ 2] 1077 	jra	00125$
      008A5D                       1078 00121$:
                                   1079 ;	stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      008A5D 1E 09            [ 2] 1080 	ldw	x, (0x09, sp)
      008A5F A3 04 12         [ 2] 1081 	cpw	x, #0x0412
      008A62 26 1C            [ 1] 1082 	jrne	00118$
                                   1083 ;	stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      008A64 AE 52 49         [ 2] 1084 	ldw	x, #0x5249
      008A67 F6               [ 1] 1085 	ld	a, (x)
      008A68 14 02            [ 1] 1086 	and	a, (0x02, sp)
      008A6A 6B 01            [ 1] 1087 	ld	(0x01, sp), a
                                   1088 ;	stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      008A6C AE 52 49         [ 2] 1089 	ldw	x, #0x5249
      008A6F F6               [ 1] 1090 	ld	a, (x)
      008A70 14 03            [ 1] 1091 	and	a, (0x03, sp)
      008A72 4D               [ 1] 1092 	tnz	a
      008A73 27 08            [ 1] 1093 	jreq	00110$
      008A75 0D 01            [ 1] 1094 	tnz	(0x01, sp)
      008A77 27 04            [ 1] 1095 	jreq	00110$
                                   1096 ;	stm8s_uart2.c: 798: pendingbitstatus = SET;
      008A79 A6 01            [ 1] 1097 	ld	a, #0x01
      008A7B 20 1D            [ 2] 1098 	jra	00125$
      008A7D                       1099 00110$:
                                   1100 ;	stm8s_uart2.c: 803: pendingbitstatus = RESET;
      008A7D 4F               [ 1] 1101 	clr	a
      008A7E 20 1A            [ 2] 1102 	jra	00125$
      008A80                       1103 00118$:
                                   1104 ;	stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      008A80 AE 52 45         [ 2] 1105 	ldw	x, #0x5245
      008A83 F6               [ 1] 1106 	ld	a, (x)
      008A84 14 02            [ 1] 1107 	and	a, (0x02, sp)
      008A86 6B 04            [ 1] 1108 	ld	(0x04, sp), a
                                   1109 ;	stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      008A88 AE 52 40         [ 2] 1110 	ldw	x, #0x5240
      008A8B F6               [ 1] 1111 	ld	a, (x)
      008A8C 14 03            [ 1] 1112 	and	a, (0x03, sp)
      008A8E 4D               [ 1] 1113 	tnz	a
      008A8F 27 08            [ 1] 1114 	jreq	00114$
      008A91 0D 04            [ 1] 1115 	tnz	(0x04, sp)
      008A93 27 04            [ 1] 1116 	jreq	00114$
                                   1117 ;	stm8s_uart2.c: 814: pendingbitstatus = SET;
      008A95 A6 01            [ 1] 1118 	ld	a, #0x01
      008A97 20 01            [ 2] 1119 	jra	00125$
      008A99                       1120 00114$:
                                   1121 ;	stm8s_uart2.c: 819: pendingbitstatus = RESET;
      008A99 4F               [ 1] 1122 	clr	a
      008A9A                       1123 00125$:
                                   1124 ;	stm8s_uart2.c: 823: return  pendingbitstatus;
      008A9A 5B 06            [ 2] 1125 	addw	sp, #6
      008A9C 81               [ 4] 1126 	ret
                                   1127 ;	stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function UART2_ClearITPendingBit
                                   1130 ;	-----------------------------------------
      008A9D                       1131 _UART2_ClearITPendingBit:
                                   1132 ;	stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      008A9D 1E 03            [ 2] 1133 	ldw	x, (0x03, sp)
      008A9F A3 02 55         [ 2] 1134 	cpw	x, #0x0255
      008AA2 26 08            [ 1] 1135 	jrne	00105$
                                   1136 ;	stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      008AA4 AE 52 40         [ 2] 1137 	ldw	x, #0x5240
      008AA7 A6 DF            [ 1] 1138 	ld	a, #0xdf
      008AA9 F7               [ 1] 1139 	ld	(x), a
      008AAA 20 17            [ 2] 1140 	jra	00107$
      008AAC                       1141 00105$:
                                   1142 ;	stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      008AAC 1E 03            [ 2] 1143 	ldw	x, (0x03, sp)
      008AAE A3 03 46         [ 2] 1144 	cpw	x, #0x0346
      008AB1 26 09            [ 1] 1145 	jrne	00102$
                                   1146 ;	stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      008AB3 AE 52 47         [ 2] 1147 	ldw	x, #0x5247
      008AB6 F6               [ 1] 1148 	ld	a, (x)
      008AB7 A4 EF            [ 1] 1149 	and	a, #0xef
      008AB9 F7               [ 1] 1150 	ld	(x), a
      008ABA 20 07            [ 2] 1151 	jra	00107$
      008ABC                       1152 00102$:
                                   1153 ;	stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      008ABC AE 52 49         [ 2] 1154 	ldw	x, #0x5249
      008ABF F6               [ 1] 1155 	ld	a, (x)
      008AC0 A4 FD            [ 1] 1156 	and	a, #0xfd
      008AC2 F7               [ 1] 1157 	ld	(x), a
      008AC3                       1158 00107$:
      008AC3 81               [ 4] 1159 	ret
                                   1160 	.area CODE
                                   1161 	.area INITIALIZER
                                   1162 	.area CABS (ABS)

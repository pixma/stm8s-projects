                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 16 17:18:47 2015
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
      008B67                         70 _UART2_DeInit:
                                     71 ;	stm8s_uart2.c: 57: (void) UART2->SR;
      008B67 AE 52 40         [ 2]   72 	ldw	x, #0x5240
      008B6A F6               [ 1]   73 	ld	a, (x)
                                     74 ;	stm8s_uart2.c: 58: (void)UART2->DR;
      008B6B AE 52 41         [ 2]   75 	ldw	x, #0x5241
      008B6E F6               [ 1]   76 	ld	a, (x)
                                     77 ;	stm8s_uart2.c: 60: UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
      008B6F AE 52 43         [ 2]   78 	ldw	x, #0x5243
      008B72 7F               [ 1]   79 	clr	(x)
                                     80 ;	stm8s_uart2.c: 61: UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
      008B73 AE 52 42         [ 2]   81 	ldw	x, #0x5242
      008B76 7F               [ 1]   82 	clr	(x)
                                     83 ;	stm8s_uart2.c: 63: UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
      008B77 AE 52 44         [ 2]   84 	ldw	x, #0x5244
      008B7A 7F               [ 1]   85 	clr	(x)
                                     86 ;	stm8s_uart2.c: 64: UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
      008B7B AE 52 45         [ 2]   87 	ldw	x, #0x5245
      008B7E 7F               [ 1]   88 	clr	(x)
                                     89 ;	stm8s_uart2.c: 65: UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
      008B7F AE 52 46         [ 2]   90 	ldw	x, #0x5246
      008B82 7F               [ 1]   91 	clr	(x)
                                     92 ;	stm8s_uart2.c: 66: UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
      008B83 AE 52 47         [ 2]   93 	ldw	x, #0x5247
      008B86 7F               [ 1]   94 	clr	(x)
                                     95 ;	stm8s_uart2.c: 67: UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
      008B87 AE 52 48         [ 2]   96 	ldw	x, #0x5248
      008B8A 7F               [ 1]   97 	clr	(x)
                                     98 ;	stm8s_uart2.c: 68: UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
      008B8B AE 52 49         [ 2]   99 	ldw	x, #0x5249
      008B8E 7F               [ 1]  100 	clr	(x)
      008B8F 81               [ 4]  101 	ret
                                    102 ;	stm8s_uart2.c: 85: void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
                                    103 ;	-----------------------------------------
                                    104 ;	 function UART2_Init
                                    105 ;	-----------------------------------------
      008B90                        106 _UART2_Init:
      008B90 52 23            [ 2]  107 	sub	sp, #35
                                    108 ;	stm8s_uart2.c: 99: UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
      008B92 AE 52 44         [ 2]  109 	ldw	x, #0x5244
      008B95 F6               [ 1]  110 	ld	a, (x)
      008B96 A4 EF            [ 1]  111 	and	a, #0xef
      008B98 F7               [ 1]  112 	ld	(x), a
                                    113 ;	stm8s_uart2.c: 101: UART2->CR1 |= (uint8_t)WordLength; 
      008B99 AE 52 44         [ 2]  114 	ldw	x, #0x5244
      008B9C F6               [ 1]  115 	ld	a, (x)
      008B9D 1A 2A            [ 1]  116 	or	a, (0x2a, sp)
      008B9F AE 52 44         [ 2]  117 	ldw	x, #0x5244
      008BA2 F7               [ 1]  118 	ld	(x), a
                                    119 ;	stm8s_uart2.c: 104: UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
      008BA3 AE 52 46         [ 2]  120 	ldw	x, #0x5246
      008BA6 F6               [ 1]  121 	ld	a, (x)
      008BA7 A4 CF            [ 1]  122 	and	a, #0xcf
      008BA9 F7               [ 1]  123 	ld	(x), a
                                    124 ;	stm8s_uart2.c: 106: UART2->CR3 |= (uint8_t)StopBits; 
      008BAA AE 52 46         [ 2]  125 	ldw	x, #0x5246
      008BAD F6               [ 1]  126 	ld	a, (x)
      008BAE 1A 2B            [ 1]  127 	or	a, (0x2b, sp)
      008BB0 AE 52 46         [ 2]  128 	ldw	x, #0x5246
      008BB3 F7               [ 1]  129 	ld	(x), a
                                    130 ;	stm8s_uart2.c: 109: UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
      008BB4 AE 52 44         [ 2]  131 	ldw	x, #0x5244
      008BB7 F6               [ 1]  132 	ld	a, (x)
      008BB8 A4 F9            [ 1]  133 	and	a, #0xf9
      008BBA F7               [ 1]  134 	ld	(x), a
                                    135 ;	stm8s_uart2.c: 111: UART2->CR1 |= (uint8_t)Parity;
      008BBB AE 52 44         [ 2]  136 	ldw	x, #0x5244
      008BBE F6               [ 1]  137 	ld	a, (x)
      008BBF 1A 2C            [ 1]  138 	or	a, (0x2c, sp)
      008BC1 AE 52 44         [ 2]  139 	ldw	x, #0x5244
      008BC4 F7               [ 1]  140 	ld	(x), a
                                    141 ;	stm8s_uart2.c: 114: UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
      008BC5 AE 52 42         [ 2]  142 	ldw	x, #0x5242
      008BC8 F6               [ 1]  143 	ld	a, (x)
      008BC9 AE 52 42         [ 2]  144 	ldw	x, #0x5242
      008BCC 7F               [ 1]  145 	clr	(x)
                                    146 ;	stm8s_uart2.c: 116: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
      008BCD AE 52 43         [ 2]  147 	ldw	x, #0x5243
      008BD0 F6               [ 1]  148 	ld	a, (x)
      008BD1 A4 0F            [ 1]  149 	and	a, #0x0f
      008BD3 F7               [ 1]  150 	ld	(x), a
                                    151 ;	stm8s_uart2.c: 118: UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
      008BD4 AE 52 43         [ 2]  152 	ldw	x, #0x5243
      008BD7 F6               [ 1]  153 	ld	a, (x)
      008BD8 A4 F0            [ 1]  154 	and	a, #0xf0
      008BDA F7               [ 1]  155 	ld	(x), a
                                    156 ;	stm8s_uart2.c: 121: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
      008BDB CD 89 8D         [ 4]  157 	call	_CLK_GetClockFreq
      008BDE 1F 22            [ 2]  158 	ldw	(0x22, sp), x
      008BE0 1E 28            [ 2]  159 	ldw	x, (0x28, sp)
      008BE2 1F 1E            [ 2]  160 	ldw	(0x1e, sp), x
      008BE4 1E 26            [ 2]  161 	ldw	x, (0x26, sp)
      008BE6 1F 1C            [ 2]  162 	ldw	(0x1c, sp), x
      008BE8 A6 04            [ 1]  163 	ld	a, #0x04
      008BEA 4D               [ 1]  164 	tnz	a
      008BEB 27 0B            [ 1]  165 	jreq	00125$
      008BED                        166 00124$:
      008BED 08 1F            [ 1]  167 	sll	(0x1f, sp)
      008BEF 09 1E            [ 1]  168 	rlc	(0x1e, sp)
      008BF1 09 1D            [ 1]  169 	rlc	(0x1d, sp)
      008BF3 09 1C            [ 1]  170 	rlc	(0x1c, sp)
      008BF5 4A               [ 1]  171 	dec	a
      008BF6 26 F5            [ 1]  172 	jrne	00124$
      008BF8                        173 00125$:
      008BF8 1E 1E            [ 2]  174 	ldw	x, (0x1e, sp)
      008BFA 89               [ 2]  175 	pushw	x
      008BFB 1E 1E            [ 2]  176 	ldw	x, (0x1e, sp)
      008BFD 89               [ 2]  177 	pushw	x
      008BFE 1E 26            [ 2]  178 	ldw	x, (0x26, sp)
      008C00 89               [ 2]  179 	pushw	x
      008C01 90 89            [ 2]  180 	pushw	y
      008C03 CD 90 A7         [ 4]  181 	call	__divulong
      008C06 5B 08            [ 2]  182 	addw	sp, #8
      008C08 1F 07            [ 2]  183 	ldw	(0x07, sp), x
      008C0A 17 05            [ 2]  184 	ldw	(0x05, sp), y
                                    185 ;	stm8s_uart2.c: 122: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
      008C0C CD 89 8D         [ 4]  186 	call	_CLK_GetClockFreq
      008C0F 9F               [ 1]  187 	ld	a, xl
      008C10 88               [ 1]  188 	push	a
      008C11 9E               [ 1]  189 	ld	a, xh
      008C12 88               [ 1]  190 	push	a
      008C13 90 89            [ 2]  191 	pushw	y
      008C15 4B 64            [ 1]  192 	push	#0x64
      008C17 5F               [ 1]  193 	clrw	x
      008C18 89               [ 2]  194 	pushw	x
      008C19 4B 00            [ 1]  195 	push	#0x00
      008C1B CD 91 46         [ 4]  196 	call	__mullong
      008C1E 5B 08            [ 2]  197 	addw	sp, #8
      008C20 1F 1A            [ 2]  198 	ldw	(0x1a, sp), x
      008C22 1E 1E            [ 2]  199 	ldw	x, (0x1e, sp)
      008C24 89               [ 2]  200 	pushw	x
      008C25 1E 1E            [ 2]  201 	ldw	x, (0x1e, sp)
      008C27 89               [ 2]  202 	pushw	x
      008C28 1E 1E            [ 2]  203 	ldw	x, (0x1e, sp)
      008C2A 89               [ 2]  204 	pushw	x
      008C2B 90 89            [ 2]  205 	pushw	y
      008C2D CD 90 A7         [ 4]  206 	call	__divulong
      008C30 5B 08            [ 2]  207 	addw	sp, #8
      008C32 1F 03            [ 2]  208 	ldw	(0x03, sp), x
      008C34 17 01            [ 2]  209 	ldw	(0x01, sp), y
                                    210 ;	stm8s_uart2.c: 126: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
      008C36 1E 07            [ 2]  211 	ldw	x, (0x07, sp)
      008C38 89               [ 2]  212 	pushw	x
      008C39 1E 07            [ 2]  213 	ldw	x, (0x07, sp)
      008C3B 89               [ 2]  214 	pushw	x
      008C3C 4B 64            [ 1]  215 	push	#0x64
      008C3E 5F               [ 1]  216 	clrw	x
      008C3F 89               [ 2]  217 	pushw	x
      008C40 4B 00            [ 1]  218 	push	#0x00
      008C42 CD 91 46         [ 4]  219 	call	__mullong
      008C45 5B 08            [ 2]  220 	addw	sp, #8
      008C47 1F 16            [ 2]  221 	ldw	(0x16, sp), x
      008C49 17 14            [ 2]  222 	ldw	(0x14, sp), y
      008C4B 1E 03            [ 2]  223 	ldw	x, (0x03, sp)
      008C4D 72 F0 16         [ 2]  224 	subw	x, (0x16, sp)
      008C50 1F 12            [ 2]  225 	ldw	(0x12, sp), x
      008C52 7B 02            [ 1]  226 	ld	a, (0x02, sp)
      008C54 12 15            [ 1]  227 	sbc	a, (0x15, sp)
      008C56 6B 11            [ 1]  228 	ld	(0x11, sp), a
      008C58 7B 01            [ 1]  229 	ld	a, (0x01, sp)
      008C5A 12 14            [ 1]  230 	sbc	a, (0x14, sp)
      008C5C 6B 10            [ 1]  231 	ld	(0x10, sp), a
      008C5E 16 12            [ 2]  232 	ldw	y, (0x12, sp)
      008C60 1E 10            [ 2]  233 	ldw	x, (0x10, sp)
      008C62 A6 04            [ 1]  234 	ld	a, #0x04
      008C64 4D               [ 1]  235 	tnz	a
      008C65 27 06            [ 1]  236 	jreq	00127$
      008C67                        237 00126$:
      008C67 90 58            [ 2]  238 	sllw	y
      008C69 59               [ 2]  239 	rlcw	x
      008C6A 4A               [ 1]  240 	dec	a
      008C6B 26 FA            [ 1]  241 	jrne	00126$
      008C6D                        242 00127$:
      008C6D 4B 64            [ 1]  243 	push	#0x64
      008C6F 4B 00            [ 1]  244 	push	#0x00
      008C71 4B 00            [ 1]  245 	push	#0x00
      008C73 4B 00            [ 1]  246 	push	#0x00
      008C75 90 89            [ 2]  247 	pushw	y
      008C77 89               [ 2]  248 	pushw	x
      008C78 CD 90 A7         [ 4]  249 	call	__divulong
      008C7B 5B 08            [ 2]  250 	addw	sp, #8
      008C7D 9F               [ 1]  251 	ld	a, xl
      008C7E A4 0F            [ 1]  252 	and	a, #0x0f
      008C80 6B 09            [ 1]  253 	ld	(0x09, sp), a
                                    254 ;	stm8s_uart2.c: 128: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
      008C82 1E 07            [ 2]  255 	ldw	x, (0x07, sp)
      008C84 16 05            [ 2]  256 	ldw	y, (0x05, sp)
      008C86 A6 04            [ 1]  257 	ld	a, #0x04
      008C88 4D               [ 1]  258 	tnz	a
      008C89 27 06            [ 1]  259 	jreq	00129$
      008C8B                        260 00128$:
      008C8B 90 54            [ 2]  261 	srlw	y
      008C8D 56               [ 2]  262 	rrcw	x
      008C8E 4A               [ 1]  263 	dec	a
      008C8F 26 FA            [ 1]  264 	jrne	00128$
      008C91                        265 00129$:
      008C91 9F               [ 1]  266 	ld	a, xl
      008C92 A4 F0            [ 1]  267 	and	a, #0xf0
      008C94 97               [ 1]  268 	ld	xl, a
      008C95 0F 0E            [ 1]  269 	clr	(0x0e, sp)
      008C97 0F 0D            [ 1]  270 	clr	(0x0d, sp)
      008C99 4F               [ 1]  271 	clr	a
      008C9A 9F               [ 1]  272 	ld	a, xl
                                    273 ;	stm8s_uart2.c: 130: UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
      008C9B 1A 09            [ 1]  274 	or	a, (0x09, sp)
      008C9D AE 52 43         [ 2]  275 	ldw	x, #0x5243
      008CA0 F7               [ 1]  276 	ld	(x), a
                                    277 ;	stm8s_uart2.c: 132: UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
      008CA1 7B 08            [ 1]  278 	ld	a, (0x08, sp)
      008CA3 AE 52 42         [ 2]  279 	ldw	x, #0x5242
      008CA6 F7               [ 1]  280 	ld	(x), a
                                    281 ;	stm8s_uart2.c: 135: UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
      008CA7 AE 52 45         [ 2]  282 	ldw	x, #0x5245
      008CAA F6               [ 1]  283 	ld	a, (x)
      008CAB A4 F3            [ 1]  284 	and	a, #0xf3
      008CAD F7               [ 1]  285 	ld	(x), a
                                    286 ;	stm8s_uart2.c: 137: UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
      008CAE AE 52 46         [ 2]  287 	ldw	x, #0x5246
      008CB1 F6               [ 1]  288 	ld	a, (x)
      008CB2 A4 F8            [ 1]  289 	and	a, #0xf8
      008CB4 F7               [ 1]  290 	ld	(x), a
                                    291 ;	stm8s_uart2.c: 139: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
      008CB5 AE 52 46         [ 2]  292 	ldw	x, #0x5246
      008CB8 F6               [ 1]  293 	ld	a, (x)
      008CB9 6B 0B            [ 1]  294 	ld	(0x0b, sp), a
      008CBB 7B 2D            [ 1]  295 	ld	a, (0x2d, sp)
      008CBD A4 07            [ 1]  296 	and	a, #0x07
      008CBF 1A 0B            [ 1]  297 	or	a, (0x0b, sp)
      008CC1 AE 52 46         [ 2]  298 	ldw	x, #0x5246
      008CC4 F7               [ 1]  299 	ld	(x), a
                                    300 ;	stm8s_uart2.c: 142: if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
      008CC5 7B 2E            [ 1]  301 	ld	a, (0x2e, sp)
      008CC7 A5 04            [ 1]  302 	bcp	a, #0x04
      008CC9 27 09            [ 1]  303 	jreq	00102$
                                    304 ;	stm8s_uart2.c: 145: UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
      008CCB AE 52 45         [ 2]  305 	ldw	x, #0x5245
      008CCE F6               [ 1]  306 	ld	a, (x)
      008CCF AA 08            [ 1]  307 	or	a, #0x08
      008CD1 F7               [ 1]  308 	ld	(x), a
      008CD2 20 07            [ 2]  309 	jra	00103$
      008CD4                        310 00102$:
                                    311 ;	stm8s_uart2.c: 150: UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
      008CD4 AE 52 45         [ 2]  312 	ldw	x, #0x5245
      008CD7 F6               [ 1]  313 	ld	a, (x)
      008CD8 A4 F7            [ 1]  314 	and	a, #0xf7
      008CDA F7               [ 1]  315 	ld	(x), a
      008CDB                        316 00103$:
                                    317 ;	stm8s_uart2.c: 152: if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
      008CDB 7B 2E            [ 1]  318 	ld	a, (0x2e, sp)
      008CDD A5 08            [ 1]  319 	bcp	a, #0x08
      008CDF 27 09            [ 1]  320 	jreq	00105$
                                    321 ;	stm8s_uart2.c: 155: UART2->CR2 |= (uint8_t)UART2_CR2_REN;
      008CE1 AE 52 45         [ 2]  322 	ldw	x, #0x5245
      008CE4 F6               [ 1]  323 	ld	a, (x)
      008CE5 AA 04            [ 1]  324 	or	a, #0x04
      008CE7 F7               [ 1]  325 	ld	(x), a
      008CE8 20 07            [ 2]  326 	jra	00106$
      008CEA                        327 00105$:
                                    328 ;	stm8s_uart2.c: 160: UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
      008CEA AE 52 45         [ 2]  329 	ldw	x, #0x5245
      008CED F6               [ 1]  330 	ld	a, (x)
      008CEE A4 FB            [ 1]  331 	and	a, #0xfb
      008CF0 F7               [ 1]  332 	ld	(x), a
      008CF1                        333 00106$:
                                    334 ;	stm8s_uart2.c: 164: if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
      008CF1 7B 2D            [ 1]  335 	ld	a, (0x2d, sp)
      008CF3 48               [ 1]  336 	sll	a
      008CF4 24 09            [ 1]  337 	jrnc	00108$
                                    338 ;	stm8s_uart2.c: 167: UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
      008CF6 AE 52 46         [ 2]  339 	ldw	x, #0x5246
      008CF9 F6               [ 1]  340 	ld	a, (x)
      008CFA A4 F7            [ 1]  341 	and	a, #0xf7
      008CFC F7               [ 1]  342 	ld	(x), a
      008CFD 20 10            [ 2]  343 	jra	00110$
      008CFF                        344 00108$:
                                    345 ;	stm8s_uart2.c: 171: UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
      008CFF AE 52 46         [ 2]  346 	ldw	x, #0x5246
      008D02 F6               [ 1]  347 	ld	a, (x)
      008D03 6B 0A            [ 1]  348 	ld	(0x0a, sp), a
      008D05 7B 2D            [ 1]  349 	ld	a, (0x2d, sp)
      008D07 A4 08            [ 1]  350 	and	a, #0x08
      008D09 1A 0A            [ 1]  351 	or	a, (0x0a, sp)
      008D0B AE 52 46         [ 2]  352 	ldw	x, #0x5246
      008D0E F7               [ 1]  353 	ld	(x), a
      008D0F                        354 00110$:
      008D0F 5B 23            [ 2]  355 	addw	sp, #35
      008D11 81               [ 4]  356 	ret
                                    357 ;	stm8s_uart2.c: 181: void UART2_Cmd(FunctionalState NewState)
                                    358 ;	-----------------------------------------
                                    359 ;	 function UART2_Cmd
                                    360 ;	-----------------------------------------
      008D12                        361 _UART2_Cmd:
                                    362 ;	stm8s_uart2.c: 183: if (NewState != DISABLE)
      008D12 0D 03            [ 1]  363 	tnz	(0x03, sp)
      008D14 27 09            [ 1]  364 	jreq	00102$
                                    365 ;	stm8s_uart2.c: 186: UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
      008D16 AE 52 44         [ 2]  366 	ldw	x, #0x5244
      008D19 F6               [ 1]  367 	ld	a, (x)
      008D1A A4 DF            [ 1]  368 	and	a, #0xdf
      008D1C F7               [ 1]  369 	ld	(x), a
      008D1D 20 07            [ 2]  370 	jra	00104$
      008D1F                        371 00102$:
                                    372 ;	stm8s_uart2.c: 191: UART2->CR1 |= UART2_CR1_UARTD; 
      008D1F AE 52 44         [ 2]  373 	ldw	x, #0x5244
      008D22 F6               [ 1]  374 	ld	a, (x)
      008D23 AA 20            [ 1]  375 	or	a, #0x20
      008D25 F7               [ 1]  376 	ld	(x), a
      008D26                        377 00104$:
      008D26 81               [ 4]  378 	ret
                                    379 ;	stm8s_uart2.c: 210: void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
                                    380 ;	-----------------------------------------
                                    381 ;	 function UART2_ITConfig
                                    382 ;	-----------------------------------------
      008D27                        383 _UART2_ITConfig:
      008D27 52 06            [ 2]  384 	sub	sp, #6
                                    385 ;	stm8s_uart2.c: 219: uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
      008D29 7B 09            [ 1]  386 	ld	a, (0x09, sp)
      008D2B 0F 05            [ 1]  387 	clr	(0x05, sp)
      008D2D 95               [ 1]  388 	ld	xh, a
                                    389 ;	stm8s_uart2.c: 222: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008D2E 7B 0A            [ 1]  390 	ld	a, (0x0a, sp)
      008D30 A4 0F            [ 1]  391 	and	a, #0x0f
      008D32 97               [ 1]  392 	ld	xl, a
      008D33 A6 01            [ 1]  393 	ld	a, #0x01
      008D35 6B 01            [ 1]  394 	ld	(0x01, sp), a
      008D37 9F               [ 1]  395 	ld	a, xl
      008D38 4D               [ 1]  396 	tnz	a
      008D39 27 05            [ 1]  397 	jreq	00153$
      008D3B                        398 00152$:
      008D3B 08 01            [ 1]  399 	sll	(0x01, sp)
      008D3D 4A               [ 1]  400 	dec	a
      008D3E 26 FB            [ 1]  401 	jrne	00152$
      008D40                        402 00153$:
                                    403 ;	stm8s_uart2.c: 227: if (uartreg == 0x01)
      008D40 9E               [ 1]  404 	ld	a, xh
      008D41 A1 01            [ 1]  405 	cp	a, #0x01
      008D43 26 06            [ 1]  406 	jrne	00155$
      008D45 A6 01            [ 1]  407 	ld	a, #0x01
      008D47 6B 04            [ 1]  408 	ld	(0x04, sp), a
      008D49 20 02            [ 2]  409 	jra	00156$
      008D4B                        410 00155$:
      008D4B 0F 04            [ 1]  411 	clr	(0x04, sp)
      008D4D                        412 00156$:
                                    413 ;	stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008D4D 9E               [ 1]  414 	ld	a, xh
      008D4E A1 02            [ 1]  415 	cp	a, #0x02
      008D50 26 06            [ 1]  416 	jrne	00158$
      008D52 A6 01            [ 1]  417 	ld	a, #0x01
      008D54 6B 03            [ 1]  418 	ld	(0x03, sp), a
      008D56 20 02            [ 2]  419 	jra	00159$
      008D58                        420 00158$:
      008D58 0F 03            [ 1]  421 	clr	(0x03, sp)
      008D5A                        422 00159$:
                                    423 ;	stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008D5A 9E               [ 1]  424 	ld	a, xh
      008D5B A1 03            [ 1]  425 	cp	a, #0x03
      008D5D 26 04            [ 1]  426 	jrne	00161$
      008D5F A6 01            [ 1]  427 	ld	a, #0x01
      008D61 20 01            [ 2]  428 	jra	00162$
      008D63                        429 00161$:
      008D63 4F               [ 1]  430 	clr	a
      008D64                        431 00162$:
                                    432 ;	stm8s_uart2.c: 224: if (NewState != DISABLE)
      008D64 0D 0B            [ 1]  433 	tnz	(0x0b, sp)
      008D66 27 3C            [ 1]  434 	jreq	00120$
                                    435 ;	stm8s_uart2.c: 227: if (uartreg == 0x01)
      008D68 0D 04            [ 1]  436 	tnz	(0x04, sp)
      008D6A 27 0D            [ 1]  437 	jreq	00108$
                                    438 ;	stm8s_uart2.c: 229: UART2->CR1 |= itpos;
      008D6C AE 52 44         [ 2]  439 	ldw	x, #0x5244
      008D6F F6               [ 1]  440 	ld	a, (x)
      008D70 1A 01            [ 1]  441 	or	a, (0x01, sp)
      008D72 AE 52 44         [ 2]  442 	ldw	x, #0x5244
      008D75 F7               [ 1]  443 	ld	(x), a
      008D76 CC 8D E4         [ 2]  444 	jp	00122$
      008D79                        445 00108$:
                                    446 ;	stm8s_uart2.c: 231: else if (uartreg == 0x02)
      008D79 0D 03            [ 1]  447 	tnz	(0x03, sp)
      008D7B 27 0C            [ 1]  448 	jreq	00105$
                                    449 ;	stm8s_uart2.c: 233: UART2->CR2 |= itpos;
      008D7D AE 52 45         [ 2]  450 	ldw	x, #0x5245
      008D80 F6               [ 1]  451 	ld	a, (x)
      008D81 1A 01            [ 1]  452 	or	a, (0x01, sp)
      008D83 AE 52 45         [ 2]  453 	ldw	x, #0x5245
      008D86 F7               [ 1]  454 	ld	(x), a
      008D87 20 5B            [ 2]  455 	jra	00122$
      008D89                        456 00105$:
                                    457 ;	stm8s_uart2.c: 235: else if (uartreg == 0x03)
      008D89 4D               [ 1]  458 	tnz	a
      008D8A 27 0C            [ 1]  459 	jreq	00102$
                                    460 ;	stm8s_uart2.c: 237: UART2->CR4 |= itpos;
      008D8C AE 52 47         [ 2]  461 	ldw	x, #0x5247
      008D8F F6               [ 1]  462 	ld	a, (x)
      008D90 1A 01            [ 1]  463 	or	a, (0x01, sp)
      008D92 AE 52 47         [ 2]  464 	ldw	x, #0x5247
      008D95 F7               [ 1]  465 	ld	(x), a
      008D96 20 4C            [ 2]  466 	jra	00122$
      008D98                        467 00102$:
                                    468 ;	stm8s_uart2.c: 241: UART2->CR6 |= itpos;
      008D98 AE 52 49         [ 2]  469 	ldw	x, #0x5249
      008D9B F6               [ 1]  470 	ld	a, (x)
      008D9C 1A 01            [ 1]  471 	or	a, (0x01, sp)
      008D9E AE 52 49         [ 2]  472 	ldw	x, #0x5249
      008DA1 F7               [ 1]  473 	ld	(x), a
      008DA2 20 40            [ 2]  474 	jra	00122$
      008DA4                        475 00120$:
                                    476 ;	stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      008DA4 88               [ 1]  477 	push	a
      008DA5 7B 02            [ 1]  478 	ld	a, (0x02, sp)
      008DA7 43               [ 1]  479 	cpl	a
      008DA8 6B 03            [ 1]  480 	ld	(0x03, sp), a
      008DAA 84               [ 1]  481 	pop	a
                                    482 ;	stm8s_uart2.c: 247: if (uartreg == 0x01)
      008DAB 0D 04            [ 1]  483 	tnz	(0x04, sp)
      008DAD 27 0C            [ 1]  484 	jreq	00117$
                                    485 ;	stm8s_uart2.c: 249: UART2->CR1 &= (uint8_t)(~itpos);
      008DAF AE 52 44         [ 2]  486 	ldw	x, #0x5244
      008DB2 F6               [ 1]  487 	ld	a, (x)
      008DB3 14 02            [ 1]  488 	and	a, (0x02, sp)
      008DB5 AE 52 44         [ 2]  489 	ldw	x, #0x5244
      008DB8 F7               [ 1]  490 	ld	(x), a
      008DB9 20 29            [ 2]  491 	jra	00122$
      008DBB                        492 00117$:
                                    493 ;	stm8s_uart2.c: 251: else if (uartreg == 0x02)
      008DBB 0D 03            [ 1]  494 	tnz	(0x03, sp)
      008DBD 27 0C            [ 1]  495 	jreq	00114$
                                    496 ;	stm8s_uart2.c: 253: UART2->CR2 &= (uint8_t)(~itpos);
      008DBF AE 52 45         [ 2]  497 	ldw	x, #0x5245
      008DC2 F6               [ 1]  498 	ld	a, (x)
      008DC3 14 02            [ 1]  499 	and	a, (0x02, sp)
      008DC5 AE 52 45         [ 2]  500 	ldw	x, #0x5245
      008DC8 F7               [ 1]  501 	ld	(x), a
      008DC9 20 19            [ 2]  502 	jra	00122$
      008DCB                        503 00114$:
                                    504 ;	stm8s_uart2.c: 255: else if (uartreg == 0x03)
      008DCB 4D               [ 1]  505 	tnz	a
      008DCC 27 0C            [ 1]  506 	jreq	00111$
                                    507 ;	stm8s_uart2.c: 257: UART2->CR4 &= (uint8_t)(~itpos);
      008DCE AE 52 47         [ 2]  508 	ldw	x, #0x5247
      008DD1 F6               [ 1]  509 	ld	a, (x)
      008DD2 14 02            [ 1]  510 	and	a, (0x02, sp)
      008DD4 AE 52 47         [ 2]  511 	ldw	x, #0x5247
      008DD7 F7               [ 1]  512 	ld	(x), a
      008DD8 20 0A            [ 2]  513 	jra	00122$
      008DDA                        514 00111$:
                                    515 ;	stm8s_uart2.c: 261: UART2->CR6 &= (uint8_t)(~itpos);
      008DDA AE 52 49         [ 2]  516 	ldw	x, #0x5249
      008DDD F6               [ 1]  517 	ld	a, (x)
      008DDE 14 02            [ 1]  518 	and	a, (0x02, sp)
      008DE0 AE 52 49         [ 2]  519 	ldw	x, #0x5249
      008DE3 F7               [ 1]  520 	ld	(x), a
      008DE4                        521 00122$:
      008DE4 5B 06            [ 2]  522 	addw	sp, #6
      008DE6 81               [ 4]  523 	ret
                                    524 ;	stm8s_uart2.c: 272: void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
                                    525 ;	-----------------------------------------
                                    526 ;	 function UART2_IrDAConfig
                                    527 ;	-----------------------------------------
      008DE7                        528 _UART2_IrDAConfig:
                                    529 ;	stm8s_uart2.c: 276: if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
      008DE7 0D 03            [ 1]  530 	tnz	(0x03, sp)
      008DE9 27 09            [ 1]  531 	jreq	00102$
                                    532 ;	stm8s_uart2.c: 278: UART2->CR5 |= UART2_CR5_IRLP;
      008DEB AE 52 48         [ 2]  533 	ldw	x, #0x5248
      008DEE F6               [ 1]  534 	ld	a, (x)
      008DEF AA 04            [ 1]  535 	or	a, #0x04
      008DF1 F7               [ 1]  536 	ld	(x), a
      008DF2 20 07            [ 2]  537 	jra	00104$
      008DF4                        538 00102$:
                                    539 ;	stm8s_uart2.c: 282: UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
      008DF4 AE 52 48         [ 2]  540 	ldw	x, #0x5248
      008DF7 F6               [ 1]  541 	ld	a, (x)
      008DF8 A4 FB            [ 1]  542 	and	a, #0xfb
      008DFA F7               [ 1]  543 	ld	(x), a
      008DFB                        544 00104$:
      008DFB 81               [ 4]  545 	ret
                                    546 ;	stm8s_uart2.c: 292: void UART2_IrDACmd(FunctionalState NewState)
                                    547 ;	-----------------------------------------
                                    548 ;	 function UART2_IrDACmd
                                    549 ;	-----------------------------------------
      008DFC                        550 _UART2_IrDACmd:
                                    551 ;	stm8s_uart2.c: 297: if (NewState != DISABLE)
      008DFC 0D 03            [ 1]  552 	tnz	(0x03, sp)
      008DFE 27 09            [ 1]  553 	jreq	00102$
                                    554 ;	stm8s_uart2.c: 300: UART2->CR5 |= UART2_CR5_IREN;
      008E00 AE 52 48         [ 2]  555 	ldw	x, #0x5248
      008E03 F6               [ 1]  556 	ld	a, (x)
      008E04 AA 02            [ 1]  557 	or	a, #0x02
      008E06 F7               [ 1]  558 	ld	(x), a
      008E07 20 07            [ 2]  559 	jra	00104$
      008E09                        560 00102$:
                                    561 ;	stm8s_uart2.c: 305: UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
      008E09 AE 52 48         [ 2]  562 	ldw	x, #0x5248
      008E0C F6               [ 1]  563 	ld	a, (x)
      008E0D A4 FD            [ 1]  564 	and	a, #0xfd
      008E0F F7               [ 1]  565 	ld	(x), a
      008E10                        566 00104$:
      008E10 81               [ 4]  567 	ret
                                    568 ;	stm8s_uart2.c: 316: void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
                                    569 ;	-----------------------------------------
                                    570 ;	 function UART2_LINBreakDetectionConfig
                                    571 ;	-----------------------------------------
      008E11                        572 _UART2_LINBreakDetectionConfig:
                                    573 ;	stm8s_uart2.c: 321: if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
      008E11 0D 03            [ 1]  574 	tnz	(0x03, sp)
      008E13 27 09            [ 1]  575 	jreq	00102$
                                    576 ;	stm8s_uart2.c: 323: UART2->CR4 |= UART2_CR4_LBDL;
      008E15 AE 52 47         [ 2]  577 	ldw	x, #0x5247
      008E18 F6               [ 1]  578 	ld	a, (x)
      008E19 AA 20            [ 1]  579 	or	a, #0x20
      008E1B F7               [ 1]  580 	ld	(x), a
      008E1C 20 07            [ 2]  581 	jra	00104$
      008E1E                        582 00102$:
                                    583 ;	stm8s_uart2.c: 327: UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
      008E1E AE 52 47         [ 2]  584 	ldw	x, #0x5247
      008E21 F6               [ 1]  585 	ld	a, (x)
      008E22 A4 DF            [ 1]  586 	and	a, #0xdf
      008E24 F7               [ 1]  587 	ld	(x), a
      008E25                        588 00104$:
      008E25 81               [ 4]  589 	ret
                                    590 ;	stm8s_uart2.c: 341: void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
                                    591 ;	-----------------------------------------
                                    592 ;	 function UART2_LINConfig
                                    593 ;	-----------------------------------------
      008E26                        594 _UART2_LINConfig:
                                    595 ;	stm8s_uart2.c: 350: if (UART2_Mode != UART2_LIN_MODE_MASTER)
      008E26 0D 03            [ 1]  596 	tnz	(0x03, sp)
      008E28 27 09            [ 1]  597 	jreq	00102$
                                    598 ;	stm8s_uart2.c: 352: UART2->CR6 |=  UART2_CR6_LSLV;
      008E2A AE 52 49         [ 2]  599 	ldw	x, #0x5249
      008E2D F6               [ 1]  600 	ld	a, (x)
      008E2E AA 20            [ 1]  601 	or	a, #0x20
      008E30 F7               [ 1]  602 	ld	(x), a
      008E31 20 07            [ 2]  603 	jra	00103$
      008E33                        604 00102$:
                                    605 ;	stm8s_uart2.c: 356: UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
      008E33 AE 52 49         [ 2]  606 	ldw	x, #0x5249
      008E36 F6               [ 1]  607 	ld	a, (x)
      008E37 A4 DF            [ 1]  608 	and	a, #0xdf
      008E39 F7               [ 1]  609 	ld	(x), a
      008E3A                        610 00103$:
                                    611 ;	stm8s_uart2.c: 359: if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
      008E3A 0D 04            [ 1]  612 	tnz	(0x04, sp)
      008E3C 27 09            [ 1]  613 	jreq	00105$
                                    614 ;	stm8s_uart2.c: 361: UART2->CR6 |=  UART2_CR6_LASE ;
      008E3E AE 52 49         [ 2]  615 	ldw	x, #0x5249
      008E41 F6               [ 1]  616 	ld	a, (x)
      008E42 AA 10            [ 1]  617 	or	a, #0x10
      008E44 F7               [ 1]  618 	ld	(x), a
      008E45 20 07            [ 2]  619 	jra	00106$
      008E47                        620 00105$:
                                    621 ;	stm8s_uart2.c: 365: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
      008E47 AE 52 49         [ 2]  622 	ldw	x, #0x5249
      008E4A F6               [ 1]  623 	ld	a, (x)
      008E4B A4 EF            [ 1]  624 	and	a, #0xef
      008E4D F7               [ 1]  625 	ld	(x), a
      008E4E                        626 00106$:
                                    627 ;	stm8s_uart2.c: 368: if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
      008E4E 0D 05            [ 1]  628 	tnz	(0x05, sp)
      008E50 27 09            [ 1]  629 	jreq	00108$
                                    630 ;	stm8s_uart2.c: 370: UART2->CR6 |=  UART2_CR6_LDUM;
      008E52 AE 52 49         [ 2]  631 	ldw	x, #0x5249
      008E55 F6               [ 1]  632 	ld	a, (x)
      008E56 AA 80            [ 1]  633 	or	a, #0x80
      008E58 F7               [ 1]  634 	ld	(x), a
      008E59 20 04            [ 2]  635 	jra	00110$
      008E5B                        636 00108$:
                                    637 ;	stm8s_uart2.c: 374: UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
      008E5B 72 17 52 49      [ 1]  638 	bres	0x5249, #7
      008E5F                        639 00110$:
      008E5F 81               [ 4]  640 	ret
                                    641 ;	stm8s_uart2.c: 384: void UART2_LINCmd(FunctionalState NewState)
                                    642 ;	-----------------------------------------
                                    643 ;	 function UART2_LINCmd
                                    644 ;	-----------------------------------------
      008E60                        645 _UART2_LINCmd:
                                    646 ;	stm8s_uart2.c: 388: if (NewState != DISABLE)
      008E60 0D 03            [ 1]  647 	tnz	(0x03, sp)
      008E62 27 09            [ 1]  648 	jreq	00102$
                                    649 ;	stm8s_uart2.c: 391: UART2->CR3 |= UART2_CR3_LINEN;
      008E64 AE 52 46         [ 2]  650 	ldw	x, #0x5246
      008E67 F6               [ 1]  651 	ld	a, (x)
      008E68 AA 40            [ 1]  652 	or	a, #0x40
      008E6A F7               [ 1]  653 	ld	(x), a
      008E6B 20 07            [ 2]  654 	jra	00104$
      008E6D                        655 00102$:
                                    656 ;	stm8s_uart2.c: 396: UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
      008E6D AE 52 46         [ 2]  657 	ldw	x, #0x5246
      008E70 F6               [ 1]  658 	ld	a, (x)
      008E71 A4 BF            [ 1]  659 	and	a, #0xbf
      008E73 F7               [ 1]  660 	ld	(x), a
      008E74                        661 00104$:
      008E74 81               [ 4]  662 	ret
                                    663 ;	stm8s_uart2.c: 406: void UART2_SmartCardCmd(FunctionalState NewState)
                                    664 ;	-----------------------------------------
                                    665 ;	 function UART2_SmartCardCmd
                                    666 ;	-----------------------------------------
      008E75                        667 _UART2_SmartCardCmd:
                                    668 ;	stm8s_uart2.c: 411: if (NewState != DISABLE)
      008E75 0D 03            [ 1]  669 	tnz	(0x03, sp)
      008E77 27 09            [ 1]  670 	jreq	00102$
                                    671 ;	stm8s_uart2.c: 414: UART2->CR5 |= UART2_CR5_SCEN;
      008E79 AE 52 48         [ 2]  672 	ldw	x, #0x5248
      008E7C F6               [ 1]  673 	ld	a, (x)
      008E7D AA 20            [ 1]  674 	or	a, #0x20
      008E7F F7               [ 1]  675 	ld	(x), a
      008E80 20 07            [ 2]  676 	jra	00104$
      008E82                        677 00102$:
                                    678 ;	stm8s_uart2.c: 419: UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
      008E82 AE 52 48         [ 2]  679 	ldw	x, #0x5248
      008E85 F6               [ 1]  680 	ld	a, (x)
      008E86 A4 DF            [ 1]  681 	and	a, #0xdf
      008E88 F7               [ 1]  682 	ld	(x), a
      008E89                        683 00104$:
      008E89 81               [ 4]  684 	ret
                                    685 ;	stm8s_uart2.c: 429: void UART2_SmartCardNACKCmd(FunctionalState NewState)
                                    686 ;	-----------------------------------------
                                    687 ;	 function UART2_SmartCardNACKCmd
                                    688 ;	-----------------------------------------
      008E8A                        689 _UART2_SmartCardNACKCmd:
                                    690 ;	stm8s_uart2.c: 434: if (NewState != DISABLE)
      008E8A 0D 03            [ 1]  691 	tnz	(0x03, sp)
      008E8C 27 09            [ 1]  692 	jreq	00102$
                                    693 ;	stm8s_uart2.c: 437: UART2->CR5 |= UART2_CR5_NACK;
      008E8E AE 52 48         [ 2]  694 	ldw	x, #0x5248
      008E91 F6               [ 1]  695 	ld	a, (x)
      008E92 AA 10            [ 1]  696 	or	a, #0x10
      008E94 F7               [ 1]  697 	ld	(x), a
      008E95 20 07            [ 2]  698 	jra	00104$
      008E97                        699 00102$:
                                    700 ;	stm8s_uart2.c: 442: UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
      008E97 AE 52 48         [ 2]  701 	ldw	x, #0x5248
      008E9A F6               [ 1]  702 	ld	a, (x)
      008E9B A4 EF            [ 1]  703 	and	a, #0xef
      008E9D F7               [ 1]  704 	ld	(x), a
      008E9E                        705 00104$:
      008E9E 81               [ 4]  706 	ret
                                    707 ;	stm8s_uart2.c: 452: void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
                                    708 ;	-----------------------------------------
                                    709 ;	 function UART2_WakeUpConfig
                                    710 ;	-----------------------------------------
      008E9F                        711 _UART2_WakeUpConfig:
                                    712 ;	stm8s_uart2.c: 456: UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
      008E9F AE 52 44         [ 2]  713 	ldw	x, #0x5244
      008EA2 F6               [ 1]  714 	ld	a, (x)
      008EA3 A4 F7            [ 1]  715 	and	a, #0xf7
      008EA5 F7               [ 1]  716 	ld	(x), a
                                    717 ;	stm8s_uart2.c: 457: UART2->CR1 |= (uint8_t)UART2_WakeUp;
      008EA6 AE 52 44         [ 2]  718 	ldw	x, #0x5244
      008EA9 F6               [ 1]  719 	ld	a, (x)
      008EAA 1A 03            [ 1]  720 	or	a, (0x03, sp)
      008EAC AE 52 44         [ 2]  721 	ldw	x, #0x5244
      008EAF F7               [ 1]  722 	ld	(x), a
      008EB0 81               [ 4]  723 	ret
                                    724 ;	stm8s_uart2.c: 466: void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
                                    725 ;	-----------------------------------------
                                    726 ;	 function UART2_ReceiverWakeUpCmd
                                    727 ;	-----------------------------------------
      008EB1                        728 _UART2_ReceiverWakeUpCmd:
                                    729 ;	stm8s_uart2.c: 470: if (NewState != DISABLE)
      008EB1 0D 03            [ 1]  730 	tnz	(0x03, sp)
      008EB3 27 09            [ 1]  731 	jreq	00102$
                                    732 ;	stm8s_uart2.c: 473: UART2->CR2 |= UART2_CR2_RWU;
      008EB5 AE 52 45         [ 2]  733 	ldw	x, #0x5245
      008EB8 F6               [ 1]  734 	ld	a, (x)
      008EB9 AA 02            [ 1]  735 	or	a, #0x02
      008EBB F7               [ 1]  736 	ld	(x), a
      008EBC 20 07            [ 2]  737 	jra	00104$
      008EBE                        738 00102$:
                                    739 ;	stm8s_uart2.c: 478: UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
      008EBE AE 52 45         [ 2]  740 	ldw	x, #0x5245
      008EC1 F6               [ 1]  741 	ld	a, (x)
      008EC2 A4 FD            [ 1]  742 	and	a, #0xfd
      008EC4 F7               [ 1]  743 	ld	(x), a
      008EC5                        744 00104$:
      008EC5 81               [ 4]  745 	ret
                                    746 ;	stm8s_uart2.c: 487: uint8_t UART2_ReceiveData8(void)
                                    747 ;	-----------------------------------------
                                    748 ;	 function UART2_ReceiveData8
                                    749 ;	-----------------------------------------
      008EC6                        750 _UART2_ReceiveData8:
                                    751 ;	stm8s_uart2.c: 489: return ((uint8_t)UART2->DR);
      008EC6 AE 52 41         [ 2]  752 	ldw	x, #0x5241
      008EC9 F6               [ 1]  753 	ld	a, (x)
      008ECA 81               [ 4]  754 	ret
                                    755 ;	stm8s_uart2.c: 497: uint16_t UART2_ReceiveData9(void)
                                    756 ;	-----------------------------------------
                                    757 ;	 function UART2_ReceiveData9
                                    758 ;	-----------------------------------------
      008ECB                        759 _UART2_ReceiveData9:
      008ECB 52 04            [ 2]  760 	sub	sp, #4
                                    761 ;	stm8s_uart2.c: 501: temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
      008ECD AE 52 44         [ 2]  762 	ldw	x, #0x5244
      008ED0 F6               [ 1]  763 	ld	a, (x)
      008ED1 0F 03            [ 1]  764 	clr	(0x03, sp)
      008ED3 A4 80            [ 1]  765 	and	a, #0x80
      008ED5 97               [ 1]  766 	ld	xl, a
      008ED6 4F               [ 1]  767 	clr	a
      008ED7 95               [ 1]  768 	ld	xh, a
      008ED8 58               [ 2]  769 	sllw	x
      008ED9 1F 01            [ 2]  770 	ldw	(0x01, sp), x
                                    771 ;	stm8s_uart2.c: 503: return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
      008EDB AE 52 41         [ 2]  772 	ldw	x, #0x5241
      008EDE F6               [ 1]  773 	ld	a, (x)
      008EDF 5F               [ 1]  774 	clrw	x
      008EE0 97               [ 1]  775 	ld	xl, a
      008EE1 1A 02            [ 1]  776 	or	a, (0x02, sp)
      008EE3 97               [ 1]  777 	ld	xl, a
      008EE4 9E               [ 1]  778 	ld	a, xh
      008EE5 1A 01            [ 1]  779 	or	a, (0x01, sp)
      008EE7 A4 01            [ 1]  780 	and	a, #0x01
      008EE9 95               [ 1]  781 	ld	xh, a
      008EEA 5B 04            [ 2]  782 	addw	sp, #4
      008EEC 81               [ 4]  783 	ret
                                    784 ;	stm8s_uart2.c: 511: void UART2_SendData8(uint8_t Data)
                                    785 ;	-----------------------------------------
                                    786 ;	 function UART2_SendData8
                                    787 ;	-----------------------------------------
      008EED                        788 _UART2_SendData8:
                                    789 ;	stm8s_uart2.c: 514: UART2->DR = Data;
      008EED AE 52 41         [ 2]  790 	ldw	x, #0x5241
      008EF0 7B 03            [ 1]  791 	ld	a, (0x03, sp)
      008EF2 F7               [ 1]  792 	ld	(x), a
      008EF3 81               [ 4]  793 	ret
                                    794 ;	stm8s_uart2.c: 522: void UART2_SendData9(uint16_t Data)
                                    795 ;	-----------------------------------------
                                    796 ;	 function UART2_SendData9
                                    797 ;	-----------------------------------------
      008EF4                        798 _UART2_SendData9:
      008EF4 88               [ 1]  799 	push	a
                                    800 ;	stm8s_uart2.c: 525: UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
      008EF5 AE 52 44         [ 2]  801 	ldw	x, #0x5244
      008EF8 F6               [ 1]  802 	ld	a, (x)
      008EF9 A4 BF            [ 1]  803 	and	a, #0xbf
      008EFB F7               [ 1]  804 	ld	(x), a
                                    805 ;	stm8s_uart2.c: 528: UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
      008EFC AE 52 44         [ 2]  806 	ldw	x, #0x5244
      008EFF F6               [ 1]  807 	ld	a, (x)
      008F00 6B 01            [ 1]  808 	ld	(0x01, sp), a
      008F02 1E 04            [ 2]  809 	ldw	x, (0x04, sp)
      008F04 54               [ 2]  810 	srlw	x
      008F05 54               [ 2]  811 	srlw	x
      008F06 9F               [ 1]  812 	ld	a, xl
      008F07 A4 40            [ 1]  813 	and	a, #0x40
      008F09 1A 01            [ 1]  814 	or	a, (0x01, sp)
      008F0B AE 52 44         [ 2]  815 	ldw	x, #0x5244
      008F0E F7               [ 1]  816 	ld	(x), a
                                    817 ;	stm8s_uart2.c: 531: UART2->DR   = (uint8_t)(Data);                    
      008F0F 7B 05            [ 1]  818 	ld	a, (0x05, sp)
      008F11 AE 52 41         [ 2]  819 	ldw	x, #0x5241
      008F14 F7               [ 1]  820 	ld	(x), a
      008F15 84               [ 1]  821 	pop	a
      008F16 81               [ 4]  822 	ret
                                    823 ;	stm8s_uart2.c: 539: void UART2_SendBreak(void)
                                    824 ;	-----------------------------------------
                                    825 ;	 function UART2_SendBreak
                                    826 ;	-----------------------------------------
      008F17                        827 _UART2_SendBreak:
                                    828 ;	stm8s_uart2.c: 541: UART2->CR2 |= UART2_CR2_SBK;
      008F17 72 10 52 45      [ 1]  829 	bset	0x5245, #0
      008F1B 81               [ 4]  830 	ret
                                    831 ;	stm8s_uart2.c: 549: void UART2_SetAddress(uint8_t UART2_Address)
                                    832 ;	-----------------------------------------
                                    833 ;	 function UART2_SetAddress
                                    834 ;	-----------------------------------------
      008F1C                        835 _UART2_SetAddress:
                                    836 ;	stm8s_uart2.c: 555: UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
      008F1C AE 52 47         [ 2]  837 	ldw	x, #0x5247
      008F1F F6               [ 1]  838 	ld	a, (x)
      008F20 A4 F0            [ 1]  839 	and	a, #0xf0
      008F22 F7               [ 1]  840 	ld	(x), a
                                    841 ;	stm8s_uart2.c: 557: UART2->CR4 |= UART2_Address;
      008F23 AE 52 47         [ 2]  842 	ldw	x, #0x5247
      008F26 F6               [ 1]  843 	ld	a, (x)
      008F27 1A 03            [ 1]  844 	or	a, (0x03, sp)
      008F29 AE 52 47         [ 2]  845 	ldw	x, #0x5247
      008F2C F7               [ 1]  846 	ld	(x), a
      008F2D 81               [ 4]  847 	ret
                                    848 ;	stm8s_uart2.c: 566: void UART2_SetGuardTime(uint8_t UART2_GuardTime)
                                    849 ;	-----------------------------------------
                                    850 ;	 function UART2_SetGuardTime
                                    851 ;	-----------------------------------------
      008F2E                        852 _UART2_SetGuardTime:
                                    853 ;	stm8s_uart2.c: 569: UART2->GTR = UART2_GuardTime;
      008F2E AE 52 4A         [ 2]  854 	ldw	x, #0x524a
      008F31 7B 03            [ 1]  855 	ld	a, (0x03, sp)
      008F33 F7               [ 1]  856 	ld	(x), a
      008F34 81               [ 4]  857 	ret
                                    858 ;	stm8s_uart2.c: 594: void UART2_SetPrescaler(uint8_t UART2_Prescaler)
                                    859 ;	-----------------------------------------
                                    860 ;	 function UART2_SetPrescaler
                                    861 ;	-----------------------------------------
      008F35                        862 _UART2_SetPrescaler:
                                    863 ;	stm8s_uart2.c: 597: UART2->PSCR = UART2_Prescaler;
      008F35 AE 52 4B         [ 2]  864 	ldw	x, #0x524b
      008F38 7B 03            [ 1]  865 	ld	a, (0x03, sp)
      008F3A F7               [ 1]  866 	ld	(x), a
      008F3B 81               [ 4]  867 	ret
                                    868 ;	stm8s_uart2.c: 606: FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
                                    869 ;	-----------------------------------------
                                    870 ;	 function UART2_GetFlagStatus
                                    871 ;	-----------------------------------------
      008F3C                        872 _UART2_GetFlagStatus:
      008F3C 88               [ 1]  873 	push	a
                                    874 ;	stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008F3D 7B 05            [ 1]  875 	ld	a, (0x05, sp)
      008F3F 6B 01            [ 1]  876 	ld	(0x01, sp), a
                                    877 ;	stm8s_uart2.c: 614: if (UART2_FLAG == UART2_FLAG_LBDF)
      008F41 1E 04            [ 2]  878 	ldw	x, (0x04, sp)
      008F43 A3 02 10         [ 2]  879 	cpw	x, #0x0210
      008F46 26 10            [ 1]  880 	jrne	00121$
                                    881 ;	stm8s_uart2.c: 616: if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008F48 AE 52 47         [ 2]  882 	ldw	x, #0x5247
      008F4B F6               [ 1]  883 	ld	a, (x)
      008F4C 14 01            [ 1]  884 	and	a, (0x01, sp)
      008F4E 4D               [ 1]  885 	tnz	a
      008F4F 27 04            [ 1]  886 	jreq	00102$
                                    887 ;	stm8s_uart2.c: 619: status = SET;
      008F51 A6 01            [ 1]  888 	ld	a, #0x01
      008F53 20 46            [ 2]  889 	jra	00122$
      008F55                        890 00102$:
                                    891 ;	stm8s_uart2.c: 624: status = RESET;
      008F55 4F               [ 1]  892 	clr	a
      008F56 20 43            [ 2]  893 	jra	00122$
      008F58                        894 00121$:
                                    895 ;	stm8s_uart2.c: 627: else if (UART2_FLAG == UART2_FLAG_SBK)
      008F58 1E 04            [ 2]  896 	ldw	x, (0x04, sp)
      008F5A A3 01 01         [ 2]  897 	cpw	x, #0x0101
      008F5D 26 10            [ 1]  898 	jrne	00118$
                                    899 ;	stm8s_uart2.c: 629: if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008F5F AE 52 45         [ 2]  900 	ldw	x, #0x5245
      008F62 F6               [ 1]  901 	ld	a, (x)
      008F63 14 01            [ 1]  902 	and	a, (0x01, sp)
      008F65 4D               [ 1]  903 	tnz	a
      008F66 27 04            [ 1]  904 	jreq	00105$
                                    905 ;	stm8s_uart2.c: 632: status = SET;
      008F68 A6 01            [ 1]  906 	ld	a, #0x01
      008F6A 20 2F            [ 2]  907 	jra	00122$
      008F6C                        908 00105$:
                                    909 ;	stm8s_uart2.c: 637: status = RESET;
      008F6C 4F               [ 1]  910 	clr	a
      008F6D 20 2C            [ 2]  911 	jra	00122$
      008F6F                        912 00118$:
                                    913 ;	stm8s_uart2.c: 640: else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
      008F6F 1E 04            [ 2]  914 	ldw	x, (0x04, sp)
      008F71 A3 03 02         [ 2]  915 	cpw	x, #0x0302
      008F74 27 07            [ 1]  916 	jreq	00113$
      008F76 1E 04            [ 2]  917 	ldw	x, (0x04, sp)
      008F78 A3 03 01         [ 2]  918 	cpw	x, #0x0301
      008F7B 26 10            [ 1]  919 	jrne	00114$
      008F7D                        920 00113$:
                                    921 ;	stm8s_uart2.c: 642: if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008F7D AE 52 49         [ 2]  922 	ldw	x, #0x5249
      008F80 F6               [ 1]  923 	ld	a, (x)
      008F81 14 01            [ 1]  924 	and	a, (0x01, sp)
      008F83 4D               [ 1]  925 	tnz	a
      008F84 27 04            [ 1]  926 	jreq	00108$
                                    927 ;	stm8s_uart2.c: 645: status = SET;
      008F86 A6 01            [ 1]  928 	ld	a, #0x01
      008F88 20 11            [ 2]  929 	jra	00122$
      008F8A                        930 00108$:
                                    931 ;	stm8s_uart2.c: 650: status = RESET;
      008F8A 4F               [ 1]  932 	clr	a
      008F8B 20 0E            [ 2]  933 	jra	00122$
      008F8D                        934 00114$:
                                    935 ;	stm8s_uart2.c: 655: if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
      008F8D AE 52 40         [ 2]  936 	ldw	x, #0x5240
      008F90 F6               [ 1]  937 	ld	a, (x)
      008F91 14 01            [ 1]  938 	and	a, (0x01, sp)
      008F93 4D               [ 1]  939 	tnz	a
      008F94 27 04            [ 1]  940 	jreq	00111$
                                    941 ;	stm8s_uart2.c: 658: status = SET;
      008F96 A6 01            [ 1]  942 	ld	a, #0x01
      008F98 20 01            [ 2]  943 	jra	00122$
      008F9A                        944 00111$:
                                    945 ;	stm8s_uart2.c: 663: status = RESET;
      008F9A 4F               [ 1]  946 	clr	a
      008F9B                        947 00122$:
                                    948 ;	stm8s_uart2.c: 668: return  status;
      008F9B 5B 01            [ 2]  949 	addw	sp, #1
      008F9D 81               [ 4]  950 	ret
                                    951 ;	stm8s_uart2.c: 699: void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
                                    952 ;	-----------------------------------------
                                    953 ;	 function UART2_ClearFlag
                                    954 ;	-----------------------------------------
      008F9E                        955 _UART2_ClearFlag:
                                    956 ;	stm8s_uart2.c: 704: if (UART2_FLAG == UART2_FLAG_RXNE)
      008F9E 1E 03            [ 2]  957 	ldw	x, (0x03, sp)
      008FA0 A3 00 20         [ 2]  958 	cpw	x, #0x0020
      008FA3 26 08            [ 1]  959 	jrne	00108$
                                    960 ;	stm8s_uart2.c: 706: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      008FA5 AE 52 40         [ 2]  961 	ldw	x, #0x5240
      008FA8 A6 DF            [ 1]  962 	ld	a, #0xdf
      008FAA F7               [ 1]  963 	ld	(x), a
      008FAB 20 24            [ 2]  964 	jra	00110$
      008FAD                        965 00108$:
                                    966 ;	stm8s_uart2.c: 709: else if (UART2_FLAG == UART2_FLAG_LBDF)
      008FAD 1E 03            [ 2]  967 	ldw	x, (0x03, sp)
      008FAF A3 02 10         [ 2]  968 	cpw	x, #0x0210
      008FB2 26 09            [ 1]  969 	jrne	00105$
                                    970 ;	stm8s_uart2.c: 711: UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
      008FB4 AE 52 47         [ 2]  971 	ldw	x, #0x5247
      008FB7 F6               [ 1]  972 	ld	a, (x)
      008FB8 A4 EF            [ 1]  973 	and	a, #0xef
      008FBA F7               [ 1]  974 	ld	(x), a
      008FBB 20 14            [ 2]  975 	jra	00110$
      008FBD                        976 00105$:
                                    977 ;	stm8s_uart2.c: 714: else if (UART2_FLAG == UART2_FLAG_LHDF)
      008FBD 1E 03            [ 2]  978 	ldw	x, (0x03, sp)
      008FBF A3 03 02         [ 2]  979 	cpw	x, #0x0302
      008FC2 26 09            [ 1]  980 	jrne	00102$
                                    981 ;	stm8s_uart2.c: 716: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      008FC4 AE 52 49         [ 2]  982 	ldw	x, #0x5249
      008FC7 F6               [ 1]  983 	ld	a, (x)
      008FC8 A4 FD            [ 1]  984 	and	a, #0xfd
      008FCA F7               [ 1]  985 	ld	(x), a
      008FCB 20 04            [ 2]  986 	jra	00110$
      008FCD                        987 00102$:
                                    988 ;	stm8s_uart2.c: 721: UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
      008FCD 72 11 52 49      [ 1]  989 	bres	0x5249, #0
      008FD1                        990 00110$:
      008FD1 81               [ 4]  991 	ret
                                    992 ;	stm8s_uart2.c: 738: ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
                                    993 ;	-----------------------------------------
                                    994 ;	 function UART2_GetITStatus
                                    995 ;	-----------------------------------------
      008FD2                        996 _UART2_GetITStatus:
      008FD2 52 06            [ 2]  997 	sub	sp, #6
                                    998 ;	stm8s_uart2.c: 750: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
      008FD4 7B 0A            [ 1]  999 	ld	a, (0x0a, sp)
      008FD6 95               [ 1] 1000 	ld	xh, a
      008FD7 A4 0F            [ 1] 1001 	and	a, #0x0f
      008FD9 97               [ 1] 1002 	ld	xl, a
      008FDA A6 01            [ 1] 1003 	ld	a, #0x01
      008FDC 6B 03            [ 1] 1004 	ld	(0x03, sp), a
      008FDE 9F               [ 1] 1005 	ld	a, xl
      008FDF 4D               [ 1] 1006 	tnz	a
      008FE0 27 05            [ 1] 1007 	jreq	00173$
      008FE2                       1008 00172$:
      008FE2 08 03            [ 1] 1009 	sll	(0x03, sp)
      008FE4 4A               [ 1] 1010 	dec	a
      008FE5 26 FB            [ 1] 1011 	jrne	00172$
      008FE7                       1012 00173$:
                                   1013 ;	stm8s_uart2.c: 752: itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
      008FE7 02               [ 1] 1014 	rlwa	x
      008FE8 4E               [ 1] 1015 	swap	a
      008FE9 A4 0F            [ 1] 1016 	and	a, #0x0f
      008FEB 01               [ 1] 1017 	rrwa	x
                                   1018 ;	stm8s_uart2.c: 754: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
      008FEC A6 01            [ 1] 1019 	ld	a, #0x01
      008FEE 6B 02            [ 1] 1020 	ld	(0x02, sp), a
      008FF0 9E               [ 1] 1021 	ld	a, xh
      008FF1 4D               [ 1] 1022 	tnz	a
      008FF2 27 05            [ 1] 1023 	jreq	00175$
      008FF4                       1024 00174$:
      008FF4 08 02            [ 1] 1025 	sll	(0x02, sp)
      008FF6 4A               [ 1] 1026 	dec	a
      008FF7 26 FB            [ 1] 1027 	jrne	00174$
      008FF9                       1028 00175$:
                                   1029 ;	stm8s_uart2.c: 757: if (UART2_IT == UART2_IT_PE)
      008FF9 1E 09            [ 2] 1030 	ldw	x, (0x09, sp)
      008FFB A3 01 00         [ 2] 1031 	cpw	x, #0x0100
      008FFE 26 1D            [ 1] 1032 	jrne	00124$
                                   1033 ;	stm8s_uart2.c: 760: enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
      009000 AE 52 44         [ 2] 1034 	ldw	x, #0x5244
      009003 F6               [ 1] 1035 	ld	a, (x)
      009004 14 02            [ 1] 1036 	and	a, (0x02, sp)
      009006 6B 06            [ 1] 1037 	ld	(0x06, sp), a
                                   1038 ;	stm8s_uart2.c: 763: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      009008 AE 52 40         [ 2] 1039 	ldw	x, #0x5240
      00900B F6               [ 1] 1040 	ld	a, (x)
      00900C 14 03            [ 1] 1041 	and	a, (0x03, sp)
      00900E 4D               [ 1] 1042 	tnz	a
      00900F 27 09            [ 1] 1043 	jreq	00102$
      009011 0D 06            [ 1] 1044 	tnz	(0x06, sp)
      009013 27 05            [ 1] 1045 	jreq	00102$
                                   1046 ;	stm8s_uart2.c: 766: pendingbitstatus = SET;
      009015 A6 01            [ 1] 1047 	ld	a, #0x01
      009017 CC 90 7D         [ 2] 1048 	jp	00125$
      00901A                       1049 00102$:
                                   1050 ;	stm8s_uart2.c: 771: pendingbitstatus = RESET;
      00901A 4F               [ 1] 1051 	clr	a
      00901B 20 60            [ 2] 1052 	jra	00125$
      00901D                       1053 00124$:
                                   1054 ;	stm8s_uart2.c: 774: else if (UART2_IT == UART2_IT_LBDF)
      00901D 1E 09            [ 2] 1055 	ldw	x, (0x09, sp)
      00901F A3 03 46         [ 2] 1056 	cpw	x, #0x0346
      009022 26 1C            [ 1] 1057 	jrne	00121$
                                   1058 ;	stm8s_uart2.c: 777: enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
      009024 AE 52 47         [ 2] 1059 	ldw	x, #0x5247
      009027 F6               [ 1] 1060 	ld	a, (x)
      009028 14 02            [ 1] 1061 	and	a, (0x02, sp)
      00902A 6B 05            [ 1] 1062 	ld	(0x05, sp), a
                                   1063 ;	stm8s_uart2.c: 779: if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
      00902C AE 52 47         [ 2] 1064 	ldw	x, #0x5247
      00902F F6               [ 1] 1065 	ld	a, (x)
      009030 14 03            [ 1] 1066 	and	a, (0x03, sp)
      009032 4D               [ 1] 1067 	tnz	a
      009033 27 08            [ 1] 1068 	jreq	00106$
      009035 0D 05            [ 1] 1069 	tnz	(0x05, sp)
      009037 27 04            [ 1] 1070 	jreq	00106$
                                   1071 ;	stm8s_uart2.c: 782: pendingbitstatus = SET;
      009039 A6 01            [ 1] 1072 	ld	a, #0x01
      00903B 20 40            [ 2] 1073 	jra	00125$
      00903D                       1074 00106$:
                                   1075 ;	stm8s_uart2.c: 787: pendingbitstatus = RESET;
      00903D 4F               [ 1] 1076 	clr	a
      00903E 20 3D            [ 2] 1077 	jra	00125$
      009040                       1078 00121$:
                                   1079 ;	stm8s_uart2.c: 790: else if (UART2_IT == UART2_IT_LHDF)
      009040 1E 09            [ 2] 1080 	ldw	x, (0x09, sp)
      009042 A3 04 12         [ 2] 1081 	cpw	x, #0x0412
      009045 26 1C            [ 1] 1082 	jrne	00118$
                                   1083 ;	stm8s_uart2.c: 793: enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
      009047 AE 52 49         [ 2] 1084 	ldw	x, #0x5249
      00904A F6               [ 1] 1085 	ld	a, (x)
      00904B 14 02            [ 1] 1086 	and	a, (0x02, sp)
      00904D 6B 01            [ 1] 1087 	ld	(0x01, sp), a
                                   1088 ;	stm8s_uart2.c: 795: if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
      00904F AE 52 49         [ 2] 1089 	ldw	x, #0x5249
      009052 F6               [ 1] 1090 	ld	a, (x)
      009053 14 03            [ 1] 1091 	and	a, (0x03, sp)
      009055 4D               [ 1] 1092 	tnz	a
      009056 27 08            [ 1] 1093 	jreq	00110$
      009058 0D 01            [ 1] 1094 	tnz	(0x01, sp)
      00905A 27 04            [ 1] 1095 	jreq	00110$
                                   1096 ;	stm8s_uart2.c: 798: pendingbitstatus = SET;
      00905C A6 01            [ 1] 1097 	ld	a, #0x01
      00905E 20 1D            [ 2] 1098 	jra	00125$
      009060                       1099 00110$:
                                   1100 ;	stm8s_uart2.c: 803: pendingbitstatus = RESET;
      009060 4F               [ 1] 1101 	clr	a
      009061 20 1A            [ 2] 1102 	jra	00125$
      009063                       1103 00118$:
                                   1104 ;	stm8s_uart2.c: 809: enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
      009063 AE 52 45         [ 2] 1105 	ldw	x, #0x5245
      009066 F6               [ 1] 1106 	ld	a, (x)
      009067 14 02            [ 1] 1107 	and	a, (0x02, sp)
      009069 6B 04            [ 1] 1108 	ld	(0x04, sp), a
                                   1109 ;	stm8s_uart2.c: 811: if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
      00906B AE 52 40         [ 2] 1110 	ldw	x, #0x5240
      00906E F6               [ 1] 1111 	ld	a, (x)
      00906F 14 03            [ 1] 1112 	and	a, (0x03, sp)
      009071 4D               [ 1] 1113 	tnz	a
      009072 27 08            [ 1] 1114 	jreq	00114$
      009074 0D 04            [ 1] 1115 	tnz	(0x04, sp)
      009076 27 04            [ 1] 1116 	jreq	00114$
                                   1117 ;	stm8s_uart2.c: 814: pendingbitstatus = SET;
      009078 A6 01            [ 1] 1118 	ld	a, #0x01
      00907A 20 01            [ 2] 1119 	jra	00125$
      00907C                       1120 00114$:
                                   1121 ;	stm8s_uart2.c: 819: pendingbitstatus = RESET;
      00907C 4F               [ 1] 1122 	clr	a
      00907D                       1123 00125$:
                                   1124 ;	stm8s_uart2.c: 823: return  pendingbitstatus;
      00907D 5B 06            [ 2] 1125 	addw	sp, #6
      00907F 81               [ 4] 1126 	ret
                                   1127 ;	stm8s_uart2.c: 852: void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
                                   1128 ;	-----------------------------------------
                                   1129 ;	 function UART2_ClearITPendingBit
                                   1130 ;	-----------------------------------------
      009080                       1131 _UART2_ClearITPendingBit:
                                   1132 ;	stm8s_uart2.c: 857: if (UART2_IT == UART2_IT_RXNE)
      009080 1E 03            [ 2] 1133 	ldw	x, (0x03, sp)
      009082 A3 02 55         [ 2] 1134 	cpw	x, #0x0255
      009085 26 08            [ 1] 1135 	jrne	00105$
                                   1136 ;	stm8s_uart2.c: 859: UART2->SR = (uint8_t)~(UART2_SR_RXNE);
      009087 AE 52 40         [ 2] 1137 	ldw	x, #0x5240
      00908A A6 DF            [ 1] 1138 	ld	a, #0xdf
      00908C F7               [ 1] 1139 	ld	(x), a
      00908D 20 17            [ 2] 1140 	jra	00107$
      00908F                       1141 00105$:
                                   1142 ;	stm8s_uart2.c: 862: else if (UART2_IT == UART2_IT_LBDF)
      00908F 1E 03            [ 2] 1143 	ldw	x, (0x03, sp)
      009091 A3 03 46         [ 2] 1144 	cpw	x, #0x0346
      009094 26 09            [ 1] 1145 	jrne	00102$
                                   1146 ;	stm8s_uart2.c: 864: UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
      009096 AE 52 47         [ 2] 1147 	ldw	x, #0x5247
      009099 F6               [ 1] 1148 	ld	a, (x)
      00909A A4 EF            [ 1] 1149 	and	a, #0xef
      00909C F7               [ 1] 1150 	ld	(x), a
      00909D 20 07            [ 2] 1151 	jra	00107$
      00909F                       1152 00102$:
                                   1153 ;	stm8s_uart2.c: 869: UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
      00909F AE 52 49         [ 2] 1154 	ldw	x, #0x5249
      0090A2 F6               [ 1] 1155 	ld	a, (x)
      0090A3 A4 FD            [ 1] 1156 	and	a, #0xfd
      0090A5 F7               [ 1] 1157 	ld	(x), a
      0090A6                       1158 00107$:
      0090A6 81               [ 4] 1159 	ret
                                   1160 	.area CODE
                                   1161 	.area INITIALIZER
                                   1162 	.area CABS (ABS)

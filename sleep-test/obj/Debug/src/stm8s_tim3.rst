                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 09 15:59:14 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8s_tim3
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _TIM3_DeInit
                                     13 	.globl _TIM3_TimeBaseInit
                                     14 	.globl _TIM3_OC1Init
                                     15 	.globl _TIM3_OC2Init
                                     16 	.globl _TIM3_ICInit
                                     17 	.globl _TIM3_PWMIConfig
                                     18 	.globl _TIM3_Cmd
                                     19 	.globl _TIM3_ITConfig
                                     20 	.globl _TIM3_UpdateDisableConfig
                                     21 	.globl _TIM3_UpdateRequestConfig
                                     22 	.globl _TIM3_SelectOnePulseMode
                                     23 	.globl _TIM3_PrescalerConfig
                                     24 	.globl _TIM3_ForcedOC1Config
                                     25 	.globl _TIM3_ForcedOC2Config
                                     26 	.globl _TIM3_ARRPreloadConfig
                                     27 	.globl _TIM3_OC1PreloadConfig
                                     28 	.globl _TIM3_OC2PreloadConfig
                                     29 	.globl _TIM3_GenerateEvent
                                     30 	.globl _TIM3_OC1PolarityConfig
                                     31 	.globl _TIM3_OC2PolarityConfig
                                     32 	.globl _TIM3_CCxCmd
                                     33 	.globl _TIM3_SelectOCxM
                                     34 	.globl _TIM3_SetCounter
                                     35 	.globl _TIM3_SetAutoreload
                                     36 	.globl _TIM3_SetCompare1
                                     37 	.globl _TIM3_SetCompare2
                                     38 	.globl _TIM3_SetIC1Prescaler
                                     39 	.globl _TIM3_SetIC2Prescaler
                                     40 	.globl _TIM3_GetCapture1
                                     41 	.globl _TIM3_GetCapture2
                                     42 	.globl _TIM3_GetCounter
                                     43 	.globl _TIM3_GetPrescaler
                                     44 	.globl _TIM3_GetFlagStatus
                                     45 	.globl _TIM3_ClearFlag
                                     46 	.globl _TIM3_GetITStatus
                                     47 	.globl _TIM3_ClearITPendingBit
                                     48 ;--------------------------------------------------------
                                     49 ; ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area DATA
                                     52 ;--------------------------------------------------------
                                     53 ; ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area INITIALIZED
                                     56 ;--------------------------------------------------------
                                     57 ; absolute external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area DABS (ABS)
                                     60 ;--------------------------------------------------------
                                     61 ; global & static initialisations
                                     62 ;--------------------------------------------------------
                                     63 	.area HOME
                                     64 	.area GSINIT
                                     65 	.area GSFINAL
                                     66 	.area GSINIT
                                     67 ;--------------------------------------------------------
                                     68 ; Home
                                     69 ;--------------------------------------------------------
                                     70 	.area HOME
                                     71 	.area HOME
                                     72 ;--------------------------------------------------------
                                     73 ; code
                                     74 ;--------------------------------------------------------
                                     75 	.area CODE
                                     76 ;	src\stm8s_tim3.c: 51: void TIM3_DeInit(void)
                                     77 ;	-----------------------------------------
                                     78 ;	 function TIM3_DeInit
                                     79 ;	-----------------------------------------
      008727                         80 _TIM3_DeInit:
                                     81 ;	src\stm8s_tim3.c: 53: TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
      008727 AE 53 20         [ 2]   82 	ldw	x, #0x5320
      00872A 7F               [ 1]   83 	clr	(x)
                                     84 ;	src\stm8s_tim3.c: 54: TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
      00872B AE 53 21         [ 2]   85 	ldw	x, #0x5321
      00872E 7F               [ 1]   86 	clr	(x)
                                     87 ;	src\stm8s_tim3.c: 55: TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
      00872F AE 53 23         [ 2]   88 	ldw	x, #0x5323
      008732 7F               [ 1]   89 	clr	(x)
                                     90 ;	src\stm8s_tim3.c: 58: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      008733 AE 53 27         [ 2]   91 	ldw	x, #0x5327
      008736 7F               [ 1]   92 	clr	(x)
                                     93 ;	src\stm8s_tim3.c: 61: TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
      008737 AE 53 27         [ 2]   94 	ldw	x, #0x5327
      00873A 7F               [ 1]   95 	clr	(x)
                                     96 ;	src\stm8s_tim3.c: 62: TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
      00873B AE 53 25         [ 2]   97 	ldw	x, #0x5325
      00873E 7F               [ 1]   98 	clr	(x)
                                     99 ;	src\stm8s_tim3.c: 63: TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
      00873F AE 53 26         [ 2]  100 	ldw	x, #0x5326
      008742 7F               [ 1]  101 	clr	(x)
                                    102 ;	src\stm8s_tim3.c: 64: TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
      008743 AE 53 28         [ 2]  103 	ldw	x, #0x5328
      008746 7F               [ 1]  104 	clr	(x)
                                    105 ;	src\stm8s_tim3.c: 65: TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
      008747 AE 53 29         [ 2]  106 	ldw	x, #0x5329
      00874A 7F               [ 1]  107 	clr	(x)
                                    108 ;	src\stm8s_tim3.c: 66: TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
      00874B AE 53 2A         [ 2]  109 	ldw	x, #0x532a
      00874E 7F               [ 1]  110 	clr	(x)
                                    111 ;	src\stm8s_tim3.c: 67: TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
      00874F AE 53 2B         [ 2]  112 	ldw	x, #0x532b
      008752 A6 FF            [ 1]  113 	ld	a, #0xff
      008754 F7               [ 1]  114 	ld	(x), a
                                    115 ;	src\stm8s_tim3.c: 68: TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
      008755 AE 53 2C         [ 2]  116 	ldw	x, #0x532c
      008758 A6 FF            [ 1]  117 	ld	a, #0xff
      00875A F7               [ 1]  118 	ld	(x), a
                                    119 ;	src\stm8s_tim3.c: 69: TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
      00875B AE 53 2D         [ 2]  120 	ldw	x, #0x532d
      00875E 7F               [ 1]  121 	clr	(x)
                                    122 ;	src\stm8s_tim3.c: 70: TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
      00875F AE 53 2E         [ 2]  123 	ldw	x, #0x532e
      008762 7F               [ 1]  124 	clr	(x)
                                    125 ;	src\stm8s_tim3.c: 71: TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
      008763 AE 53 2F         [ 2]  126 	ldw	x, #0x532f
      008766 7F               [ 1]  127 	clr	(x)
                                    128 ;	src\stm8s_tim3.c: 72: TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
      008767 AE 53 30         [ 2]  129 	ldw	x, #0x5330
      00876A 7F               [ 1]  130 	clr	(x)
                                    131 ;	src\stm8s_tim3.c: 73: TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
      00876B AE 53 22         [ 2]  132 	ldw	x, #0x5322
      00876E 7F               [ 1]  133 	clr	(x)
      00876F 81               [ 4]  134 	ret
                                    135 ;	src\stm8s_tim3.c: 82: void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
                                    136 ;	-----------------------------------------
                                    137 ;	 function TIM3_TimeBaseInit
                                    138 ;	-----------------------------------------
      008770                        139 _TIM3_TimeBaseInit:
      008770 52 02            [ 2]  140 	sub	sp, #2
                                    141 ;	src\stm8s_tim3.c: 86: TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
      008772 AE 53 2A         [ 2]  142 	ldw	x, #0x532a
      008775 7B 05            [ 1]  143 	ld	a, (0x05, sp)
      008777 F7               [ 1]  144 	ld	(x), a
                                    145 ;	src\stm8s_tim3.c: 88: TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
      008778 7B 06            [ 1]  146 	ld	a, (0x06, sp)
      00877A 0F 01            [ 1]  147 	clr	(0x01, sp)
      00877C AE 53 2B         [ 2]  148 	ldw	x, #0x532b
      00877F F7               [ 1]  149 	ld	(x), a
                                    150 ;	src\stm8s_tim3.c: 89: TIM3->ARRL = (uint8_t)(TIM3_Period);
      008780 7B 07            [ 1]  151 	ld	a, (0x07, sp)
      008782 AE 53 2C         [ 2]  152 	ldw	x, #0x532c
      008785 F7               [ 1]  153 	ld	(x), a
      008786 5B 02            [ 2]  154 	addw	sp, #2
      008788 81               [ 4]  155 	ret
                                    156 ;	src\stm8s_tim3.c: 100: void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    157 ;	-----------------------------------------
                                    158 ;	 function TIM3_OC1Init
                                    159 ;	-----------------------------------------
      008789                        160 _TIM3_OC1Init:
      008789 52 04            [ 2]  161 	sub	sp, #4
                                    162 ;	src\stm8s_tim3.c: 111: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
      00878B AE 53 27         [ 2]  163 	ldw	x, #0x5327
      00878E F6               [ 1]  164 	ld	a, (x)
      00878F A4 FC            [ 1]  165 	and	a, #0xfc
      008791 F7               [ 1]  166 	ld	(x), a
                                    167 ;	src\stm8s_tim3.c: 113: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
      008792 AE 53 27         [ 2]  168 	ldw	x, #0x5327
      008795 F6               [ 1]  169 	ld	a, (x)
      008796 6B 04            [ 1]  170 	ld	(0x04, sp), a
      008798 7B 08            [ 1]  171 	ld	a, (0x08, sp)
      00879A A4 01            [ 1]  172 	and	a, #0x01
      00879C 6B 03            [ 1]  173 	ld	(0x03, sp), a
      00879E 7B 0B            [ 1]  174 	ld	a, (0x0b, sp)
      0087A0 A4 02            [ 1]  175 	and	a, #0x02
      0087A2 1A 03            [ 1]  176 	or	a, (0x03, sp)
      0087A4 1A 04            [ 1]  177 	or	a, (0x04, sp)
      0087A6 AE 53 27         [ 2]  178 	ldw	x, #0x5327
      0087A9 F7               [ 1]  179 	ld	(x), a
                                    180 ;	src\stm8s_tim3.c: 116: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      0087AA AE 53 25         [ 2]  181 	ldw	x, #0x5325
      0087AD F6               [ 1]  182 	ld	a, (x)
      0087AE A4 8F            [ 1]  183 	and	a, #0x8f
      0087B0 1A 07            [ 1]  184 	or	a, (0x07, sp)
      0087B2 AE 53 25         [ 2]  185 	ldw	x, #0x5325
      0087B5 F7               [ 1]  186 	ld	(x), a
                                    187 ;	src\stm8s_tim3.c: 119: TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
      0087B6 7B 09            [ 1]  188 	ld	a, (0x09, sp)
      0087B8 0F 01            [ 1]  189 	clr	(0x01, sp)
      0087BA AE 53 2D         [ 2]  190 	ldw	x, #0x532d
      0087BD F7               [ 1]  191 	ld	(x), a
                                    192 ;	src\stm8s_tim3.c: 120: TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
      0087BE 7B 0A            [ 1]  193 	ld	a, (0x0a, sp)
      0087C0 AE 53 2E         [ 2]  194 	ldw	x, #0x532e
      0087C3 F7               [ 1]  195 	ld	(x), a
      0087C4 5B 04            [ 2]  196 	addw	sp, #4
      0087C6 81               [ 4]  197 	ret
                                    198 ;	src\stm8s_tim3.c: 131: void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
                                    199 ;	-----------------------------------------
                                    200 ;	 function TIM3_OC2Init
                                    201 ;	-----------------------------------------
      0087C7                        202 _TIM3_OC2Init:
      0087C7 52 04            [ 2]  203 	sub	sp, #4
                                    204 ;	src\stm8s_tim3.c: 143: TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
      0087C9 AE 53 27         [ 2]  205 	ldw	x, #0x5327
      0087CC F6               [ 1]  206 	ld	a, (x)
      0087CD A4 CF            [ 1]  207 	and	a, #0xcf
      0087CF F7               [ 1]  208 	ld	(x), a
                                    209 ;	src\stm8s_tim3.c: 145: TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
      0087D0 AE 53 27         [ 2]  210 	ldw	x, #0x5327
      0087D3 F6               [ 1]  211 	ld	a, (x)
      0087D4 6B 04            [ 1]  212 	ld	(0x04, sp), a
      0087D6 7B 08            [ 1]  213 	ld	a, (0x08, sp)
      0087D8 A4 10            [ 1]  214 	and	a, #0x10
      0087DA 6B 03            [ 1]  215 	ld	(0x03, sp), a
      0087DC 7B 0B            [ 1]  216 	ld	a, (0x0b, sp)
      0087DE A4 20            [ 1]  217 	and	a, #0x20
      0087E0 1A 03            [ 1]  218 	or	a, (0x03, sp)
      0087E2 1A 04            [ 1]  219 	or	a, (0x04, sp)
      0087E4 AE 53 27         [ 2]  220 	ldw	x, #0x5327
      0087E7 F7               [ 1]  221 	ld	(x), a
                                    222 ;	src\stm8s_tim3.c: 149: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      0087E8 AE 53 26         [ 2]  223 	ldw	x, #0x5326
      0087EB F6               [ 1]  224 	ld	a, (x)
      0087EC A4 8F            [ 1]  225 	and	a, #0x8f
      0087EE 1A 07            [ 1]  226 	or	a, (0x07, sp)
      0087F0 AE 53 26         [ 2]  227 	ldw	x, #0x5326
      0087F3 F7               [ 1]  228 	ld	(x), a
                                    229 ;	src\stm8s_tim3.c: 153: TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
      0087F4 7B 09            [ 1]  230 	ld	a, (0x09, sp)
      0087F6 0F 01            [ 1]  231 	clr	(0x01, sp)
      0087F8 AE 53 2F         [ 2]  232 	ldw	x, #0x532f
      0087FB F7               [ 1]  233 	ld	(x), a
                                    234 ;	src\stm8s_tim3.c: 154: TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
      0087FC 7B 0A            [ 1]  235 	ld	a, (0x0a, sp)
      0087FE AE 53 30         [ 2]  236 	ldw	x, #0x5330
      008801 F7               [ 1]  237 	ld	(x), a
      008802 5B 04            [ 2]  238 	addw	sp, #4
      008804 81               [ 4]  239 	ret
                                    240 ;	src\stm8s_tim3.c: 166: void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
                                    241 ;	-----------------------------------------
                                    242 ;	 function TIM3_ICInit
                                    243 ;	-----------------------------------------
      008805                        244 _TIM3_ICInit:
                                    245 ;	src\stm8s_tim3.c: 179: if (TIM3_Channel != TIM3_CHANNEL_2)
      008805 7B 03            [ 1]  246 	ld	a, (0x03, sp)
      008807 A1 01            [ 1]  247 	cp	a, #0x01
      008809 27 17            [ 1]  248 	jreq	00102$
                                    249 ;	src\stm8s_tim3.c: 182: TI1_Config((uint8_t)TIM3_ICPolarity,
      00880B 7B 07            [ 1]  250 	ld	a, (0x07, sp)
      00880D 88               [ 1]  251 	push	a
      00880E 7B 06            [ 1]  252 	ld	a, (0x06, sp)
      008810 88               [ 1]  253 	push	a
      008811 7B 06            [ 1]  254 	ld	a, (0x06, sp)
      008813 88               [ 1]  255 	push	a
      008814 CD 8B 63         [ 4]  256 	call	_TI1_Config
      008817 5B 03            [ 2]  257 	addw	sp, #3
                                    258 ;	src\stm8s_tim3.c: 187: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      008819 7B 06            [ 1]  259 	ld	a, (0x06, sp)
      00881B 88               [ 1]  260 	push	a
      00881C CD 8A 63         [ 4]  261 	call	_TIM3_SetIC1Prescaler
      00881F 84               [ 1]  262 	pop	a
      008820 20 15            [ 2]  263 	jra	00104$
      008822                        264 00102$:
                                    265 ;	src\stm8s_tim3.c: 192: TI2_Config((uint8_t)TIM3_ICPolarity,
      008822 7B 07            [ 1]  266 	ld	a, (0x07, sp)
      008824 88               [ 1]  267 	push	a
      008825 7B 06            [ 1]  268 	ld	a, (0x06, sp)
      008827 88               [ 1]  269 	push	a
      008828 7B 06            [ 1]  270 	ld	a, (0x06, sp)
      00882A 88               [ 1]  271 	push	a
      00882B CD 8B 9B         [ 4]  272 	call	_TI2_Config
      00882E 5B 03            [ 2]  273 	addw	sp, #3
                                    274 ;	src\stm8s_tim3.c: 197: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      008830 7B 06            [ 1]  275 	ld	a, (0x06, sp)
      008832 88               [ 1]  276 	push	a
      008833 CD 8A 70         [ 4]  277 	call	_TIM3_SetIC2Prescaler
      008836 84               [ 1]  278 	pop	a
      008837                        279 00104$:
      008837 81               [ 4]  280 	ret
                                    281 ;	src\stm8s_tim3.c: 210: void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
                                    282 ;	-----------------------------------------
                                    283 ;	 function TIM3_PWMIConfig
                                    284 ;	-----------------------------------------
      008838                        285 _TIM3_PWMIConfig:
      008838 52 02            [ 2]  286 	sub	sp, #2
                                    287 ;	src\stm8s_tim3.c: 226: if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
      00883A 7B 06            [ 1]  288 	ld	a, (0x06, sp)
      00883C A1 44            [ 1]  289 	cp	a, #0x44
      00883E 27 06            [ 1]  290 	jreq	00102$
                                    291 ;	src\stm8s_tim3.c: 228: icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
      008840 A6 44            [ 1]  292 	ld	a, #0x44
      008842 6B 02            [ 1]  293 	ld	(0x02, sp), a
      008844 20 02            [ 2]  294 	jra	00103$
      008846                        295 00102$:
                                    296 ;	src\stm8s_tim3.c: 232: icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
      008846 0F 02            [ 1]  297 	clr	(0x02, sp)
      008848                        298 00103$:
                                    299 ;	src\stm8s_tim3.c: 236: if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
      008848 7B 07            [ 1]  300 	ld	a, (0x07, sp)
      00884A A1 01            [ 1]  301 	cp	a, #0x01
      00884C 26 06            [ 1]  302 	jrne	00105$
                                    303 ;	src\stm8s_tim3.c: 238: icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
      00884E A6 02            [ 1]  304 	ld	a, #0x02
      008850 6B 01            [ 1]  305 	ld	(0x01, sp), a
      008852 20 04            [ 2]  306 	jra	00106$
      008854                        307 00105$:
                                    308 ;	src\stm8s_tim3.c: 242: icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
      008854 A6 01            [ 1]  309 	ld	a, #0x01
      008856 6B 01            [ 1]  310 	ld	(0x01, sp), a
      008858                        311 00106$:
                                    312 ;	src\stm8s_tim3.c: 245: if (TIM3_Channel != TIM3_CHANNEL_2)
      008858 7B 05            [ 1]  313 	ld	a, (0x05, sp)
      00885A A1 01            [ 1]  314 	cp	a, #0x01
      00885C 27 2C            [ 1]  315 	jreq	00108$
                                    316 ;	src\stm8s_tim3.c: 248: TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      00885E 7B 09            [ 1]  317 	ld	a, (0x09, sp)
      008860 88               [ 1]  318 	push	a
      008861 7B 08            [ 1]  319 	ld	a, (0x08, sp)
      008863 88               [ 1]  320 	push	a
      008864 7B 08            [ 1]  321 	ld	a, (0x08, sp)
      008866 88               [ 1]  322 	push	a
      008867 CD 8B 63         [ 4]  323 	call	_TI1_Config
      00886A 5B 03            [ 2]  324 	addw	sp, #3
                                    325 ;	src\stm8s_tim3.c: 252: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      00886C 7B 08            [ 1]  326 	ld	a, (0x08, sp)
      00886E 88               [ 1]  327 	push	a
      00886F CD 8A 63         [ 4]  328 	call	_TIM3_SetIC1Prescaler
      008872 84               [ 1]  329 	pop	a
                                    330 ;	src\stm8s_tim3.c: 255: TI2_Config(icpolarity, icselection, TIM3_ICFilter);
      008873 7B 09            [ 1]  331 	ld	a, (0x09, sp)
      008875 88               [ 1]  332 	push	a
      008876 7B 02            [ 1]  333 	ld	a, (0x02, sp)
      008878 88               [ 1]  334 	push	a
      008879 7B 04            [ 1]  335 	ld	a, (0x04, sp)
      00887B 88               [ 1]  336 	push	a
      00887C CD 8B 9B         [ 4]  337 	call	_TI2_Config
      00887F 5B 03            [ 2]  338 	addw	sp, #3
                                    339 ;	src\stm8s_tim3.c: 258: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      008881 7B 08            [ 1]  340 	ld	a, (0x08, sp)
      008883 88               [ 1]  341 	push	a
      008884 CD 8A 70         [ 4]  342 	call	_TIM3_SetIC2Prescaler
      008887 84               [ 1]  343 	pop	a
      008888 20 2A            [ 2]  344 	jra	00110$
      00888A                        345 00108$:
                                    346 ;	src\stm8s_tim3.c: 263: TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
      00888A 7B 09            [ 1]  347 	ld	a, (0x09, sp)
      00888C 88               [ 1]  348 	push	a
      00888D 7B 08            [ 1]  349 	ld	a, (0x08, sp)
      00888F 88               [ 1]  350 	push	a
      008890 7B 08            [ 1]  351 	ld	a, (0x08, sp)
      008892 88               [ 1]  352 	push	a
      008893 CD 8B 9B         [ 4]  353 	call	_TI2_Config
      008896 5B 03            [ 2]  354 	addw	sp, #3
                                    355 ;	src\stm8s_tim3.c: 267: TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
      008898 7B 08            [ 1]  356 	ld	a, (0x08, sp)
      00889A 88               [ 1]  357 	push	a
      00889B CD 8A 70         [ 4]  358 	call	_TIM3_SetIC2Prescaler
      00889E 84               [ 1]  359 	pop	a
                                    360 ;	src\stm8s_tim3.c: 270: TI1_Config(icpolarity, icselection, TIM3_ICFilter);
      00889F 7B 09            [ 1]  361 	ld	a, (0x09, sp)
      0088A1 88               [ 1]  362 	push	a
      0088A2 7B 02            [ 1]  363 	ld	a, (0x02, sp)
      0088A4 88               [ 1]  364 	push	a
      0088A5 7B 04            [ 1]  365 	ld	a, (0x04, sp)
      0088A7 88               [ 1]  366 	push	a
      0088A8 CD 8B 63         [ 4]  367 	call	_TI1_Config
      0088AB 5B 03            [ 2]  368 	addw	sp, #3
                                    369 ;	src\stm8s_tim3.c: 273: TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
      0088AD 7B 08            [ 1]  370 	ld	a, (0x08, sp)
      0088AF 88               [ 1]  371 	push	a
      0088B0 CD 8A 63         [ 4]  372 	call	_TIM3_SetIC1Prescaler
      0088B3 84               [ 1]  373 	pop	a
      0088B4                        374 00110$:
      0088B4 5B 02            [ 2]  375 	addw	sp, #2
      0088B6 81               [ 4]  376 	ret
                                    377 ;	src\stm8s_tim3.c: 283: void TIM3_Cmd(FunctionalState NewState)
                                    378 ;	-----------------------------------------
                                    379 ;	 function TIM3_Cmd
                                    380 ;	-----------------------------------------
      0088B7                        381 _TIM3_Cmd:
                                    382 ;	src\stm8s_tim3.c: 289: if (NewState != DISABLE)
      0088B7 0D 03            [ 1]  383 	tnz	(0x03, sp)
      0088B9 27 09            [ 1]  384 	jreq	00102$
                                    385 ;	src\stm8s_tim3.c: 291: TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
      0088BB AE 53 20         [ 2]  386 	ldw	x, #0x5320
      0088BE F6               [ 1]  387 	ld	a, (x)
      0088BF AA 01            [ 1]  388 	or	a, #0x01
      0088C1 F7               [ 1]  389 	ld	(x), a
      0088C2 20 04            [ 2]  390 	jra	00104$
      0088C4                        391 00102$:
                                    392 ;	src\stm8s_tim3.c: 295: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
      0088C4 72 11 53 20      [ 1]  393 	bres	0x5320, #0
      0088C8                        394 00104$:
      0088C8 81               [ 4]  395 	ret
                                    396 ;	src\stm8s_tim3.c: 311: void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
                                    397 ;	-----------------------------------------
                                    398 ;	 function TIM3_ITConfig
                                    399 ;	-----------------------------------------
      0088C9                        400 _TIM3_ITConfig:
      0088C9 88               [ 1]  401 	push	a
                                    402 ;	src\stm8s_tim3.c: 317: if (NewState != DISABLE)
      0088CA 0D 05            [ 1]  403 	tnz	(0x05, sp)
      0088CC 27 0C            [ 1]  404 	jreq	00102$
                                    405 ;	src\stm8s_tim3.c: 320: TIM3->IER |= (uint8_t)TIM3_IT;
      0088CE AE 53 21         [ 2]  406 	ldw	x, #0x5321
      0088D1 F6               [ 1]  407 	ld	a, (x)
      0088D2 1A 04            [ 1]  408 	or	a, (0x04, sp)
      0088D4 AE 53 21         [ 2]  409 	ldw	x, #0x5321
      0088D7 F7               [ 1]  410 	ld	(x), a
      0088D8 20 0F            [ 2]  411 	jra	00104$
      0088DA                        412 00102$:
                                    413 ;	src\stm8s_tim3.c: 325: TIM3->IER &= (uint8_t)(~TIM3_IT);
      0088DA AE 53 21         [ 2]  414 	ldw	x, #0x5321
      0088DD F6               [ 1]  415 	ld	a, (x)
      0088DE 6B 01            [ 1]  416 	ld	(0x01, sp), a
      0088E0 7B 04            [ 1]  417 	ld	a, (0x04, sp)
      0088E2 43               [ 1]  418 	cpl	a
      0088E3 14 01            [ 1]  419 	and	a, (0x01, sp)
      0088E5 AE 53 21         [ 2]  420 	ldw	x, #0x5321
      0088E8 F7               [ 1]  421 	ld	(x), a
      0088E9                        422 00104$:
      0088E9 84               [ 1]  423 	pop	a
      0088EA 81               [ 4]  424 	ret
                                    425 ;	src\stm8s_tim3.c: 335: void TIM3_UpdateDisableConfig(FunctionalState NewState)
                                    426 ;	-----------------------------------------
                                    427 ;	 function TIM3_UpdateDisableConfig
                                    428 ;	-----------------------------------------
      0088EB                        429 _TIM3_UpdateDisableConfig:
                                    430 ;	src\stm8s_tim3.c: 341: if (NewState != DISABLE)
      0088EB 0D 03            [ 1]  431 	tnz	(0x03, sp)
      0088ED 27 09            [ 1]  432 	jreq	00102$
                                    433 ;	src\stm8s_tim3.c: 343: TIM3->CR1 |= TIM3_CR1_UDIS;
      0088EF AE 53 20         [ 2]  434 	ldw	x, #0x5320
      0088F2 F6               [ 1]  435 	ld	a, (x)
      0088F3 AA 02            [ 1]  436 	or	a, #0x02
      0088F5 F7               [ 1]  437 	ld	(x), a
      0088F6 20 07            [ 2]  438 	jra	00104$
      0088F8                        439 00102$:
                                    440 ;	src\stm8s_tim3.c: 347: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
      0088F8 AE 53 20         [ 2]  441 	ldw	x, #0x5320
      0088FB F6               [ 1]  442 	ld	a, (x)
      0088FC A4 FD            [ 1]  443 	and	a, #0xfd
      0088FE F7               [ 1]  444 	ld	(x), a
      0088FF                        445 00104$:
      0088FF 81               [ 4]  446 	ret
                                    447 ;	src\stm8s_tim3.c: 359: void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
                                    448 ;	-----------------------------------------
                                    449 ;	 function TIM3_UpdateRequestConfig
                                    450 ;	-----------------------------------------
      008900                        451 _TIM3_UpdateRequestConfig:
                                    452 ;	src\stm8s_tim3.c: 365: if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
      008900 0D 03            [ 1]  453 	tnz	(0x03, sp)
      008902 27 09            [ 1]  454 	jreq	00102$
                                    455 ;	src\stm8s_tim3.c: 367: TIM3->CR1 |= TIM3_CR1_URS;
      008904 AE 53 20         [ 2]  456 	ldw	x, #0x5320
      008907 F6               [ 1]  457 	ld	a, (x)
      008908 AA 04            [ 1]  458 	or	a, #0x04
      00890A F7               [ 1]  459 	ld	(x), a
      00890B 20 07            [ 2]  460 	jra	00104$
      00890D                        461 00102$:
                                    462 ;	src\stm8s_tim3.c: 371: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
      00890D AE 53 20         [ 2]  463 	ldw	x, #0x5320
      008910 F6               [ 1]  464 	ld	a, (x)
      008911 A4 FB            [ 1]  465 	and	a, #0xfb
      008913 F7               [ 1]  466 	ld	(x), a
      008914                        467 00104$:
      008914 81               [ 4]  468 	ret
                                    469 ;	src\stm8s_tim3.c: 383: void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
                                    470 ;	-----------------------------------------
                                    471 ;	 function TIM3_SelectOnePulseMode
                                    472 ;	-----------------------------------------
      008915                        473 _TIM3_SelectOnePulseMode:
                                    474 ;	src\stm8s_tim3.c: 389: if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
      008915 0D 03            [ 1]  475 	tnz	(0x03, sp)
      008917 27 09            [ 1]  476 	jreq	00102$
                                    477 ;	src\stm8s_tim3.c: 391: TIM3->CR1 |= TIM3_CR1_OPM;
      008919 AE 53 20         [ 2]  478 	ldw	x, #0x5320
      00891C F6               [ 1]  479 	ld	a, (x)
      00891D AA 08            [ 1]  480 	or	a, #0x08
      00891F F7               [ 1]  481 	ld	(x), a
      008920 20 07            [ 2]  482 	jra	00104$
      008922                        483 00102$:
                                    484 ;	src\stm8s_tim3.c: 395: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
      008922 AE 53 20         [ 2]  485 	ldw	x, #0x5320
      008925 F6               [ 1]  486 	ld	a, (x)
      008926 A4 F7            [ 1]  487 	and	a, #0xf7
      008928 F7               [ 1]  488 	ld	(x), a
      008929                        489 00104$:
      008929 81               [ 4]  490 	ret
                                    491 ;	src\stm8s_tim3.c: 427: void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
                                    492 ;	-----------------------------------------
                                    493 ;	 function TIM3_PrescalerConfig
                                    494 ;	-----------------------------------------
      00892A                        495 _TIM3_PrescalerConfig:
                                    496 ;	src\stm8s_tim3.c: 435: TIM3->PSCR = (uint8_t)Prescaler;
      00892A AE 53 2A         [ 2]  497 	ldw	x, #0x532a
      00892D 7B 03            [ 1]  498 	ld	a, (0x03, sp)
      00892F F7               [ 1]  499 	ld	(x), a
                                    500 ;	src\stm8s_tim3.c: 438: TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
      008930 AE 53 24         [ 2]  501 	ldw	x, #0x5324
      008933 7B 04            [ 1]  502 	ld	a, (0x04, sp)
      008935 F7               [ 1]  503 	ld	(x), a
      008936 81               [ 4]  504 	ret
                                    505 ;	src\stm8s_tim3.c: 450: void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    506 ;	-----------------------------------------
                                    507 ;	 function TIM3_ForcedOC1Config
                                    508 ;	-----------------------------------------
      008937                        509 _TIM3_ForcedOC1Config:
                                    510 ;	src\stm8s_tim3.c: 456: TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
      008937 AE 53 25         [ 2]  511 	ldw	x, #0x5325
      00893A F6               [ 1]  512 	ld	a, (x)
      00893B A4 8F            [ 1]  513 	and	a, #0x8f
      00893D 1A 03            [ 1]  514 	or	a, (0x03, sp)
      00893F AE 53 25         [ 2]  515 	ldw	x, #0x5325
      008942 F7               [ 1]  516 	ld	(x), a
      008943 81               [ 4]  517 	ret
                                    518 ;	src\stm8s_tim3.c: 468: void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
                                    519 ;	-----------------------------------------
                                    520 ;	 function TIM3_ForcedOC2Config
                                    521 ;	-----------------------------------------
      008944                        522 _TIM3_ForcedOC2Config:
                                    523 ;	src\stm8s_tim3.c: 474: TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
      008944 AE 53 26         [ 2]  524 	ldw	x, #0x5326
      008947 F6               [ 1]  525 	ld	a, (x)
      008948 A4 8F            [ 1]  526 	and	a, #0x8f
      00894A 1A 03            [ 1]  527 	or	a, (0x03, sp)
      00894C AE 53 26         [ 2]  528 	ldw	x, #0x5326
      00894F F7               [ 1]  529 	ld	(x), a
      008950 81               [ 4]  530 	ret
                                    531 ;	src\stm8s_tim3.c: 483: void TIM3_ARRPreloadConfig(FunctionalState NewState)
                                    532 ;	-----------------------------------------
                                    533 ;	 function TIM3_ARRPreloadConfig
                                    534 ;	-----------------------------------------
      008951                        535 _TIM3_ARRPreloadConfig:
                                    536 ;	src\stm8s_tim3.c: 489: if (NewState != DISABLE)
      008951 0D 03            [ 1]  537 	tnz	(0x03, sp)
      008953 27 09            [ 1]  538 	jreq	00102$
                                    539 ;	src\stm8s_tim3.c: 491: TIM3->CR1 |= TIM3_CR1_ARPE;
      008955 AE 53 20         [ 2]  540 	ldw	x, #0x5320
      008958 F6               [ 1]  541 	ld	a, (x)
      008959 AA 80            [ 1]  542 	or	a, #0x80
      00895B F7               [ 1]  543 	ld	(x), a
      00895C 20 04            [ 2]  544 	jra	00104$
      00895E                        545 00102$:
                                    546 ;	src\stm8s_tim3.c: 495: TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
      00895E 72 17 53 20      [ 1]  547 	bres	0x5320, #7
      008962                        548 00104$:
      008962 81               [ 4]  549 	ret
                                    550 ;	src\stm8s_tim3.c: 505: void TIM3_OC1PreloadConfig(FunctionalState NewState)
                                    551 ;	-----------------------------------------
                                    552 ;	 function TIM3_OC1PreloadConfig
                                    553 ;	-----------------------------------------
      008963                        554 _TIM3_OC1PreloadConfig:
                                    555 ;	src\stm8s_tim3.c: 511: if (NewState != DISABLE)
      008963 0D 03            [ 1]  556 	tnz	(0x03, sp)
      008965 27 09            [ 1]  557 	jreq	00102$
                                    558 ;	src\stm8s_tim3.c: 513: TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
      008967 AE 53 25         [ 2]  559 	ldw	x, #0x5325
      00896A F6               [ 1]  560 	ld	a, (x)
      00896B AA 08            [ 1]  561 	or	a, #0x08
      00896D F7               [ 1]  562 	ld	(x), a
      00896E 20 07            [ 2]  563 	jra	00104$
      008970                        564 00102$:
                                    565 ;	src\stm8s_tim3.c: 517: TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      008970 AE 53 25         [ 2]  566 	ldw	x, #0x5325
      008973 F6               [ 1]  567 	ld	a, (x)
      008974 A4 F7            [ 1]  568 	and	a, #0xf7
      008976 F7               [ 1]  569 	ld	(x), a
      008977                        570 00104$:
      008977 81               [ 4]  571 	ret
                                    572 ;	src\stm8s_tim3.c: 527: void TIM3_OC2PreloadConfig(FunctionalState NewState)
                                    573 ;	-----------------------------------------
                                    574 ;	 function TIM3_OC2PreloadConfig
                                    575 ;	-----------------------------------------
      008978                        576 _TIM3_OC2PreloadConfig:
                                    577 ;	src\stm8s_tim3.c: 533: if (NewState != DISABLE)
      008978 0D 03            [ 1]  578 	tnz	(0x03, sp)
      00897A 27 09            [ 1]  579 	jreq	00102$
                                    580 ;	src\stm8s_tim3.c: 535: TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
      00897C AE 53 26         [ 2]  581 	ldw	x, #0x5326
      00897F F6               [ 1]  582 	ld	a, (x)
      008980 AA 08            [ 1]  583 	or	a, #0x08
      008982 F7               [ 1]  584 	ld	(x), a
      008983 20 07            [ 2]  585 	jra	00104$
      008985                        586 00102$:
                                    587 ;	src\stm8s_tim3.c: 539: TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
      008985 AE 53 26         [ 2]  588 	ldw	x, #0x5326
      008988 F6               [ 1]  589 	ld	a, (x)
      008989 A4 F7            [ 1]  590 	and	a, #0xf7
      00898B F7               [ 1]  591 	ld	(x), a
      00898C                        592 00104$:
      00898C 81               [ 4]  593 	ret
                                    594 ;	src\stm8s_tim3.c: 552: void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
                                    595 ;	-----------------------------------------
                                    596 ;	 function TIM3_GenerateEvent
                                    597 ;	-----------------------------------------
      00898D                        598 _TIM3_GenerateEvent:
                                    599 ;	src\stm8s_tim3.c: 558: TIM3->EGR = (uint8_t)TIM3_EventSource;
      00898D AE 53 24         [ 2]  600 	ldw	x, #0x5324
      008990 7B 03            [ 1]  601 	ld	a, (0x03, sp)
      008992 F7               [ 1]  602 	ld	(x), a
      008993 81               [ 4]  603 	ret
                                    604 ;	src\stm8s_tim3.c: 569: void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                    605 ;	-----------------------------------------
                                    606 ;	 function TIM3_OC1PolarityConfig
                                    607 ;	-----------------------------------------
      008994                        608 _TIM3_OC1PolarityConfig:
                                    609 ;	src\stm8s_tim3.c: 575: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      008994 0D 03            [ 1]  610 	tnz	(0x03, sp)
      008996 27 09            [ 1]  611 	jreq	00102$
                                    612 ;	src\stm8s_tim3.c: 577: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      008998 AE 53 27         [ 2]  613 	ldw	x, #0x5327
      00899B F6               [ 1]  614 	ld	a, (x)
      00899C AA 02            [ 1]  615 	or	a, #0x02
      00899E F7               [ 1]  616 	ld	(x), a
      00899F 20 07            [ 2]  617 	jra	00104$
      0089A1                        618 00102$:
                                    619 ;	src\stm8s_tim3.c: 581: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      0089A1 AE 53 27         [ 2]  620 	ldw	x, #0x5327
      0089A4 F6               [ 1]  621 	ld	a, (x)
      0089A5 A4 FD            [ 1]  622 	and	a, #0xfd
      0089A7 F7               [ 1]  623 	ld	(x), a
      0089A8                        624 00104$:
      0089A8 81               [ 4]  625 	ret
                                    626 ;	src\stm8s_tim3.c: 593: void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
                                    627 ;	-----------------------------------------
                                    628 ;	 function TIM3_OC2PolarityConfig
                                    629 ;	-----------------------------------------
      0089A9                        630 _TIM3_OC2PolarityConfig:
                                    631 ;	src\stm8s_tim3.c: 599: if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
      0089A9 0D 03            [ 1]  632 	tnz	(0x03, sp)
      0089AB 27 09            [ 1]  633 	jreq	00102$
                                    634 ;	src\stm8s_tim3.c: 601: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      0089AD AE 53 27         [ 2]  635 	ldw	x, #0x5327
      0089B0 F6               [ 1]  636 	ld	a, (x)
      0089B1 AA 20            [ 1]  637 	or	a, #0x20
      0089B3 F7               [ 1]  638 	ld	(x), a
      0089B4 20 07            [ 2]  639 	jra	00104$
      0089B6                        640 00102$:
                                    641 ;	src\stm8s_tim3.c: 605: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      0089B6 AE 53 27         [ 2]  642 	ldw	x, #0x5327
      0089B9 F6               [ 1]  643 	ld	a, (x)
      0089BA A4 DF            [ 1]  644 	and	a, #0xdf
      0089BC F7               [ 1]  645 	ld	(x), a
      0089BD                        646 00104$:
      0089BD 81               [ 4]  647 	ret
                                    648 ;	src\stm8s_tim3.c: 619: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
                                    649 ;	-----------------------------------------
                                    650 ;	 function TIM3_CCxCmd
                                    651 ;	-----------------------------------------
      0089BE                        652 _TIM3_CCxCmd:
                                    653 ;	src\stm8s_tim3.c: 625: if (TIM3_Channel == TIM3_CHANNEL_1)
      0089BE 0D 03            [ 1]  654 	tnz	(0x03, sp)
      0089C0 26 16            [ 1]  655 	jrne	00108$
                                    656 ;	src\stm8s_tim3.c: 628: if (NewState != DISABLE)
      0089C2 0D 04            [ 1]  657 	tnz	(0x04, sp)
      0089C4 27 09            [ 1]  658 	jreq	00102$
                                    659 ;	src\stm8s_tim3.c: 630: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      0089C6 AE 53 27         [ 2]  660 	ldw	x, #0x5327
      0089C9 F6               [ 1]  661 	ld	a, (x)
      0089CA AA 01            [ 1]  662 	or	a, #0x01
      0089CC F7               [ 1]  663 	ld	(x), a
      0089CD 20 1D            [ 2]  664 	jra	00110$
      0089CF                        665 00102$:
                                    666 ;	src\stm8s_tim3.c: 634: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      0089CF AE 53 27         [ 2]  667 	ldw	x, #0x5327
      0089D2 F6               [ 1]  668 	ld	a, (x)
      0089D3 A4 FE            [ 1]  669 	and	a, #0xfe
      0089D5 F7               [ 1]  670 	ld	(x), a
      0089D6 20 14            [ 2]  671 	jra	00110$
      0089D8                        672 00108$:
                                    673 ;	src\stm8s_tim3.c: 641: if (NewState != DISABLE)
      0089D8 0D 04            [ 1]  674 	tnz	(0x04, sp)
      0089DA 27 09            [ 1]  675 	jreq	00105$
                                    676 ;	src\stm8s_tim3.c: 643: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      0089DC AE 53 27         [ 2]  677 	ldw	x, #0x5327
      0089DF F6               [ 1]  678 	ld	a, (x)
      0089E0 AA 10            [ 1]  679 	or	a, #0x10
      0089E2 F7               [ 1]  680 	ld	(x), a
      0089E3 20 07            [ 2]  681 	jra	00110$
      0089E5                        682 00105$:
                                    683 ;	src\stm8s_tim3.c: 647: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      0089E5 AE 53 27         [ 2]  684 	ldw	x, #0x5327
      0089E8 F6               [ 1]  685 	ld	a, (x)
      0089E9 A4 EF            [ 1]  686 	and	a, #0xef
      0089EB F7               [ 1]  687 	ld	(x), a
      0089EC                        688 00110$:
      0089EC 81               [ 4]  689 	ret
                                    690 ;	src\stm8s_tim3.c: 671: void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
                                    691 ;	-----------------------------------------
                                    692 ;	 function TIM3_SelectOCxM
                                    693 ;	-----------------------------------------
      0089ED                        694 _TIM3_SelectOCxM:
                                    695 ;	src\stm8s_tim3.c: 677: if (TIM3_Channel == TIM3_CHANNEL_1)
      0089ED 0D 03            [ 1]  696 	tnz	(0x03, sp)
      0089EF 26 12            [ 1]  697 	jrne	00102$
                                    698 ;	src\stm8s_tim3.c: 680: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      0089F1 72 11 53 27      [ 1]  699 	bres	0x5327, #0
                                    700 ;	src\stm8s_tim3.c: 683: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      0089F5 AE 53 25         [ 2]  701 	ldw	x, #0x5325
      0089F8 F6               [ 1]  702 	ld	a, (x)
      0089F9 A4 8F            [ 1]  703 	and	a, #0x8f
      0089FB 1A 04            [ 1]  704 	or	a, (0x04, sp)
      0089FD AE 53 25         [ 2]  705 	ldw	x, #0x5325
      008A00 F7               [ 1]  706 	ld	(x), a
      008A01 20 13            [ 2]  707 	jra	00104$
      008A03                        708 00102$:
                                    709 ;	src\stm8s_tim3.c: 688: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
      008A03 AE 53 27         [ 2]  710 	ldw	x, #0x5327
      008A06 F6               [ 1]  711 	ld	a, (x)
      008A07 A4 EF            [ 1]  712 	and	a, #0xef
      008A09 F7               [ 1]  713 	ld	(x), a
                                    714 ;	src\stm8s_tim3.c: 691: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
      008A0A AE 53 26         [ 2]  715 	ldw	x, #0x5326
      008A0D F6               [ 1]  716 	ld	a, (x)
      008A0E A4 8F            [ 1]  717 	and	a, #0x8f
      008A10 1A 04            [ 1]  718 	or	a, (0x04, sp)
      008A12 AE 53 26         [ 2]  719 	ldw	x, #0x5326
      008A15 F7               [ 1]  720 	ld	(x), a
      008A16                        721 00104$:
      008A16 81               [ 4]  722 	ret
                                    723 ;	src\stm8s_tim3.c: 701: void TIM3_SetCounter(uint16_t Counter)
                                    724 ;	-----------------------------------------
                                    725 ;	 function TIM3_SetCounter
                                    726 ;	-----------------------------------------
      008A17                        727 _TIM3_SetCounter:
      008A17 52 02            [ 2]  728 	sub	sp, #2
                                    729 ;	src\stm8s_tim3.c: 704: TIM3->CNTRH = (uint8_t)(Counter >> 8);
      008A19 7B 05            [ 1]  730 	ld	a, (0x05, sp)
      008A1B 0F 01            [ 1]  731 	clr	(0x01, sp)
      008A1D AE 53 28         [ 2]  732 	ldw	x, #0x5328
      008A20 F7               [ 1]  733 	ld	(x), a
                                    734 ;	src\stm8s_tim3.c: 705: TIM3->CNTRL = (uint8_t)(Counter);
      008A21 7B 06            [ 1]  735 	ld	a, (0x06, sp)
      008A23 AE 53 29         [ 2]  736 	ldw	x, #0x5329
      008A26 F7               [ 1]  737 	ld	(x), a
      008A27 5B 02            [ 2]  738 	addw	sp, #2
      008A29 81               [ 4]  739 	ret
                                    740 ;	src\stm8s_tim3.c: 714: void TIM3_SetAutoreload(uint16_t Autoreload)
                                    741 ;	-----------------------------------------
                                    742 ;	 function TIM3_SetAutoreload
                                    743 ;	-----------------------------------------
      008A2A                        744 _TIM3_SetAutoreload:
      008A2A 52 02            [ 2]  745 	sub	sp, #2
                                    746 ;	src\stm8s_tim3.c: 717: TIM3->ARRH = (uint8_t)(Autoreload >> 8);
      008A2C 7B 05            [ 1]  747 	ld	a, (0x05, sp)
      008A2E 0F 01            [ 1]  748 	clr	(0x01, sp)
      008A30 AE 53 2B         [ 2]  749 	ldw	x, #0x532b
      008A33 F7               [ 1]  750 	ld	(x), a
                                    751 ;	src\stm8s_tim3.c: 718: TIM3->ARRL = (uint8_t)(Autoreload);
      008A34 7B 06            [ 1]  752 	ld	a, (0x06, sp)
      008A36 AE 53 2C         [ 2]  753 	ldw	x, #0x532c
      008A39 F7               [ 1]  754 	ld	(x), a
      008A3A 5B 02            [ 2]  755 	addw	sp, #2
      008A3C 81               [ 4]  756 	ret
                                    757 ;	src\stm8s_tim3.c: 727: void TIM3_SetCompare1(uint16_t Compare1)
                                    758 ;	-----------------------------------------
                                    759 ;	 function TIM3_SetCompare1
                                    760 ;	-----------------------------------------
      008A3D                        761 _TIM3_SetCompare1:
      008A3D 52 02            [ 2]  762 	sub	sp, #2
                                    763 ;	src\stm8s_tim3.c: 730: TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
      008A3F 7B 05            [ 1]  764 	ld	a, (0x05, sp)
      008A41 0F 01            [ 1]  765 	clr	(0x01, sp)
      008A43 AE 53 2D         [ 2]  766 	ldw	x, #0x532d
      008A46 F7               [ 1]  767 	ld	(x), a
                                    768 ;	src\stm8s_tim3.c: 731: TIM3->CCR1L = (uint8_t)(Compare1);
      008A47 7B 06            [ 1]  769 	ld	a, (0x06, sp)
      008A49 AE 53 2E         [ 2]  770 	ldw	x, #0x532e
      008A4C F7               [ 1]  771 	ld	(x), a
      008A4D 5B 02            [ 2]  772 	addw	sp, #2
      008A4F 81               [ 4]  773 	ret
                                    774 ;	src\stm8s_tim3.c: 740: void TIM3_SetCompare2(uint16_t Compare2)
                                    775 ;	-----------------------------------------
                                    776 ;	 function TIM3_SetCompare2
                                    777 ;	-----------------------------------------
      008A50                        778 _TIM3_SetCompare2:
      008A50 52 02            [ 2]  779 	sub	sp, #2
                                    780 ;	src\stm8s_tim3.c: 743: TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
      008A52 7B 05            [ 1]  781 	ld	a, (0x05, sp)
      008A54 0F 01            [ 1]  782 	clr	(0x01, sp)
      008A56 AE 53 2F         [ 2]  783 	ldw	x, #0x532f
      008A59 F7               [ 1]  784 	ld	(x), a
                                    785 ;	src\stm8s_tim3.c: 744: TIM3->CCR2L = (uint8_t)(Compare2);
      008A5A 7B 06            [ 1]  786 	ld	a, (0x06, sp)
      008A5C AE 53 30         [ 2]  787 	ldw	x, #0x5330
      008A5F F7               [ 1]  788 	ld	(x), a
      008A60 5B 02            [ 2]  789 	addw	sp, #2
      008A62 81               [ 4]  790 	ret
                                    791 ;	src\stm8s_tim3.c: 757: void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
                                    792 ;	-----------------------------------------
                                    793 ;	 function TIM3_SetIC1Prescaler
                                    794 ;	-----------------------------------------
      008A63                        795 _TIM3_SetIC1Prescaler:
                                    796 ;	src\stm8s_tim3.c: 763: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
      008A63 AE 53 25         [ 2]  797 	ldw	x, #0x5325
      008A66 F6               [ 1]  798 	ld	a, (x)
      008A67 A4 F3            [ 1]  799 	and	a, #0xf3
      008A69 1A 03            [ 1]  800 	or	a, (0x03, sp)
      008A6B AE 53 25         [ 2]  801 	ldw	x, #0x5325
      008A6E F7               [ 1]  802 	ld	(x), a
      008A6F 81               [ 4]  803 	ret
                                    804 ;	src\stm8s_tim3.c: 776: void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
                                    805 ;	-----------------------------------------
                                    806 ;	 function TIM3_SetIC2Prescaler
                                    807 ;	-----------------------------------------
      008A70                        808 _TIM3_SetIC2Prescaler:
                                    809 ;	src\stm8s_tim3.c: 782: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
      008A70 AE 53 26         [ 2]  810 	ldw	x, #0x5326
      008A73 F6               [ 1]  811 	ld	a, (x)
      008A74 A4 F3            [ 1]  812 	and	a, #0xf3
      008A76 1A 03            [ 1]  813 	or	a, (0x03, sp)
      008A78 AE 53 26         [ 2]  814 	ldw	x, #0x5326
      008A7B F7               [ 1]  815 	ld	(x), a
      008A7C 81               [ 4]  816 	ret
                                    817 ;	src\stm8s_tim3.c: 790: uint16_t TIM3_GetCapture1(void)
                                    818 ;	-----------------------------------------
                                    819 ;	 function TIM3_GetCapture1
                                    820 ;	-----------------------------------------
      008A7D                        821 _TIM3_GetCapture1:
      008A7D 52 05            [ 2]  822 	sub	sp, #5
                                    823 ;	src\stm8s_tim3.c: 796: tmpccr1h = TIM3->CCR1H;
      008A7F AE 53 2D         [ 2]  824 	ldw	x, #0x532d
      008A82 F6               [ 1]  825 	ld	a, (x)
                                    826 ;	src\stm8s_tim3.c: 797: tmpccr1l = TIM3->CCR1L;
      008A83 AE 53 2E         [ 2]  827 	ldw	x, #0x532e
      008A86 88               [ 1]  828 	push	a
      008A87 F6               [ 1]  829 	ld	a, (x)
      008A88 6B 02            [ 1]  830 	ld	(0x02, sp), a
      008A8A 7B 02            [ 1]  831 	ld	a, (0x02, sp)
      008A8C 6B 04            [ 1]  832 	ld	(0x04, sp), a
      008A8E 84               [ 1]  833 	pop	a
      008A8F 0F 02            [ 1]  834 	clr	(0x02, sp)
      008A91 16 02            [ 2]  835 	ldw	y, (0x02, sp)
      008A93 17 04            [ 2]  836 	ldw	(0x04, sp), y
                                    837 ;	src\stm8s_tim3.c: 800: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
      008A95 5F               [ 1]  838 	clrw	x
      008A96 97               [ 1]  839 	ld	xl, a
      008A97 58               [ 2]  840 	sllw	x
      008A98 58               [ 2]  841 	sllw	x
      008A99 58               [ 2]  842 	sllw	x
      008A9A 58               [ 2]  843 	sllw	x
      008A9B 58               [ 2]  844 	sllw	x
      008A9C 58               [ 2]  845 	sllw	x
      008A9D 58               [ 2]  846 	sllw	x
      008A9E 58               [ 2]  847 	sllw	x
      008A9F 9F               [ 1]  848 	ld	a, xl
      008AA0 1A 05            [ 1]  849 	or	a, (0x05, sp)
      008AA2 97               [ 1]  850 	ld	xl, a
      008AA3 9E               [ 1]  851 	ld	a, xh
      008AA4 1A 04            [ 1]  852 	or	a, (0x04, sp)
      008AA6 95               [ 1]  853 	ld	xh, a
                                    854 ;	src\stm8s_tim3.c: 802: return (uint16_t)tmpccr1;
      008AA7 5B 05            [ 2]  855 	addw	sp, #5
      008AA9 81               [ 4]  856 	ret
                                    857 ;	src\stm8s_tim3.c: 810: uint16_t TIM3_GetCapture2(void)
                                    858 ;	-----------------------------------------
                                    859 ;	 function TIM3_GetCapture2
                                    860 ;	-----------------------------------------
      008AAA                        861 _TIM3_GetCapture2:
      008AAA 52 05            [ 2]  862 	sub	sp, #5
                                    863 ;	src\stm8s_tim3.c: 816: tmpccr2h = TIM3->CCR2H;
      008AAC AE 53 2F         [ 2]  864 	ldw	x, #0x532f
      008AAF F6               [ 1]  865 	ld	a, (x)
                                    866 ;	src\stm8s_tim3.c: 817: tmpccr2l = TIM3->CCR2L;
      008AB0 AE 53 30         [ 2]  867 	ldw	x, #0x5330
      008AB3 88               [ 1]  868 	push	a
      008AB4 F6               [ 1]  869 	ld	a, (x)
      008AB5 6B 02            [ 1]  870 	ld	(0x02, sp), a
      008AB7 7B 02            [ 1]  871 	ld	a, (0x02, sp)
      008AB9 6B 04            [ 1]  872 	ld	(0x04, sp), a
      008ABB 84               [ 1]  873 	pop	a
      008ABC 0F 02            [ 1]  874 	clr	(0x02, sp)
      008ABE 16 02            [ 2]  875 	ldw	y, (0x02, sp)
      008AC0 17 04            [ 2]  876 	ldw	(0x04, sp), y
                                    877 ;	src\stm8s_tim3.c: 820: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
      008AC2 5F               [ 1]  878 	clrw	x
      008AC3 97               [ 1]  879 	ld	xl, a
      008AC4 58               [ 2]  880 	sllw	x
      008AC5 58               [ 2]  881 	sllw	x
      008AC6 58               [ 2]  882 	sllw	x
      008AC7 58               [ 2]  883 	sllw	x
      008AC8 58               [ 2]  884 	sllw	x
      008AC9 58               [ 2]  885 	sllw	x
      008ACA 58               [ 2]  886 	sllw	x
      008ACB 58               [ 2]  887 	sllw	x
      008ACC 9F               [ 1]  888 	ld	a, xl
      008ACD 1A 05            [ 1]  889 	or	a, (0x05, sp)
      008ACF 97               [ 1]  890 	ld	xl, a
      008AD0 9E               [ 1]  891 	ld	a, xh
      008AD1 1A 04            [ 1]  892 	or	a, (0x04, sp)
      008AD3 95               [ 1]  893 	ld	xh, a
                                    894 ;	src\stm8s_tim3.c: 822: return (uint16_t)tmpccr2;
      008AD4 5B 05            [ 2]  895 	addw	sp, #5
      008AD6 81               [ 4]  896 	ret
                                    897 ;	src\stm8s_tim3.c: 830: uint16_t TIM3_GetCounter(void)
                                    898 ;	-----------------------------------------
                                    899 ;	 function TIM3_GetCounter
                                    900 ;	-----------------------------------------
      008AD7                        901 _TIM3_GetCounter:
      008AD7 52 02            [ 2]  902 	sub	sp, #2
                                    903 ;	src\stm8s_tim3.c: 834: tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
      008AD9 AE 53 28         [ 2]  904 	ldw	x, #0x5328
      008ADC F6               [ 1]  905 	ld	a, (x)
      008ADD 5F               [ 1]  906 	clrw	x
      008ADE 97               [ 1]  907 	ld	xl, a
      008ADF 58               [ 2]  908 	sllw	x
      008AE0 58               [ 2]  909 	sllw	x
      008AE1 58               [ 2]  910 	sllw	x
      008AE2 58               [ 2]  911 	sllw	x
      008AE3 58               [ 2]  912 	sllw	x
      008AE4 58               [ 2]  913 	sllw	x
      008AE5 58               [ 2]  914 	sllw	x
      008AE6 58               [ 2]  915 	sllw	x
      008AE7 1F 01            [ 2]  916 	ldw	(0x01, sp), x
                                    917 ;	src\stm8s_tim3.c: 836: return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
      008AE9 AE 53 29         [ 2]  918 	ldw	x, #0x5329
      008AEC F6               [ 1]  919 	ld	a, (x)
      008AED 5F               [ 1]  920 	clrw	x
      008AEE 97               [ 1]  921 	ld	xl, a
      008AEF 1A 02            [ 1]  922 	or	a, (0x02, sp)
      008AF1 97               [ 1]  923 	ld	xl, a
      008AF2 9E               [ 1]  924 	ld	a, xh
      008AF3 1A 01            [ 1]  925 	or	a, (0x01, sp)
      008AF5 95               [ 1]  926 	ld	xh, a
      008AF6 5B 02            [ 2]  927 	addw	sp, #2
      008AF8 81               [ 4]  928 	ret
                                    929 ;	src\stm8s_tim3.c: 844: TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
                                    930 ;	-----------------------------------------
                                    931 ;	 function TIM3_GetPrescaler
                                    932 ;	-----------------------------------------
      008AF9                        933 _TIM3_GetPrescaler:
                                    934 ;	src\stm8s_tim3.c: 847: return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
      008AF9 AE 53 2A         [ 2]  935 	ldw	x, #0x532a
      008AFC F6               [ 1]  936 	ld	a, (x)
      008AFD 81               [ 4]  937 	ret
                                    938 ;	src\stm8s_tim3.c: 861: FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
                                    939 ;	-----------------------------------------
                                    940 ;	 function TIM3_GetFlagStatus
                                    941 ;	-----------------------------------------
      008AFE                        942 _TIM3_GetFlagStatus:
      008AFE 52 05            [ 2]  943 	sub	sp, #5
                                    944 ;	src\stm8s_tim3.c: 869: tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
      008B00 AE 53 22         [ 2]  945 	ldw	x, #0x5322
      008B03 F6               [ 1]  946 	ld	a, (x)
      008B04 6B 05            [ 1]  947 	ld	(0x05, sp), a
      008B06 7B 09            [ 1]  948 	ld	a, (0x09, sp)
      008B08 14 05            [ 1]  949 	and	a, (0x05, sp)
      008B0A 6B 02            [ 1]  950 	ld	(0x02, sp), a
                                    951 ;	src\stm8s_tim3.c: 870: tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
      008B0C 7B 08            [ 1]  952 	ld	a, (0x08, sp)
      008B0E 6B 04            [ 1]  953 	ld	(0x04, sp), a
      008B10 4F               [ 1]  954 	clr	a
      008B11 7B 04            [ 1]  955 	ld	a, (0x04, sp)
      008B13 6B 01            [ 1]  956 	ld	(0x01, sp), a
                                    957 ;	src\stm8s_tim3.c: 872: if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
      008B15 AE 53 23         [ 2]  958 	ldw	x, #0x5323
      008B18 F6               [ 1]  959 	ld	a, (x)
      008B19 14 01            [ 1]  960 	and	a, (0x01, sp)
      008B1B 1A 02            [ 1]  961 	or	a, (0x02, sp)
      008B1D 4D               [ 1]  962 	tnz	a
      008B1E 27 04            [ 1]  963 	jreq	00102$
                                    964 ;	src\stm8s_tim3.c: 874: bitstatus = SET;
      008B20 A6 01            [ 1]  965 	ld	a, #0x01
      008B22 20 01            [ 2]  966 	jra	00103$
      008B24                        967 00102$:
                                    968 ;	src\stm8s_tim3.c: 878: bitstatus = RESET;
      008B24 4F               [ 1]  969 	clr	a
      008B25                        970 00103$:
                                    971 ;	src\stm8s_tim3.c: 880: return (FlagStatus)bitstatus;
      008B25 5B 05            [ 2]  972 	addw	sp, #5
      008B27 81               [ 4]  973 	ret
                                    974 ;	src\stm8s_tim3.c: 894: void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
                                    975 ;	-----------------------------------------
                                    976 ;	 function TIM3_ClearFlag
                                    977 ;	-----------------------------------------
      008B28                        978 _TIM3_ClearFlag:
      008B28 52 02            [ 2]  979 	sub	sp, #2
                                    980 ;	src\stm8s_tim3.c: 900: TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
      008B2A 7B 06            [ 1]  981 	ld	a, (0x06, sp)
      008B2C 43               [ 1]  982 	cpl	a
      008B2D AE 53 22         [ 2]  983 	ldw	x, #0x5322
      008B30 F7               [ 1]  984 	ld	(x), a
                                    985 ;	src\stm8s_tim3.c: 901: TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
      008B31 7B 05            [ 1]  986 	ld	a, (0x05, sp)
      008B33 0F 01            [ 1]  987 	clr	(0x01, sp)
      008B35 43               [ 1]  988 	cpl	a
      008B36 AE 53 23         [ 2]  989 	ldw	x, #0x5323
      008B39 F7               [ 1]  990 	ld	(x), a
      008B3A 5B 02            [ 2]  991 	addw	sp, #2
      008B3C 81               [ 4]  992 	ret
                                    993 ;	src\stm8s_tim3.c: 913: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
                                    994 ;	-----------------------------------------
                                    995 ;	 function TIM3_GetITStatus
                                    996 ;	-----------------------------------------
      008B3D                        997 _TIM3_GetITStatus:
      008B3D 88               [ 1]  998 	push	a
                                    999 ;	src\stm8s_tim3.c: 921: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
      008B3E AE 53 22         [ 2] 1000 	ldw	x, #0x5322
      008B41 F6               [ 1] 1001 	ld	a, (x)
      008B42 14 04            [ 1] 1002 	and	a, (0x04, sp)
      008B44 6B 01            [ 1] 1003 	ld	(0x01, sp), a
                                   1004 ;	src\stm8s_tim3.c: 923: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
      008B46 AE 53 21         [ 2] 1005 	ldw	x, #0x5321
      008B49 F6               [ 1] 1006 	ld	a, (x)
      008B4A 14 04            [ 1] 1007 	and	a, (0x04, sp)
                                   1008 ;	src\stm8s_tim3.c: 925: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
      008B4C 0D 01            [ 1] 1009 	tnz	(0x01, sp)
      008B4E 27 07            [ 1] 1010 	jreq	00102$
      008B50 4D               [ 1] 1011 	tnz	a
      008B51 27 04            [ 1] 1012 	jreq	00102$
                                   1013 ;	src\stm8s_tim3.c: 927: bitstatus = SET;
      008B53 A6 01            [ 1] 1014 	ld	a, #0x01
      008B55 20 01            [ 2] 1015 	jra	00103$
      008B57                       1016 00102$:
                                   1017 ;	src\stm8s_tim3.c: 931: bitstatus = RESET;
      008B57 4F               [ 1] 1018 	clr	a
      008B58                       1019 00103$:
                                   1020 ;	src\stm8s_tim3.c: 933: return (ITStatus)(bitstatus);
      008B58 5B 01            [ 2] 1021 	addw	sp, #1
      008B5A 81               [ 4] 1022 	ret
                                   1023 ;	src\stm8s_tim3.c: 945: void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function TIM3_ClearITPendingBit
                                   1026 ;	-----------------------------------------
      008B5B                       1027 _TIM3_ClearITPendingBit:
                                   1028 ;	src\stm8s_tim3.c: 951: TIM3->SR1 = (uint8_t)(~TIM3_IT);
      008B5B 7B 03            [ 1] 1029 	ld	a, (0x03, sp)
      008B5D 43               [ 1] 1030 	cpl	a
      008B5E AE 53 22         [ 2] 1031 	ldw	x, #0x5322
      008B61 F7               [ 1] 1032 	ld	(x), a
      008B62 81               [ 4] 1033 	ret
                                   1034 ;	src\stm8s_tim3.c: 970: static void TI1_Config(uint8_t TIM3_ICPolarity,
                                   1035 ;	-----------------------------------------
                                   1036 ;	 function TI1_Config
                                   1037 ;	-----------------------------------------
      008B63                       1038 _TI1_Config:
      008B63 88               [ 1] 1039 	push	a
                                   1040 ;	src\stm8s_tim3.c: 975: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      008B64 72 11 53 27      [ 1] 1041 	bres	0x5327, #0
                                   1042 ;	src\stm8s_tim3.c: 978: TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
      008B68 AE 53 25         [ 2] 1043 	ldw	x, #0x5325
      008B6B F6               [ 1] 1044 	ld	a, (x)
      008B6C A4 0C            [ 1] 1045 	and	a, #0x0c
      008B6E 6B 01            [ 1] 1046 	ld	(0x01, sp), a
      008B70 7B 06            [ 1] 1047 	ld	a, (0x06, sp)
      008B72 48               [ 1] 1048 	sll	a
      008B73 48               [ 1] 1049 	sll	a
      008B74 48               [ 1] 1050 	sll	a
      008B75 48               [ 1] 1051 	sll	a
      008B76 1A 05            [ 1] 1052 	or	a, (0x05, sp)
      008B78 1A 01            [ 1] 1053 	or	a, (0x01, sp)
      008B7A AE 53 25         [ 2] 1054 	ldw	x, #0x5325
      008B7D F7               [ 1] 1055 	ld	(x), a
                                   1056 ;	src\stm8s_tim3.c: 981: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      008B7E 0D 04            [ 1] 1057 	tnz	(0x04, sp)
      008B80 27 09            [ 1] 1058 	jreq	00102$
                                   1059 ;	src\stm8s_tim3.c: 983: TIM3->CCER1 |= TIM3_CCER1_CC1P;
      008B82 AE 53 27         [ 2] 1060 	ldw	x, #0x5327
      008B85 F6               [ 1] 1061 	ld	a, (x)
      008B86 AA 02            [ 1] 1062 	or	a, #0x02
      008B88 F7               [ 1] 1063 	ld	(x), a
      008B89 20 07            [ 2] 1064 	jra	00103$
      008B8B                       1065 00102$:
                                   1066 ;	src\stm8s_tim3.c: 987: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
      008B8B AE 53 27         [ 2] 1067 	ldw	x, #0x5327
      008B8E F6               [ 1] 1068 	ld	a, (x)
      008B8F A4 FD            [ 1] 1069 	and	a, #0xfd
      008B91 F7               [ 1] 1070 	ld	(x), a
      008B92                       1071 00103$:
                                   1072 ;	src\stm8s_tim3.c: 990: TIM3->CCER1 |= TIM3_CCER1_CC1E;
      008B92 AE 53 27         [ 2] 1073 	ldw	x, #0x5327
      008B95 F6               [ 1] 1074 	ld	a, (x)
      008B96 AA 01            [ 1] 1075 	or	a, #0x01
      008B98 F7               [ 1] 1076 	ld	(x), a
      008B99 84               [ 1] 1077 	pop	a
      008B9A 81               [ 4] 1078 	ret
                                   1079 ;	src\stm8s_tim3.c: 1009: static void TI2_Config(uint8_t TIM3_ICPolarity,
                                   1080 ;	-----------------------------------------
                                   1081 ;	 function TI2_Config
                                   1082 ;	-----------------------------------------
      008B9B                       1083 _TI2_Config:
      008B9B 88               [ 1] 1084 	push	a
                                   1085 ;	src\stm8s_tim3.c: 1014: TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
      008B9C AE 53 27         [ 2] 1086 	ldw	x, #0x5327
      008B9F F6               [ 1] 1087 	ld	a, (x)
      008BA0 A4 EF            [ 1] 1088 	and	a, #0xef
      008BA2 F7               [ 1] 1089 	ld	(x), a
                                   1090 ;	src\stm8s_tim3.c: 1017: TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
      008BA3 AE 53 26         [ 2] 1091 	ldw	x, #0x5326
      008BA6 F6               [ 1] 1092 	ld	a, (x)
      008BA7 A4 0C            [ 1] 1093 	and	a, #0x0c
      008BA9 6B 01            [ 1] 1094 	ld	(0x01, sp), a
                                   1095 ;	src\stm8s_tim3.c: 1019: ((uint8_t)( TIM3_ICFilter << 4))));
      008BAB 7B 06            [ 1] 1096 	ld	a, (0x06, sp)
      008BAD 48               [ 1] 1097 	sll	a
      008BAE 48               [ 1] 1098 	sll	a
      008BAF 48               [ 1] 1099 	sll	a
      008BB0 48               [ 1] 1100 	sll	a
      008BB1 1A 05            [ 1] 1101 	or	a, (0x05, sp)
      008BB3 1A 01            [ 1] 1102 	or	a, (0x01, sp)
      008BB5 AE 53 26         [ 2] 1103 	ldw	x, #0x5326
      008BB8 F7               [ 1] 1104 	ld	(x), a
                                   1105 ;	src\stm8s_tim3.c: 1022: if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
      008BB9 0D 04            [ 1] 1106 	tnz	(0x04, sp)
      008BBB 27 09            [ 1] 1107 	jreq	00102$
                                   1108 ;	src\stm8s_tim3.c: 1024: TIM3->CCER1 |= TIM3_CCER1_CC2P;
      008BBD AE 53 27         [ 2] 1109 	ldw	x, #0x5327
      008BC0 F6               [ 1] 1110 	ld	a, (x)
      008BC1 AA 20            [ 1] 1111 	or	a, #0x20
      008BC3 F7               [ 1] 1112 	ld	(x), a
      008BC4 20 07            [ 2] 1113 	jra	00103$
      008BC6                       1114 00102$:
                                   1115 ;	src\stm8s_tim3.c: 1028: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
      008BC6 AE 53 27         [ 2] 1116 	ldw	x, #0x5327
      008BC9 F6               [ 1] 1117 	ld	a, (x)
      008BCA A4 DF            [ 1] 1118 	and	a, #0xdf
      008BCC F7               [ 1] 1119 	ld	(x), a
      008BCD                       1120 00103$:
                                   1121 ;	src\stm8s_tim3.c: 1032: TIM3->CCER1 |= TIM3_CCER1_CC2E;
      008BCD AE 53 27         [ 2] 1122 	ldw	x, #0x5327
      008BD0 F6               [ 1] 1123 	ld	a, (x)
      008BD1 AA 10            [ 1] 1124 	or	a, #0x10
      008BD3 F7               [ 1] 1125 	ld	(x), a
      008BD4 84               [ 1] 1126 	pop	a
      008BD5 81               [ 4] 1127 	ret
                                   1128 	.area CODE
                                   1129 	.area INITIALIZER
                                   1130 	.area CABS (ABS)

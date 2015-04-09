                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 09 13:44:05 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8s_clk
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _CLKPrescTable
                                     13 	.globl _HSIDivFactor
                                     14 	.globl _CLK_DeInit
                                     15 	.globl _CLK_FastHaltWakeUpCmd
                                     16 	.globl _CLK_HSECmd
                                     17 	.globl _CLK_HSICmd
                                     18 	.globl _CLK_LSICmd
                                     19 	.globl _CLK_CCOCmd
                                     20 	.globl _CLK_ClockSwitchCmd
                                     21 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     22 	.globl _CLK_PeripheralClockConfig
                                     23 	.globl _CLK_ClockSwitchConfig
                                     24 	.globl _CLK_HSIPrescalerConfig
                                     25 	.globl _CLK_CCOConfig
                                     26 	.globl _CLK_ITConfig
                                     27 	.globl _CLK_SYSCLKConfig
                                     28 	.globl _CLK_SWIMConfig
                                     29 	.globl _CLK_ClockSecuritySystemEnable
                                     30 	.globl _CLK_GetSYSCLKSource
                                     31 	.globl _CLK_GetClockFreq
                                     32 	.globl _CLK_AdjustHSICalibrationValue
                                     33 	.globl _CLK_SYSCLKEmergencyClear
                                     34 	.globl _CLK_GetFlagStatus
                                     35 	.globl _CLK_GetITStatus
                                     36 	.globl _CLK_ClearITPendingBit
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area DATA
                                     41 ;--------------------------------------------------------
                                     42 ; ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area INITIALIZED
                                     45 ;--------------------------------------------------------
                                     46 ; absolute external ram data
                                     47 ;--------------------------------------------------------
                                     48 	.area DABS (ABS)
                                     49 ;--------------------------------------------------------
                                     50 ; global & static initialisations
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area GSINIT
                                     56 ;--------------------------------------------------------
                                     57 ; Home
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area HOME
                                     61 ;--------------------------------------------------------
                                     62 ; code
                                     63 ;--------------------------------------------------------
                                     64 	.area CODE
                                     65 ;	src\stm8s_clk.c: 72: void CLK_DeInit(void)
                                     66 ;	-----------------------------------------
                                     67 ;	 function CLK_DeInit
                                     68 ;	-----------------------------------------
      0081E5                         69 _CLK_DeInit:
                                     70 ;	src\stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      0081E5 AE 50 C0         [ 2]   71 	ldw	x, #0x50c0
      0081E8 A6 01            [ 1]   72 	ld	a, #0x01
      0081EA F7               [ 1]   73 	ld	(x), a
                                     74 ;	src\stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      0081EB AE 50 C1         [ 2]   75 	ldw	x, #0x50c1
      0081EE 7F               [ 1]   76 	clr	(x)
                                     77 ;	src\stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      0081EF AE 50 C4         [ 2]   78 	ldw	x, #0x50c4
      0081F2 A6 E1            [ 1]   79 	ld	a, #0xe1
      0081F4 F7               [ 1]   80 	ld	(x), a
                                     81 ;	src\stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      0081F5 AE 50 C5         [ 2]   82 	ldw	x, #0x50c5
      0081F8 7F               [ 1]   83 	clr	(x)
                                     84 ;	src\stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      0081F9 AE 50 C6         [ 2]   85 	ldw	x, #0x50c6
      0081FC A6 18            [ 1]   86 	ld	a, #0x18
      0081FE F7               [ 1]   87 	ld	(x), a
                                     88 ;	src\stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      0081FF AE 50 C7         [ 2]   89 	ldw	x, #0x50c7
      008202 A6 FF            [ 1]   90 	ld	a, #0xff
      008204 F7               [ 1]   91 	ld	(x), a
                                     92 ;	src\stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008205 AE 50 CA         [ 2]   93 	ldw	x, #0x50ca
      008208 A6 FF            [ 1]   94 	ld	a, #0xff
      00820A F7               [ 1]   95 	ld	(x), a
                                     96 ;	src\stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00820B AE 50 C8         [ 2]   97 	ldw	x, #0x50c8
      00820E 7F               [ 1]   98 	clr	(x)
                                     99 ;	src\stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00820F AE 50 C9         [ 2]  100 	ldw	x, #0x50c9
      008212 7F               [ 1]  101 	clr	(x)
                                    102 ;	src\stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008213                        103 00101$:
      008213 AE 50 C9         [ 2]  104 	ldw	x, #0x50c9
      008216 F6               [ 1]  105 	ld	a, (x)
      008217 44               [ 1]  106 	srl	a
      008218 25 F9            [ 1]  107 	jrc	00101$
                                    108 ;	src\stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00821A AE 50 C9         [ 2]  109 	ldw	x, #0x50c9
      00821D 7F               [ 1]  110 	clr	(x)
                                    111 ;	src\stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      00821E AE 50 CC         [ 2]  112 	ldw	x, #0x50cc
      008221 7F               [ 1]  113 	clr	(x)
                                    114 ;	src\stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      008222 AE 50 CD         [ 2]  115 	ldw	x, #0x50cd
      008225 7F               [ 1]  116 	clr	(x)
      008226 81               [ 4]  117 	ret
                                    118 ;	src\stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    119 ;	-----------------------------------------
                                    120 ;	 function CLK_FastHaltWakeUpCmd
                                    121 ;	-----------------------------------------
      008227                        122 _CLK_FastHaltWakeUpCmd:
                                    123 ;	src\stm8s_clk.c: 104: if (NewState != DISABLE)
      008227 0D 03            [ 1]  124 	tnz	(0x03, sp)
      008229 27 09            [ 1]  125 	jreq	00102$
                                    126 ;	src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00822B AE 50 C0         [ 2]  127 	ldw	x, #0x50c0
      00822E F6               [ 1]  128 	ld	a, (x)
      00822F AA 04            [ 1]  129 	or	a, #0x04
      008231 F7               [ 1]  130 	ld	(x), a
      008232 20 07            [ 2]  131 	jra	00104$
      008234                        132 00102$:
                                    133 ;	src\stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      008234 AE 50 C0         [ 2]  134 	ldw	x, #0x50c0
      008237 F6               [ 1]  135 	ld	a, (x)
      008238 A4 FB            [ 1]  136 	and	a, #0xfb
      00823A F7               [ 1]  137 	ld	(x), a
      00823B                        138 00104$:
      00823B 81               [ 4]  139 	ret
                                    140 ;	src\stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    141 ;	-----------------------------------------
                                    142 ;	 function CLK_HSECmd
                                    143 ;	-----------------------------------------
      00823C                        144 _CLK_HSECmd:
                                    145 ;	src\stm8s_clk.c: 126: if (NewState != DISABLE)
      00823C 0D 03            [ 1]  146 	tnz	(0x03, sp)
      00823E 27 09            [ 1]  147 	jreq	00102$
                                    148 ;	src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008240 AE 50 C1         [ 2]  149 	ldw	x, #0x50c1
      008243 F6               [ 1]  150 	ld	a, (x)
      008244 AA 01            [ 1]  151 	or	a, #0x01
      008246 F7               [ 1]  152 	ld	(x), a
      008247 20 04            [ 2]  153 	jra	00104$
      008249                        154 00102$:
                                    155 ;	src\stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008249 72 11 50 C1      [ 1]  156 	bres	0x50c1, #0
      00824D                        157 00104$:
      00824D 81               [ 4]  158 	ret
                                    159 ;	src\stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    160 ;	-----------------------------------------
                                    161 ;	 function CLK_HSICmd
                                    162 ;	-----------------------------------------
      00824E                        163 _CLK_HSICmd:
                                    164 ;	src\stm8s_clk.c: 148: if (NewState != DISABLE)
      00824E 0D 03            [ 1]  165 	tnz	(0x03, sp)
      008250 27 09            [ 1]  166 	jreq	00102$
                                    167 ;	src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      008252 AE 50 C0         [ 2]  168 	ldw	x, #0x50c0
      008255 F6               [ 1]  169 	ld	a, (x)
      008256 AA 01            [ 1]  170 	or	a, #0x01
      008258 F7               [ 1]  171 	ld	(x), a
      008259 20 04            [ 2]  172 	jra	00104$
      00825B                        173 00102$:
                                    174 ;	src\stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      00825B 72 11 50 C0      [ 1]  175 	bres	0x50c0, #0
      00825F                        176 00104$:
      00825F 81               [ 4]  177 	ret
                                    178 ;	src\stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    179 ;	-----------------------------------------
                                    180 ;	 function CLK_LSICmd
                                    181 ;	-----------------------------------------
      008260                        182 _CLK_LSICmd:
                                    183 ;	src\stm8s_clk.c: 171: if (NewState != DISABLE)
      008260 0D 03            [ 1]  184 	tnz	(0x03, sp)
      008262 27 09            [ 1]  185 	jreq	00102$
                                    186 ;	src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      008264 AE 50 C0         [ 2]  187 	ldw	x, #0x50c0
      008267 F6               [ 1]  188 	ld	a, (x)
      008268 AA 08            [ 1]  189 	or	a, #0x08
      00826A F7               [ 1]  190 	ld	(x), a
      00826B 20 07            [ 2]  191 	jra	00104$
      00826D                        192 00102$:
                                    193 ;	src\stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00826D AE 50 C0         [ 2]  194 	ldw	x, #0x50c0
      008270 F6               [ 1]  195 	ld	a, (x)
      008271 A4 F7            [ 1]  196 	and	a, #0xf7
      008273 F7               [ 1]  197 	ld	(x), a
      008274                        198 00104$:
      008274 81               [ 4]  199 	ret
                                    200 ;	src\stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    201 ;	-----------------------------------------
                                    202 ;	 function CLK_CCOCmd
                                    203 ;	-----------------------------------------
      008275                        204 _CLK_CCOCmd:
                                    205 ;	src\stm8s_clk.c: 194: if (NewState != DISABLE)
      008275 0D 03            [ 1]  206 	tnz	(0x03, sp)
      008277 27 09            [ 1]  207 	jreq	00102$
                                    208 ;	src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008279 AE 50 C9         [ 2]  209 	ldw	x, #0x50c9
      00827C F6               [ 1]  210 	ld	a, (x)
      00827D AA 01            [ 1]  211 	or	a, #0x01
      00827F F7               [ 1]  212 	ld	(x), a
      008280 20 04            [ 2]  213 	jra	00104$
      008282                        214 00102$:
                                    215 ;	src\stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      008282 72 11 50 C9      [ 1]  216 	bres	0x50c9, #0
      008286                        217 00104$:
      008286 81               [ 4]  218 	ret
                                    219 ;	src\stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    220 ;	-----------------------------------------
                                    221 ;	 function CLK_ClockSwitchCmd
                                    222 ;	-----------------------------------------
      008287                        223 _CLK_ClockSwitchCmd:
                                    224 ;	src\stm8s_clk.c: 218: if (NewState != DISABLE )
      008287 0D 03            [ 1]  225 	tnz	(0x03, sp)
      008289 27 09            [ 1]  226 	jreq	00102$
                                    227 ;	src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00828B AE 50 C5         [ 2]  228 	ldw	x, #0x50c5
      00828E F6               [ 1]  229 	ld	a, (x)
      00828F AA 02            [ 1]  230 	or	a, #0x02
      008291 F7               [ 1]  231 	ld	(x), a
      008292 20 07            [ 2]  232 	jra	00104$
      008294                        233 00102$:
                                    234 ;	src\stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008294 AE 50 C5         [ 2]  235 	ldw	x, #0x50c5
      008297 F6               [ 1]  236 	ld	a, (x)
      008298 A4 FD            [ 1]  237 	and	a, #0xfd
      00829A F7               [ 1]  238 	ld	(x), a
      00829B                        239 00104$:
      00829B 81               [ 4]  240 	ret
                                    241 ;	src\stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    242 ;	-----------------------------------------
                                    243 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    244 ;	-----------------------------------------
      00829C                        245 _CLK_SlowActiveHaltWakeUpCmd:
                                    246 ;	src\stm8s_clk.c: 243: if (NewState != DISABLE)
      00829C 0D 03            [ 1]  247 	tnz	(0x03, sp)
      00829E 27 09            [ 1]  248 	jreq	00102$
                                    249 ;	src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0082A0 AE 50 C0         [ 2]  250 	ldw	x, #0x50c0
      0082A3 F6               [ 1]  251 	ld	a, (x)
      0082A4 AA 20            [ 1]  252 	or	a, #0x20
      0082A6 F7               [ 1]  253 	ld	(x), a
      0082A7 20 07            [ 2]  254 	jra	00104$
      0082A9                        255 00102$:
                                    256 ;	src\stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      0082A9 AE 50 C0         [ 2]  257 	ldw	x, #0x50c0
      0082AC F6               [ 1]  258 	ld	a, (x)
      0082AD A4 DF            [ 1]  259 	and	a, #0xdf
      0082AF F7               [ 1]  260 	ld	(x), a
      0082B0                        261 00104$:
      0082B0 81               [ 4]  262 	ret
                                    263 ;	src\stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    264 ;	-----------------------------------------
                                    265 ;	 function CLK_PeripheralClockConfig
                                    266 ;	-----------------------------------------
      0082B1                        267 _CLK_PeripheralClockConfig:
      0082B1 52 02            [ 2]  268 	sub	sp, #2
                                    269 ;	src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0082B3 7B 05            [ 1]  270 	ld	a, (0x05, sp)
      0082B5 A4 0F            [ 1]  271 	and	a, #0x0f
      0082B7 95               [ 1]  272 	ld	xh, a
      0082B8 A6 01            [ 1]  273 	ld	a, #0x01
      0082BA 6B 02            [ 1]  274 	ld	(0x02, sp), a
      0082BC 9E               [ 1]  275 	ld	a, xh
      0082BD 4D               [ 1]  276 	tnz	a
      0082BE 27 05            [ 1]  277 	jreq	00125$
      0082C0                        278 00124$:
      0082C0 08 02            [ 1]  279 	sll	(0x02, sp)
      0082C2 4A               [ 1]  280 	dec	a
      0082C3 26 FB            [ 1]  281 	jrne	00124$
      0082C5                        282 00125$:
                                    283 ;	src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0082C5 7B 02            [ 1]  284 	ld	a, (0x02, sp)
      0082C7 43               [ 1]  285 	cpl	a
      0082C8 6B 01            [ 1]  286 	ld	(0x01, sp), a
                                    287 ;	src\stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0082CA 7B 05            [ 1]  288 	ld	a, (0x05, sp)
      0082CC A5 10            [ 1]  289 	bcp	a, #0x10
      0082CE 26 1C            [ 1]  290 	jrne	00108$
                                    291 ;	src\stm8s_clk.c: 271: if (NewState != DISABLE)
      0082D0 0D 06            [ 1]  292 	tnz	(0x06, sp)
      0082D2 27 0C            [ 1]  293 	jreq	00102$
                                    294 ;	src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0082D4 AE 50 C7         [ 2]  295 	ldw	x, #0x50c7
      0082D7 F6               [ 1]  296 	ld	a, (x)
      0082D8 1A 02            [ 1]  297 	or	a, (0x02, sp)
      0082DA AE 50 C7         [ 2]  298 	ldw	x, #0x50c7
      0082DD F7               [ 1]  299 	ld	(x), a
      0082DE 20 26            [ 2]  300 	jra	00110$
      0082E0                        301 00102$:
                                    302 ;	src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0082E0 AE 50 C7         [ 2]  303 	ldw	x, #0x50c7
      0082E3 F6               [ 1]  304 	ld	a, (x)
      0082E4 14 01            [ 1]  305 	and	a, (0x01, sp)
      0082E6 AE 50 C7         [ 2]  306 	ldw	x, #0x50c7
      0082E9 F7               [ 1]  307 	ld	(x), a
      0082EA 20 1A            [ 2]  308 	jra	00110$
      0082EC                        309 00108$:
                                    310 ;	src\stm8s_clk.c: 284: if (NewState != DISABLE)
      0082EC 0D 06            [ 1]  311 	tnz	(0x06, sp)
      0082EE 27 0C            [ 1]  312 	jreq	00105$
                                    313 ;	src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0082F0 AE 50 CA         [ 2]  314 	ldw	x, #0x50ca
      0082F3 F6               [ 1]  315 	ld	a, (x)
      0082F4 1A 02            [ 1]  316 	or	a, (0x02, sp)
      0082F6 AE 50 CA         [ 2]  317 	ldw	x, #0x50ca
      0082F9 F7               [ 1]  318 	ld	(x), a
      0082FA 20 0A            [ 2]  319 	jra	00110$
      0082FC                        320 00105$:
                                    321 ;	src\stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0082FC AE 50 CA         [ 2]  322 	ldw	x, #0x50ca
      0082FF F6               [ 1]  323 	ld	a, (x)
      008300 14 01            [ 1]  324 	and	a, (0x01, sp)
      008302 AE 50 CA         [ 2]  325 	ldw	x, #0x50ca
      008305 F7               [ 1]  326 	ld	(x), a
      008306                        327 00110$:
      008306 5B 02            [ 2]  328 	addw	sp, #2
      008308 81               [ 4]  329 	ret
                                    330 ;	src\stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    331 ;	-----------------------------------------
                                    332 ;	 function CLK_ClockSwitchConfig
                                    333 ;	-----------------------------------------
      008309                        334 _CLK_ClockSwitchConfig:
      008309 52 02            [ 2]  335 	sub	sp, #2
                                    336 ;	src\stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      00830B AE 50 C3         [ 2]  337 	ldw	x, #0x50c3
      00830E F6               [ 1]  338 	ld	a, (x)
      00830F 6B 02            [ 1]  339 	ld	(0x02, sp), a
                                    340 ;	src\stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008311 7B 05            [ 1]  341 	ld	a, (0x05, sp)
      008313 A1 01            [ 1]  342 	cp	a, #0x01
      008315 26 40            [ 1]  343 	jrne	00122$
                                    344 ;	src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      008317 AE 50 C5         [ 2]  345 	ldw	x, #0x50c5
      00831A F6               [ 1]  346 	ld	a, (x)
      00831B AA 02            [ 1]  347 	or	a, #0x02
      00831D F7               [ 1]  348 	ld	(x), a
                                    349 ;	src\stm8s_clk.c: 331: if (ITState != DISABLE)
      00831E 0D 07            [ 1]  350 	tnz	(0x07, sp)
      008320 27 09            [ 1]  351 	jreq	00102$
                                    352 ;	src\stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      008322 AE 50 C5         [ 2]  353 	ldw	x, #0x50c5
      008325 F6               [ 1]  354 	ld	a, (x)
      008326 AA 04            [ 1]  355 	or	a, #0x04
      008328 F7               [ 1]  356 	ld	(x), a
      008329 20 07            [ 2]  357 	jra	00103$
      00832B                        358 00102$:
                                    359 ;	src\stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00832B AE 50 C5         [ 2]  360 	ldw	x, #0x50c5
      00832E F6               [ 1]  361 	ld	a, (x)
      00832F A4 FB            [ 1]  362 	and	a, #0xfb
      008331 F7               [ 1]  363 	ld	(x), a
      008332                        364 00103$:
                                    365 ;	src\stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      008332 AE 50 C4         [ 2]  366 	ldw	x, #0x50c4
      008335 7B 06            [ 1]  367 	ld	a, (0x06, sp)
      008337 F7               [ 1]  368 	ld	(x), a
                                    369 ;	src\stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008338 AE FF FF         [ 2]  370 	ldw	x, #0xffff
      00833B                        371 00105$:
      00833B 90 AE 50 C5      [ 2]  372 	ldw	y, #0x50c5
      00833F 90 F6            [ 1]  373 	ld	a, (y)
      008341 44               [ 1]  374 	srl	a
      008342 24 06            [ 1]  375 	jrnc	00107$
      008344 5D               [ 2]  376 	tnzw	x
      008345 27 03            [ 1]  377 	jreq	00107$
                                    378 ;	src\stm8s_clk.c: 346: DownCounter--;
      008347 5A               [ 2]  379 	decw	x
      008348 20 F1            [ 2]  380 	jra	00105$
      00834A                        381 00107$:
                                    382 ;	src\stm8s_clk.c: 349: if(DownCounter != 0)
      00834A 5D               [ 2]  383 	tnzw	x
      00834B 27 06            [ 1]  384 	jreq	00109$
                                    385 ;	src\stm8s_clk.c: 351: Swif = SUCCESS;
      00834D A6 01            [ 1]  386 	ld	a, #0x01
      00834F 6B 01            [ 1]  387 	ld	(0x01, sp), a
      008351 20 43            [ 2]  388 	jra	00123$
      008353                        389 00109$:
                                    390 ;	src\stm8s_clk.c: 355: Swif = ERROR;
      008353 0F 01            [ 1]  391 	clr	(0x01, sp)
      008355 20 3F            [ 2]  392 	jra	00123$
      008357                        393 00122$:
                                    394 ;	src\stm8s_clk.c: 361: if (ITState != DISABLE)
      008357 0D 07            [ 1]  395 	tnz	(0x07, sp)
      008359 27 09            [ 1]  396 	jreq	00112$
                                    397 ;	src\stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      00835B AE 50 C5         [ 2]  398 	ldw	x, #0x50c5
      00835E F6               [ 1]  399 	ld	a, (x)
      00835F AA 04            [ 1]  400 	or	a, #0x04
      008361 F7               [ 1]  401 	ld	(x), a
      008362 20 07            [ 2]  402 	jra	00113$
      008364                        403 00112$:
                                    404 ;	src\stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008364 AE 50 C5         [ 2]  405 	ldw	x, #0x50c5
      008367 F6               [ 1]  406 	ld	a, (x)
      008368 A4 FB            [ 1]  407 	and	a, #0xfb
      00836A F7               [ 1]  408 	ld	(x), a
      00836B                        409 00113$:
                                    410 ;	src\stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      00836B AE 50 C4         [ 2]  411 	ldw	x, #0x50c4
      00836E 7B 06            [ 1]  412 	ld	a, (0x06, sp)
      008370 F7               [ 1]  413 	ld	(x), a
                                    414 ;	src\stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      008371 AE FF FF         [ 2]  415 	ldw	x, #0xffff
      008374                        416 00115$:
      008374 90 AE 50 C5      [ 2]  417 	ldw	y, #0x50c5
      008378 90 F6            [ 1]  418 	ld	a, (y)
      00837A A5 08            [ 1]  419 	bcp	a, #0x08
      00837C 27 06            [ 1]  420 	jreq	00117$
      00837E 5D               [ 2]  421 	tnzw	x
      00837F 27 03            [ 1]  422 	jreq	00117$
                                    423 ;	src\stm8s_clk.c: 376: DownCounter--;
      008381 5A               [ 2]  424 	decw	x
      008382 20 F0            [ 2]  425 	jra	00115$
      008384                        426 00117$:
                                    427 ;	src\stm8s_clk.c: 379: if(DownCounter != 0)
      008384 5D               [ 2]  428 	tnzw	x
      008385 27 0D            [ 1]  429 	jreq	00119$
                                    430 ;	src\stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      008387 AE 50 C5         [ 2]  431 	ldw	x, #0x50c5
      00838A F6               [ 1]  432 	ld	a, (x)
      00838B AA 02            [ 1]  433 	or	a, #0x02
      00838D F7               [ 1]  434 	ld	(x), a
                                    435 ;	src\stm8s_clk.c: 383: Swif = SUCCESS;
      00838E A6 01            [ 1]  436 	ld	a, #0x01
      008390 6B 01            [ 1]  437 	ld	(0x01, sp), a
      008392 20 02            [ 2]  438 	jra	00123$
      008394                        439 00119$:
                                    440 ;	src\stm8s_clk.c: 387: Swif = ERROR;
      008394 0F 01            [ 1]  441 	clr	(0x01, sp)
      008396                        442 00123$:
                                    443 ;	src\stm8s_clk.c: 390: if(Swif != ERROR)
      008396 0D 01            [ 1]  444 	tnz	(0x01, sp)
      008398 27 34            [ 1]  445 	jreq	00136$
                                    446 ;	src\stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      00839A 0D 08            [ 1]  447 	tnz	(0x08, sp)
      00839C 26 0F            [ 1]  448 	jrne	00132$
      00839E 7B 02            [ 1]  449 	ld	a, (0x02, sp)
      0083A0 A1 E1            [ 1]  450 	cp	a, #0xe1
      0083A2 26 09            [ 1]  451 	jrne	00132$
                                    452 ;	src\stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0083A4 AE 50 C0         [ 2]  453 	ldw	x, #0x50c0
      0083A7 F6               [ 1]  454 	ld	a, (x)
      0083A8 A4 FE            [ 1]  455 	and	a, #0xfe
      0083AA F7               [ 1]  456 	ld	(x), a
      0083AB 20 21            [ 2]  457 	jra	00136$
      0083AD                        458 00132$:
                                    459 ;	src\stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0083AD 0D 08            [ 1]  460 	tnz	(0x08, sp)
      0083AF 26 0F            [ 1]  461 	jrne	00128$
      0083B1 7B 02            [ 1]  462 	ld	a, (0x02, sp)
      0083B3 A1 D2            [ 1]  463 	cp	a, #0xd2
      0083B5 26 09            [ 1]  464 	jrne	00128$
                                    465 ;	src\stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0083B7 AE 50 C0         [ 2]  466 	ldw	x, #0x50c0
      0083BA F6               [ 1]  467 	ld	a, (x)
      0083BB A4 F7            [ 1]  468 	and	a, #0xf7
      0083BD F7               [ 1]  469 	ld	(x), a
      0083BE 20 0E            [ 2]  470 	jra	00136$
      0083C0                        471 00128$:
                                    472 ;	src\stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0083C0 0D 08            [ 1]  473 	tnz	(0x08, sp)
      0083C2 26 0A            [ 1]  474 	jrne	00136$
      0083C4 7B 02            [ 1]  475 	ld	a, (0x02, sp)
      0083C6 A1 B4            [ 1]  476 	cp	a, #0xb4
      0083C8 26 04            [ 1]  477 	jrne	00136$
                                    478 ;	src\stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0083CA 72 11 50 C1      [ 1]  479 	bres	0x50c1, #0
      0083CE                        480 00136$:
                                    481 ;	src\stm8s_clk.c: 406: return(Swif);
      0083CE 7B 01            [ 1]  482 	ld	a, (0x01, sp)
      0083D0 5B 02            [ 2]  483 	addw	sp, #2
      0083D2 81               [ 4]  484 	ret
                                    485 ;	src\stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    486 ;	-----------------------------------------
                                    487 ;	 function CLK_HSIPrescalerConfig
                                    488 ;	-----------------------------------------
      0083D3                        489 _CLK_HSIPrescalerConfig:
                                    490 ;	src\stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0083D3 AE 50 C6         [ 2]  491 	ldw	x, #0x50c6
      0083D6 F6               [ 1]  492 	ld	a, (x)
      0083D7 A4 E7            [ 1]  493 	and	a, #0xe7
      0083D9 F7               [ 1]  494 	ld	(x), a
                                    495 ;	src\stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      0083DA AE 50 C6         [ 2]  496 	ldw	x, #0x50c6
      0083DD F6               [ 1]  497 	ld	a, (x)
      0083DE 1A 03            [ 1]  498 	or	a, (0x03, sp)
      0083E0 AE 50 C6         [ 2]  499 	ldw	x, #0x50c6
      0083E3 F7               [ 1]  500 	ld	(x), a
      0083E4 81               [ 4]  501 	ret
                                    502 ;	src\stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    503 ;	-----------------------------------------
                                    504 ;	 function CLK_CCOConfig
                                    505 ;	-----------------------------------------
      0083E5                        506 _CLK_CCOConfig:
                                    507 ;	src\stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      0083E5 AE 50 C9         [ 2]  508 	ldw	x, #0x50c9
      0083E8 F6               [ 1]  509 	ld	a, (x)
      0083E9 A4 E1            [ 1]  510 	and	a, #0xe1
      0083EB F7               [ 1]  511 	ld	(x), a
                                    512 ;	src\stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      0083EC AE 50 C9         [ 2]  513 	ldw	x, #0x50c9
      0083EF F6               [ 1]  514 	ld	a, (x)
      0083F0 1A 03            [ 1]  515 	or	a, (0x03, sp)
      0083F2 AE 50 C9         [ 2]  516 	ldw	x, #0x50c9
      0083F5 F7               [ 1]  517 	ld	(x), a
                                    518 ;	src\stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      0083F6 72 10 50 C9      [ 1]  519 	bset	0x50c9, #0
      0083FA 81               [ 4]  520 	ret
                                    521 ;	src\stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    522 ;	-----------------------------------------
                                    523 ;	 function CLK_ITConfig
                                    524 ;	-----------------------------------------
      0083FB                        525 _CLK_ITConfig:
      0083FB 88               [ 1]  526 	push	a
                                    527 ;	src\stm8s_clk.c: 467: switch (CLK_IT)
      0083FC 7B 04            [ 1]  528 	ld	a, (0x04, sp)
      0083FE A1 0C            [ 1]  529 	cp	a, #0x0c
      008400 26 06            [ 1]  530 	jrne	00135$
      008402 A6 01            [ 1]  531 	ld	a, #0x01
      008404 6B 01            [ 1]  532 	ld	(0x01, sp), a
      008406 20 02            [ 2]  533 	jra	00136$
      008408                        534 00135$:
      008408 0F 01            [ 1]  535 	clr	(0x01, sp)
      00840A                        536 00136$:
      00840A 7B 04            [ 1]  537 	ld	a, (0x04, sp)
      00840C A1 1C            [ 1]  538 	cp	a, #0x1c
      00840E 26 04            [ 1]  539 	jrne	00138$
      008410 A6 01            [ 1]  540 	ld	a, #0x01
      008412 20 01            [ 2]  541 	jra	00139$
      008414                        542 00138$:
      008414 4F               [ 1]  543 	clr	a
      008415                        544 00139$:
                                    545 ;	src\stm8s_clk.c: 465: if (NewState != DISABLE)
      008415 0D 05            [ 1]  546 	tnz	(0x05, sp)
      008417 27 19            [ 1]  547 	jreq	00110$
                                    548 ;	src\stm8s_clk.c: 467: switch (CLK_IT)
      008419 0D 01            [ 1]  549 	tnz	(0x01, sp)
      00841B 26 0C            [ 1]  550 	jrne	00102$
      00841D 4D               [ 1]  551 	tnz	a
      00841E 27 29            [ 1]  552 	jreq	00112$
                                    553 ;	src\stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      008420 AE 50 C5         [ 2]  554 	ldw	x, #0x50c5
      008423 F6               [ 1]  555 	ld	a, (x)
      008424 AA 04            [ 1]  556 	or	a, #0x04
      008426 F7               [ 1]  557 	ld	(x), a
                                    558 ;	src\stm8s_clk.c: 471: break;
      008427 20 20            [ 2]  559 	jra	00112$
                                    560 ;	src\stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      008429                        561 00102$:
                                    562 ;	src\stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      008429 AE 50 C8         [ 2]  563 	ldw	x, #0x50c8
      00842C F6               [ 1]  564 	ld	a, (x)
      00842D AA 04            [ 1]  565 	or	a, #0x04
      00842F F7               [ 1]  566 	ld	(x), a
                                    567 ;	src\stm8s_clk.c: 474: break;
      008430 20 17            [ 2]  568 	jra	00112$
                                    569 ;	src\stm8s_clk.c: 477: }
      008432                        570 00110$:
                                    571 ;	src\stm8s_clk.c: 481: switch (CLK_IT)
      008432 0D 01            [ 1]  572 	tnz	(0x01, sp)
      008434 26 0C            [ 1]  573 	jrne	00106$
      008436 4D               [ 1]  574 	tnz	a
      008437 27 10            [ 1]  575 	jreq	00112$
                                    576 ;	src\stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008439 AE 50 C5         [ 2]  577 	ldw	x, #0x50c5
      00843C F6               [ 1]  578 	ld	a, (x)
      00843D A4 FB            [ 1]  579 	and	a, #0xfb
      00843F F7               [ 1]  580 	ld	(x), a
                                    581 ;	src\stm8s_clk.c: 485: break;
      008440 20 07            [ 2]  582 	jra	00112$
                                    583 ;	src\stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      008442                        584 00106$:
                                    585 ;	src\stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      008442 AE 50 C8         [ 2]  586 	ldw	x, #0x50c8
      008445 F6               [ 1]  587 	ld	a, (x)
      008446 A4 FB            [ 1]  588 	and	a, #0xfb
      008448 F7               [ 1]  589 	ld	(x), a
                                    590 ;	src\stm8s_clk.c: 491: }
      008449                        591 00112$:
      008449 84               [ 1]  592 	pop	a
      00844A 81               [ 4]  593 	ret
                                    594 ;	src\stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    595 ;	-----------------------------------------
                                    596 ;	 function CLK_SYSCLKConfig
                                    597 ;	-----------------------------------------
      00844B                        598 _CLK_SYSCLKConfig:
      00844B 52 02            [ 2]  599 	sub	sp, #2
                                    600 ;	src\stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00844D 7B 05            [ 1]  601 	ld	a, (0x05, sp)
      00844F 48               [ 1]  602 	sll	a
      008450 25 19            [ 1]  603 	jrc	00102$
                                    604 ;	src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008452 AE 50 C6         [ 2]  605 	ldw	x, #0x50c6
      008455 F6               [ 1]  606 	ld	a, (x)
      008456 A4 E7            [ 1]  607 	and	a, #0xe7
      008458 F7               [ 1]  608 	ld	(x), a
                                    609 ;	src\stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008459 AE 50 C6         [ 2]  610 	ldw	x, #0x50c6
      00845C F6               [ 1]  611 	ld	a, (x)
      00845D 6B 02            [ 1]  612 	ld	(0x02, sp), a
      00845F 7B 05            [ 1]  613 	ld	a, (0x05, sp)
      008461 A4 18            [ 1]  614 	and	a, #0x18
      008463 1A 02            [ 1]  615 	or	a, (0x02, sp)
      008465 AE 50 C6         [ 2]  616 	ldw	x, #0x50c6
      008468 F7               [ 1]  617 	ld	(x), a
      008469 20 17            [ 2]  618 	jra	00104$
      00846B                        619 00102$:
                                    620 ;	src\stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      00846B AE 50 C6         [ 2]  621 	ldw	x, #0x50c6
      00846E F6               [ 1]  622 	ld	a, (x)
      00846F A4 F8            [ 1]  623 	and	a, #0xf8
      008471 F7               [ 1]  624 	ld	(x), a
                                    625 ;	src\stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      008472 AE 50 C6         [ 2]  626 	ldw	x, #0x50c6
      008475 F6               [ 1]  627 	ld	a, (x)
      008476 6B 01            [ 1]  628 	ld	(0x01, sp), a
      008478 7B 05            [ 1]  629 	ld	a, (0x05, sp)
      00847A A4 07            [ 1]  630 	and	a, #0x07
      00847C 1A 01            [ 1]  631 	or	a, (0x01, sp)
      00847E AE 50 C6         [ 2]  632 	ldw	x, #0x50c6
      008481 F7               [ 1]  633 	ld	(x), a
      008482                        634 00104$:
      008482 5B 02            [ 2]  635 	addw	sp, #2
      008484 81               [ 4]  636 	ret
                                    637 ;	src\stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    638 ;	-----------------------------------------
                                    639 ;	 function CLK_SWIMConfig
                                    640 ;	-----------------------------------------
      008485                        641 _CLK_SWIMConfig:
                                    642 ;	src\stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      008485 0D 03            [ 1]  643 	tnz	(0x03, sp)
      008487 27 09            [ 1]  644 	jreq	00102$
                                    645 ;	src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008489 AE 50 CD         [ 2]  646 	ldw	x, #0x50cd
      00848C F6               [ 1]  647 	ld	a, (x)
      00848D AA 01            [ 1]  648 	or	a, #0x01
      00848F F7               [ 1]  649 	ld	(x), a
      008490 20 04            [ 2]  650 	jra	00104$
      008492                        651 00102$:
                                    652 ;	src\stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      008492 72 11 50 CD      [ 1]  653 	bres	0x50cd, #0
      008496                        654 00104$:
      008496 81               [ 4]  655 	ret
                                    656 ;	src\stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    657 ;	-----------------------------------------
                                    658 ;	 function CLK_ClockSecuritySystemEnable
                                    659 ;	-----------------------------------------
      008497                        660 _CLK_ClockSecuritySystemEnable:
                                    661 ;	src\stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008497 72 10 50 C8      [ 1]  662 	bset	0x50c8, #0
      00849B 81               [ 4]  663 	ret
                                    664 ;	src\stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    665 ;	-----------------------------------------
                                    666 ;	 function CLK_GetSYSCLKSource
                                    667 ;	-----------------------------------------
      00849C                        668 _CLK_GetSYSCLKSource:
                                    669 ;	src\stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      00849C AE 50 C3         [ 2]  670 	ldw	x, #0x50c3
      00849F F6               [ 1]  671 	ld	a, (x)
      0084A0 81               [ 4]  672 	ret
                                    673 ;	src\stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    674 ;	-----------------------------------------
                                    675 ;	 function CLK_GetClockFreq
                                    676 ;	-----------------------------------------
      0084A1                        677 _CLK_GetClockFreq:
      0084A1 52 07            [ 2]  678 	sub	sp, #7
                                    679 ;	src\stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0084A3 AE 50 C3         [ 2]  680 	ldw	x, #0x50c3
      0084A6 F6               [ 1]  681 	ld	a, (x)
      0084A7 6B 01            [ 1]  682 	ld	(0x01, sp), a
                                    683 ;	src\stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      0084A9 7B 01            [ 1]  684 	ld	a, (0x01, sp)
      0084AB A1 E1            [ 1]  685 	cp	a, #0xe1
      0084AD 26 2D            [ 1]  686 	jrne	00105$
                                    687 ;	src\stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0084AF AE 50 C6         [ 2]  688 	ldw	x, #0x50c6
      0084B2 F6               [ 1]  689 	ld	a, (x)
      0084B3 A4 18            [ 1]  690 	and	a, #0x18
                                    691 ;	src\stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0084B5 44               [ 1]  692 	srl	a
      0084B6 44               [ 1]  693 	srl	a
      0084B7 44               [ 1]  694 	srl	a
                                    695 ;	src\stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      0084B8 AE 85 8F         [ 2]  696 	ldw	x, #_HSIDivFactor+0
      0084BB 1F 06            [ 2]  697 	ldw	(0x06, sp), x
      0084BD 5F               [ 1]  698 	clrw	x
      0084BE 97               [ 1]  699 	ld	xl, a
      0084BF 72 FB 06         [ 2]  700 	addw	x, (0x06, sp)
      0084C2 F6               [ 1]  701 	ld	a, (x)
      0084C3 97               [ 1]  702 	ld	xl, a
                                    703 ;	src\stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0084C4 4F               [ 1]  704 	clr	a
      0084C5 95               [ 1]  705 	ld	xh, a
      0084C6 90 5F            [ 1]  706 	clrw	y
      0084C8 89               [ 2]  707 	pushw	x
      0084C9 90 89            [ 2]  708 	pushw	y
      0084CB 4B 00            [ 1]  709 	push	#0x00
      0084CD 4B 24            [ 1]  710 	push	#0x24
      0084CF 4B F4            [ 1]  711 	push	#0xf4
      0084D1 4B 00            [ 1]  712 	push	#0x00
      0084D3 CD 86 D1         [ 4]  713 	call	__divulong
      0084D6 5B 08            [ 2]  714 	addw	sp, #8
      0084D8 1F 04            [ 2]  715 	ldw	(0x04, sp), x
      0084DA 20 18            [ 2]  716 	jra	00106$
      0084DC                        717 00105$:
                                    718 ;	src\stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0084DC 7B 01            [ 1]  719 	ld	a, (0x01, sp)
      0084DE A1 D2            [ 1]  720 	cp	a, #0xd2
      0084E0 26 0B            [ 1]  721 	jrne	00102$
                                    722 ;	src\stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0084E2 AE F4 00         [ 2]  723 	ldw	x, #0xf400
      0084E5 1F 04            [ 2]  724 	ldw	(0x04, sp), x
      0084E7 90 AE 00 01      [ 2]  725 	ldw	y, #0x0001
      0084EB 20 07            [ 2]  726 	jra	00106$
      0084ED                        727 00102$:
                                    728 ;	src\stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0084ED 5F               [ 1]  729 	clrw	x
      0084EE 1F 04            [ 2]  730 	ldw	(0x04, sp), x
      0084F0 90 AE 00 E1      [ 2]  731 	ldw	y, #0x00e1
      0084F4                        732 00106$:
                                    733 ;	src\stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0084F4 1E 04            [ 2]  734 	ldw	x, (0x04, sp)
      0084F6 5B 07            [ 2]  735 	addw	sp, #7
      0084F8 81               [ 4]  736 	ret
                                    737 ;	src\stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                    738 ;	-----------------------------------------
                                    739 ;	 function CLK_AdjustHSICalibrationValue
                                    740 ;	-----------------------------------------
      0084F9                        741 _CLK_AdjustHSICalibrationValue:
                                    742 ;	src\stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      0084F9 AE 50 CC         [ 2]  743 	ldw	x, #0x50cc
      0084FC F6               [ 1]  744 	ld	a, (x)
      0084FD A4 F8            [ 1]  745 	and	a, #0xf8
      0084FF 1A 03            [ 1]  746 	or	a, (0x03, sp)
      008501 AE 50 CC         [ 2]  747 	ldw	x, #0x50cc
      008504 F7               [ 1]  748 	ld	(x), a
      008505 81               [ 4]  749 	ret
                                    750 ;	src\stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                    751 ;	-----------------------------------------
                                    752 ;	 function CLK_SYSCLKEmergencyClear
                                    753 ;	-----------------------------------------
      008506                        754 _CLK_SYSCLKEmergencyClear:
                                    755 ;	src\stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      008506 72 11 50 C5      [ 1]  756 	bres	0x50c5, #0
      00850A 81               [ 4]  757 	ret
                                    758 ;	src\stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    759 ;	-----------------------------------------
                                    760 ;	 function CLK_GetFlagStatus
                                    761 ;	-----------------------------------------
      00850B                        762 _CLK_GetFlagStatus:
                                    763 ;	src\stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      00850B 4F               [ 1]  764 	clr	a
      00850C 97               [ 1]  765 	ld	xl, a
      00850D 7B 03            [ 1]  766 	ld	a, (0x03, sp)
      00850F 95               [ 1]  767 	ld	xh, a
                                    768 ;	src\stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008510 A3 01 00         [ 2]  769 	cpw	x, #0x0100
      008513 26 06            [ 1]  770 	jrne	00111$
                                    771 ;	src\stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      008515 AE 50 C0         [ 2]  772 	ldw	x, #0x50c0
      008518 F6               [ 1]  773 	ld	a, (x)
      008519 20 25            [ 2]  774 	jra	00112$
      00851B                        775 00111$:
                                    776 ;	src\stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      00851B A3 02 00         [ 2]  777 	cpw	x, #0x0200
      00851E 26 06            [ 1]  778 	jrne	00108$
                                    779 ;	src\stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      008520 AE 50 C1         [ 2]  780 	ldw	x, #0x50c1
      008523 F6               [ 1]  781 	ld	a, (x)
      008524 20 1A            [ 2]  782 	jra	00112$
      008526                        783 00108$:
                                    784 ;	src\stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      008526 A3 03 00         [ 2]  785 	cpw	x, #0x0300
      008529 26 06            [ 1]  786 	jrne	00105$
                                    787 ;	src\stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      00852B AE 50 C5         [ 2]  788 	ldw	x, #0x50c5
      00852E F6               [ 1]  789 	ld	a, (x)
      00852F 20 0F            [ 2]  790 	jra	00112$
      008531                        791 00105$:
                                    792 ;	src\stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008531 A3 04 00         [ 2]  793 	cpw	x, #0x0400
      008534 26 06            [ 1]  794 	jrne	00102$
                                    795 ;	src\stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      008536 AE 50 C8         [ 2]  796 	ldw	x, #0x50c8
      008539 F6               [ 1]  797 	ld	a, (x)
      00853A 20 04            [ 2]  798 	jra	00112$
      00853C                        799 00102$:
                                    800 ;	src\stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      00853C AE 50 C9         [ 2]  801 	ldw	x, #0x50c9
      00853F F6               [ 1]  802 	ld	a, (x)
      008540                        803 00112$:
                                    804 ;	src\stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      008540 02               [ 1]  805 	rlwa	x
      008541 7B 04            [ 1]  806 	ld	a, (0x04, sp)
      008543 01               [ 1]  807 	rrwa	x
      008544 89               [ 2]  808 	pushw	x
      008545 14 01            [ 1]  809 	and	a, (1, sp)
      008547 85               [ 2]  810 	popw	x
      008548 4D               [ 1]  811 	tnz	a
      008549 27 04            [ 1]  812 	jreq	00114$
                                    813 ;	src\stm8s_clk.c: 670: bitstatus = SET;
      00854B A6 01            [ 1]  814 	ld	a, #0x01
      00854D 20 01            [ 2]  815 	jra	00115$
      00854F                        816 00114$:
                                    817 ;	src\stm8s_clk.c: 674: bitstatus = RESET;
      00854F 4F               [ 1]  818 	clr	a
      008550                        819 00115$:
                                    820 ;	src\stm8s_clk.c: 678: return((FlagStatus)bitstatus);
      008550 81               [ 4]  821 	ret
                                    822 ;	src\stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                    823 ;	-----------------------------------------
                                    824 ;	 function CLK_GetITStatus
                                    825 ;	-----------------------------------------
      008551                        826 _CLK_GetITStatus:
                                    827 ;	src\stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      008551 7B 03            [ 1]  828 	ld	a, (0x03, sp)
      008553 A1 1C            [ 1]  829 	cp	a, #0x1c
      008555 26 11            [ 1]  830 	jrne	00108$
                                    831 ;	src\stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008557 AE 50 C5         [ 2]  832 	ldw	x, #0x50c5
      00855A F6               [ 1]  833 	ld	a, (x)
      00855B 14 03            [ 1]  834 	and	a, (0x03, sp)
      00855D A1 0C            [ 1]  835 	cp	a, #0x0c
      00855F 26 04            [ 1]  836 	jrne	00102$
                                    837 ;	src\stm8s_clk.c: 699: bitstatus = SET;
      008561 A6 01            [ 1]  838 	ld	a, #0x01
      008563 20 12            [ 2]  839 	jra	00109$
      008565                        840 00102$:
                                    841 ;	src\stm8s_clk.c: 703: bitstatus = RESET;
      008565 4F               [ 1]  842 	clr	a
      008566 20 0F            [ 2]  843 	jra	00109$
      008568                        844 00108$:
                                    845 ;	src\stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008568 AE 50 C8         [ 2]  846 	ldw	x, #0x50c8
      00856B F6               [ 1]  847 	ld	a, (x)
      00856C 14 03            [ 1]  848 	and	a, (0x03, sp)
      00856E A1 0C            [ 1]  849 	cp	a, #0x0c
      008570 26 04            [ 1]  850 	jrne	00105$
                                    851 ;	src\stm8s_clk.c: 711: bitstatus = SET;
      008572 A6 01            [ 1]  852 	ld	a, #0x01
      008574 20 01            [ 2]  853 	jra	00109$
      008576                        854 00105$:
                                    855 ;	src\stm8s_clk.c: 715: bitstatus = RESET;
      008576 4F               [ 1]  856 	clr	a
      008577                        857 00109$:
                                    858 ;	src\stm8s_clk.c: 720: return bitstatus;
      008577 81               [ 4]  859 	ret
                                    860 ;	src\stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                    861 ;	-----------------------------------------
                                    862 ;	 function CLK_ClearITPendingBit
                                    863 ;	-----------------------------------------
      008578                        864 _CLK_ClearITPendingBit:
                                    865 ;	src\stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      008578 7B 03            [ 1]  866 	ld	a, (0x03, sp)
      00857A A1 0C            [ 1]  867 	cp	a, #0x0c
      00857C 26 09            [ 1]  868 	jrne	00102$
                                    869 ;	src\stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      00857E AE 50 C8         [ 2]  870 	ldw	x, #0x50c8
      008581 F6               [ 1]  871 	ld	a, (x)
      008582 A4 F7            [ 1]  872 	and	a, #0xf7
      008584 F7               [ 1]  873 	ld	(x), a
      008585 20 07            [ 2]  874 	jra	00104$
      008587                        875 00102$:
                                    876 ;	src\stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008587 AE 50 C5         [ 2]  877 	ldw	x, #0x50c5
      00858A F6               [ 1]  878 	ld	a, (x)
      00858B A4 F7            [ 1]  879 	and	a, #0xf7
      00858D F7               [ 1]  880 	ld	(x), a
      00858E                        881 00104$:
      00858E 81               [ 4]  882 	ret
                                    883 	.area CODE
      00858F                        884 _HSIDivFactor:
      00858F 01                     885 	.db #0x01	; 1
      008590 02                     886 	.db #0x02	; 2
      008591 04                     887 	.db #0x04	; 4
      008592 08                     888 	.db #0x08	; 8
      008593                        889 _CLKPrescTable:
      008593 01                     890 	.db #0x01	; 1
      008594 02                     891 	.db #0x02	; 2
      008595 04                     892 	.db #0x04	; 4
      008596 08                     893 	.db #0x08	; 8
      008597 0A                     894 	.db #0x0A	; 10
      008598 10                     895 	.db #0x10	; 16
      008599 14                     896 	.db #0x14	; 20
      00859A 28                     897 	.db #0x28	; 40
                                    898 	.area INITIALIZER
                                    899 	.area CABS (ABS)

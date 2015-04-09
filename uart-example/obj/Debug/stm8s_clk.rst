                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Fri Apr 03 17:16:15 2015
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
                                     65 ;	stm8s_clk.c: 72: void CLK_DeInit(void)
                                     66 ;	-----------------------------------------
                                     67 ;	 function CLK_DeInit
                                     68 ;	-----------------------------------------
      0080EE                         69 _CLK_DeInit:
                                     70 ;	stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      0080EE AE 50 C0         [ 2]   71 	ldw	x, #0x50c0
      0080F1 A6 01            [ 1]   72 	ld	a, #0x01
      0080F3 F7               [ 1]   73 	ld	(x), a
                                     74 ;	stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      0080F4 AE 50 C1         [ 2]   75 	ldw	x, #0x50c1
      0080F7 7F               [ 1]   76 	clr	(x)
                                     77 ;	stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      0080F8 AE 50 C4         [ 2]   78 	ldw	x, #0x50c4
      0080FB A6 E1            [ 1]   79 	ld	a, #0xe1
      0080FD F7               [ 1]   80 	ld	(x), a
                                     81 ;	stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      0080FE AE 50 C5         [ 2]   82 	ldw	x, #0x50c5
      008101 7F               [ 1]   83 	clr	(x)
                                     84 ;	stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      008102 AE 50 C6         [ 2]   85 	ldw	x, #0x50c6
      008105 A6 18            [ 1]   86 	ld	a, #0x18
      008107 F7               [ 1]   87 	ld	(x), a
                                     88 ;	stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008108 AE 50 C7         [ 2]   89 	ldw	x, #0x50c7
      00810B A6 FF            [ 1]   90 	ld	a, #0xff
      00810D F7               [ 1]   91 	ld	(x), a
                                     92 ;	stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      00810E AE 50 CA         [ 2]   93 	ldw	x, #0x50ca
      008111 A6 FF            [ 1]   94 	ld	a, #0xff
      008113 F7               [ 1]   95 	ld	(x), a
                                     96 ;	stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008114 AE 50 C8         [ 2]   97 	ldw	x, #0x50c8
      008117 7F               [ 1]   98 	clr	(x)
                                     99 ;	stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008118 AE 50 C9         [ 2]  100 	ldw	x, #0x50c9
      00811B 7F               [ 1]  101 	clr	(x)
                                    102 ;	stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      00811C                        103 00101$:
      00811C AE 50 C9         [ 2]  104 	ldw	x, #0x50c9
      00811F F6               [ 1]  105 	ld	a, (x)
      008120 44               [ 1]  106 	srl	a
      008121 25 F9            [ 1]  107 	jrc	00101$
                                    108 ;	stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008123 AE 50 C9         [ 2]  109 	ldw	x, #0x50c9
      008126 7F               [ 1]  110 	clr	(x)
                                    111 ;	stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      008127 AE 50 CC         [ 2]  112 	ldw	x, #0x50cc
      00812A 7F               [ 1]  113 	clr	(x)
                                    114 ;	stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      00812B AE 50 CD         [ 2]  115 	ldw	x, #0x50cd
      00812E 7F               [ 1]  116 	clr	(x)
      00812F 81               [ 4]  117 	ret
                                    118 ;	stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    119 ;	-----------------------------------------
                                    120 ;	 function CLK_FastHaltWakeUpCmd
                                    121 ;	-----------------------------------------
      008130                        122 _CLK_FastHaltWakeUpCmd:
                                    123 ;	stm8s_clk.c: 104: if (NewState != DISABLE)
      008130 0D 03            [ 1]  124 	tnz	(0x03, sp)
      008132 27 09            [ 1]  125 	jreq	00102$
                                    126 ;	stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008134 AE 50 C0         [ 2]  127 	ldw	x, #0x50c0
      008137 F6               [ 1]  128 	ld	a, (x)
      008138 AA 04            [ 1]  129 	or	a, #0x04
      00813A F7               [ 1]  130 	ld	(x), a
      00813B 20 07            [ 2]  131 	jra	00104$
      00813D                        132 00102$:
                                    133 ;	stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      00813D AE 50 C0         [ 2]  134 	ldw	x, #0x50c0
      008140 F6               [ 1]  135 	ld	a, (x)
      008141 A4 FB            [ 1]  136 	and	a, #0xfb
      008143 F7               [ 1]  137 	ld	(x), a
      008144                        138 00104$:
      008144 81               [ 4]  139 	ret
                                    140 ;	stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    141 ;	-----------------------------------------
                                    142 ;	 function CLK_HSECmd
                                    143 ;	-----------------------------------------
      008145                        144 _CLK_HSECmd:
                                    145 ;	stm8s_clk.c: 126: if (NewState != DISABLE)
      008145 0D 03            [ 1]  146 	tnz	(0x03, sp)
      008147 27 09            [ 1]  147 	jreq	00102$
                                    148 ;	stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      008149 AE 50 C1         [ 2]  149 	ldw	x, #0x50c1
      00814C F6               [ 1]  150 	ld	a, (x)
      00814D AA 01            [ 1]  151 	or	a, #0x01
      00814F F7               [ 1]  152 	ld	(x), a
      008150 20 04            [ 2]  153 	jra	00104$
      008152                        154 00102$:
                                    155 ;	stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008152 72 11 50 C1      [ 1]  156 	bres	0x50c1, #0
      008156                        157 00104$:
      008156 81               [ 4]  158 	ret
                                    159 ;	stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    160 ;	-----------------------------------------
                                    161 ;	 function CLK_HSICmd
                                    162 ;	-----------------------------------------
      008157                        163 _CLK_HSICmd:
                                    164 ;	stm8s_clk.c: 148: if (NewState != DISABLE)
      008157 0D 03            [ 1]  165 	tnz	(0x03, sp)
      008159 27 09            [ 1]  166 	jreq	00102$
                                    167 ;	stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      00815B AE 50 C0         [ 2]  168 	ldw	x, #0x50c0
      00815E F6               [ 1]  169 	ld	a, (x)
      00815F AA 01            [ 1]  170 	or	a, #0x01
      008161 F7               [ 1]  171 	ld	(x), a
      008162 20 04            [ 2]  172 	jra	00104$
      008164                        173 00102$:
                                    174 ;	stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008164 72 11 50 C0      [ 1]  175 	bres	0x50c0, #0
      008168                        176 00104$:
      008168 81               [ 4]  177 	ret
                                    178 ;	stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    179 ;	-----------------------------------------
                                    180 ;	 function CLK_LSICmd
                                    181 ;	-----------------------------------------
      008169                        182 _CLK_LSICmd:
                                    183 ;	stm8s_clk.c: 171: if (NewState != DISABLE)
      008169 0D 03            [ 1]  184 	tnz	(0x03, sp)
      00816B 27 09            [ 1]  185 	jreq	00102$
                                    186 ;	stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      00816D AE 50 C0         [ 2]  187 	ldw	x, #0x50c0
      008170 F6               [ 1]  188 	ld	a, (x)
      008171 AA 08            [ 1]  189 	or	a, #0x08
      008173 F7               [ 1]  190 	ld	(x), a
      008174 20 07            [ 2]  191 	jra	00104$
      008176                        192 00102$:
                                    193 ;	stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008176 AE 50 C0         [ 2]  194 	ldw	x, #0x50c0
      008179 F6               [ 1]  195 	ld	a, (x)
      00817A A4 F7            [ 1]  196 	and	a, #0xf7
      00817C F7               [ 1]  197 	ld	(x), a
      00817D                        198 00104$:
      00817D 81               [ 4]  199 	ret
                                    200 ;	stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    201 ;	-----------------------------------------
                                    202 ;	 function CLK_CCOCmd
                                    203 ;	-----------------------------------------
      00817E                        204 _CLK_CCOCmd:
                                    205 ;	stm8s_clk.c: 194: if (NewState != DISABLE)
      00817E 0D 03            [ 1]  206 	tnz	(0x03, sp)
      008180 27 09            [ 1]  207 	jreq	00102$
                                    208 ;	stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008182 AE 50 C9         [ 2]  209 	ldw	x, #0x50c9
      008185 F6               [ 1]  210 	ld	a, (x)
      008186 AA 01            [ 1]  211 	or	a, #0x01
      008188 F7               [ 1]  212 	ld	(x), a
      008189 20 04            [ 2]  213 	jra	00104$
      00818B                        214 00102$:
                                    215 ;	stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      00818B 72 11 50 C9      [ 1]  216 	bres	0x50c9, #0
      00818F                        217 00104$:
      00818F 81               [ 4]  218 	ret
                                    219 ;	stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    220 ;	-----------------------------------------
                                    221 ;	 function CLK_ClockSwitchCmd
                                    222 ;	-----------------------------------------
      008190                        223 _CLK_ClockSwitchCmd:
                                    224 ;	stm8s_clk.c: 218: if (NewState != DISABLE )
      008190 0D 03            [ 1]  225 	tnz	(0x03, sp)
      008192 27 09            [ 1]  226 	jreq	00102$
                                    227 ;	stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      008194 AE 50 C5         [ 2]  228 	ldw	x, #0x50c5
      008197 F6               [ 1]  229 	ld	a, (x)
      008198 AA 02            [ 1]  230 	or	a, #0x02
      00819A F7               [ 1]  231 	ld	(x), a
      00819B 20 07            [ 2]  232 	jra	00104$
      00819D                        233 00102$:
                                    234 ;	stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      00819D AE 50 C5         [ 2]  235 	ldw	x, #0x50c5
      0081A0 F6               [ 1]  236 	ld	a, (x)
      0081A1 A4 FD            [ 1]  237 	and	a, #0xfd
      0081A3 F7               [ 1]  238 	ld	(x), a
      0081A4                        239 00104$:
      0081A4 81               [ 4]  240 	ret
                                    241 ;	stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    242 ;	-----------------------------------------
                                    243 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    244 ;	-----------------------------------------
      0081A5                        245 _CLK_SlowActiveHaltWakeUpCmd:
                                    246 ;	stm8s_clk.c: 243: if (NewState != DISABLE)
      0081A5 0D 03            [ 1]  247 	tnz	(0x03, sp)
      0081A7 27 09            [ 1]  248 	jreq	00102$
                                    249 ;	stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0081A9 AE 50 C0         [ 2]  250 	ldw	x, #0x50c0
      0081AC F6               [ 1]  251 	ld	a, (x)
      0081AD AA 20            [ 1]  252 	or	a, #0x20
      0081AF F7               [ 1]  253 	ld	(x), a
      0081B0 20 07            [ 2]  254 	jra	00104$
      0081B2                        255 00102$:
                                    256 ;	stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      0081B2 AE 50 C0         [ 2]  257 	ldw	x, #0x50c0
      0081B5 F6               [ 1]  258 	ld	a, (x)
      0081B6 A4 DF            [ 1]  259 	and	a, #0xdf
      0081B8 F7               [ 1]  260 	ld	(x), a
      0081B9                        261 00104$:
      0081B9 81               [ 4]  262 	ret
                                    263 ;	stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    264 ;	-----------------------------------------
                                    265 ;	 function CLK_PeripheralClockConfig
                                    266 ;	-----------------------------------------
      0081BA                        267 _CLK_PeripheralClockConfig:
      0081BA 52 02            [ 2]  268 	sub	sp, #2
                                    269 ;	stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0081BC 7B 05            [ 1]  270 	ld	a, (0x05, sp)
      0081BE A4 0F            [ 1]  271 	and	a, #0x0f
      0081C0 95               [ 1]  272 	ld	xh, a
      0081C1 A6 01            [ 1]  273 	ld	a, #0x01
      0081C3 6B 02            [ 1]  274 	ld	(0x02, sp), a
      0081C5 9E               [ 1]  275 	ld	a, xh
      0081C6 4D               [ 1]  276 	tnz	a
      0081C7 27 05            [ 1]  277 	jreq	00125$
      0081C9                        278 00124$:
      0081C9 08 02            [ 1]  279 	sll	(0x02, sp)
      0081CB 4A               [ 1]  280 	dec	a
      0081CC 26 FB            [ 1]  281 	jrne	00124$
      0081CE                        282 00125$:
                                    283 ;	stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0081CE 7B 02            [ 1]  284 	ld	a, (0x02, sp)
      0081D0 43               [ 1]  285 	cpl	a
      0081D1 6B 01            [ 1]  286 	ld	(0x01, sp), a
                                    287 ;	stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0081D3 7B 05            [ 1]  288 	ld	a, (0x05, sp)
      0081D5 A5 10            [ 1]  289 	bcp	a, #0x10
      0081D7 26 1C            [ 1]  290 	jrne	00108$
                                    291 ;	stm8s_clk.c: 271: if (NewState != DISABLE)
      0081D9 0D 06            [ 1]  292 	tnz	(0x06, sp)
      0081DB 27 0C            [ 1]  293 	jreq	00102$
                                    294 ;	stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0081DD AE 50 C7         [ 2]  295 	ldw	x, #0x50c7
      0081E0 F6               [ 1]  296 	ld	a, (x)
      0081E1 1A 02            [ 1]  297 	or	a, (0x02, sp)
      0081E3 AE 50 C7         [ 2]  298 	ldw	x, #0x50c7
      0081E6 F7               [ 1]  299 	ld	(x), a
      0081E7 20 26            [ 2]  300 	jra	00110$
      0081E9                        301 00102$:
                                    302 ;	stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0081E9 AE 50 C7         [ 2]  303 	ldw	x, #0x50c7
      0081EC F6               [ 1]  304 	ld	a, (x)
      0081ED 14 01            [ 1]  305 	and	a, (0x01, sp)
      0081EF AE 50 C7         [ 2]  306 	ldw	x, #0x50c7
      0081F2 F7               [ 1]  307 	ld	(x), a
      0081F3 20 1A            [ 2]  308 	jra	00110$
      0081F5                        309 00108$:
                                    310 ;	stm8s_clk.c: 284: if (NewState != DISABLE)
      0081F5 0D 06            [ 1]  311 	tnz	(0x06, sp)
      0081F7 27 0C            [ 1]  312 	jreq	00105$
                                    313 ;	stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0081F9 AE 50 CA         [ 2]  314 	ldw	x, #0x50ca
      0081FC F6               [ 1]  315 	ld	a, (x)
      0081FD 1A 02            [ 1]  316 	or	a, (0x02, sp)
      0081FF AE 50 CA         [ 2]  317 	ldw	x, #0x50ca
      008202 F7               [ 1]  318 	ld	(x), a
      008203 20 0A            [ 2]  319 	jra	00110$
      008205                        320 00105$:
                                    321 ;	stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008205 AE 50 CA         [ 2]  322 	ldw	x, #0x50ca
      008208 F6               [ 1]  323 	ld	a, (x)
      008209 14 01            [ 1]  324 	and	a, (0x01, sp)
      00820B AE 50 CA         [ 2]  325 	ldw	x, #0x50ca
      00820E F7               [ 1]  326 	ld	(x), a
      00820F                        327 00110$:
      00820F 5B 02            [ 2]  328 	addw	sp, #2
      008211 81               [ 4]  329 	ret
                                    330 ;	stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    331 ;	-----------------------------------------
                                    332 ;	 function CLK_ClockSwitchConfig
                                    333 ;	-----------------------------------------
      008212                        334 _CLK_ClockSwitchConfig:
      008212 52 02            [ 2]  335 	sub	sp, #2
                                    336 ;	stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008214 AE 50 C3         [ 2]  337 	ldw	x, #0x50c3
      008217 F6               [ 1]  338 	ld	a, (x)
      008218 6B 02            [ 1]  339 	ld	(0x02, sp), a
                                    340 ;	stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      00821A 7B 05            [ 1]  341 	ld	a, (0x05, sp)
      00821C A1 01            [ 1]  342 	cp	a, #0x01
      00821E 26 40            [ 1]  343 	jrne	00122$
                                    344 ;	stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      008220 AE 50 C5         [ 2]  345 	ldw	x, #0x50c5
      008223 F6               [ 1]  346 	ld	a, (x)
      008224 AA 02            [ 1]  347 	or	a, #0x02
      008226 F7               [ 1]  348 	ld	(x), a
                                    349 ;	stm8s_clk.c: 331: if (ITState != DISABLE)
      008227 0D 07            [ 1]  350 	tnz	(0x07, sp)
      008229 27 09            [ 1]  351 	jreq	00102$
                                    352 ;	stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      00822B AE 50 C5         [ 2]  353 	ldw	x, #0x50c5
      00822E F6               [ 1]  354 	ld	a, (x)
      00822F AA 04            [ 1]  355 	or	a, #0x04
      008231 F7               [ 1]  356 	ld	(x), a
      008232 20 07            [ 2]  357 	jra	00103$
      008234                        358 00102$:
                                    359 ;	stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008234 AE 50 C5         [ 2]  360 	ldw	x, #0x50c5
      008237 F6               [ 1]  361 	ld	a, (x)
      008238 A4 FB            [ 1]  362 	and	a, #0xfb
      00823A F7               [ 1]  363 	ld	(x), a
      00823B                        364 00103$:
                                    365 ;	stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      00823B AE 50 C4         [ 2]  366 	ldw	x, #0x50c4
      00823E 7B 06            [ 1]  367 	ld	a, (0x06, sp)
      008240 F7               [ 1]  368 	ld	(x), a
                                    369 ;	stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008241 AE FF FF         [ 2]  370 	ldw	x, #0xffff
      008244                        371 00105$:
      008244 90 AE 50 C5      [ 2]  372 	ldw	y, #0x50c5
      008248 90 F6            [ 1]  373 	ld	a, (y)
      00824A 44               [ 1]  374 	srl	a
      00824B 24 06            [ 1]  375 	jrnc	00107$
      00824D 5D               [ 2]  376 	tnzw	x
      00824E 27 03            [ 1]  377 	jreq	00107$
                                    378 ;	stm8s_clk.c: 346: DownCounter--;
      008250 5A               [ 2]  379 	decw	x
      008251 20 F1            [ 2]  380 	jra	00105$
      008253                        381 00107$:
                                    382 ;	stm8s_clk.c: 349: if(DownCounter != 0)
      008253 5D               [ 2]  383 	tnzw	x
      008254 27 06            [ 1]  384 	jreq	00109$
                                    385 ;	stm8s_clk.c: 351: Swif = SUCCESS;
      008256 A6 01            [ 1]  386 	ld	a, #0x01
      008258 6B 01            [ 1]  387 	ld	(0x01, sp), a
      00825A 20 43            [ 2]  388 	jra	00123$
      00825C                        389 00109$:
                                    390 ;	stm8s_clk.c: 355: Swif = ERROR;
      00825C 0F 01            [ 1]  391 	clr	(0x01, sp)
      00825E 20 3F            [ 2]  392 	jra	00123$
      008260                        393 00122$:
                                    394 ;	stm8s_clk.c: 361: if (ITState != DISABLE)
      008260 0D 07            [ 1]  395 	tnz	(0x07, sp)
      008262 27 09            [ 1]  396 	jreq	00112$
                                    397 ;	stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      008264 AE 50 C5         [ 2]  398 	ldw	x, #0x50c5
      008267 F6               [ 1]  399 	ld	a, (x)
      008268 AA 04            [ 1]  400 	or	a, #0x04
      00826A F7               [ 1]  401 	ld	(x), a
      00826B 20 07            [ 2]  402 	jra	00113$
      00826D                        403 00112$:
                                    404 ;	stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00826D AE 50 C5         [ 2]  405 	ldw	x, #0x50c5
      008270 F6               [ 1]  406 	ld	a, (x)
      008271 A4 FB            [ 1]  407 	and	a, #0xfb
      008273 F7               [ 1]  408 	ld	(x), a
      008274                        409 00113$:
                                    410 ;	stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      008274 AE 50 C4         [ 2]  411 	ldw	x, #0x50c4
      008277 7B 06            [ 1]  412 	ld	a, (0x06, sp)
      008279 F7               [ 1]  413 	ld	(x), a
                                    414 ;	stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      00827A AE FF FF         [ 2]  415 	ldw	x, #0xffff
      00827D                        416 00115$:
      00827D 90 AE 50 C5      [ 2]  417 	ldw	y, #0x50c5
      008281 90 F6            [ 1]  418 	ld	a, (y)
      008283 A5 08            [ 1]  419 	bcp	a, #0x08
      008285 27 06            [ 1]  420 	jreq	00117$
      008287 5D               [ 2]  421 	tnzw	x
      008288 27 03            [ 1]  422 	jreq	00117$
                                    423 ;	stm8s_clk.c: 376: DownCounter--;
      00828A 5A               [ 2]  424 	decw	x
      00828B 20 F0            [ 2]  425 	jra	00115$
      00828D                        426 00117$:
                                    427 ;	stm8s_clk.c: 379: if(DownCounter != 0)
      00828D 5D               [ 2]  428 	tnzw	x
      00828E 27 0D            [ 1]  429 	jreq	00119$
                                    430 ;	stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      008290 AE 50 C5         [ 2]  431 	ldw	x, #0x50c5
      008293 F6               [ 1]  432 	ld	a, (x)
      008294 AA 02            [ 1]  433 	or	a, #0x02
      008296 F7               [ 1]  434 	ld	(x), a
                                    435 ;	stm8s_clk.c: 383: Swif = SUCCESS;
      008297 A6 01            [ 1]  436 	ld	a, #0x01
      008299 6B 01            [ 1]  437 	ld	(0x01, sp), a
      00829B 20 02            [ 2]  438 	jra	00123$
      00829D                        439 00119$:
                                    440 ;	stm8s_clk.c: 387: Swif = ERROR;
      00829D 0F 01            [ 1]  441 	clr	(0x01, sp)
      00829F                        442 00123$:
                                    443 ;	stm8s_clk.c: 390: if(Swif != ERROR)
      00829F 0D 01            [ 1]  444 	tnz	(0x01, sp)
      0082A1 27 34            [ 1]  445 	jreq	00136$
                                    446 ;	stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0082A3 0D 08            [ 1]  447 	tnz	(0x08, sp)
      0082A5 26 0F            [ 1]  448 	jrne	00132$
      0082A7 7B 02            [ 1]  449 	ld	a, (0x02, sp)
      0082A9 A1 E1            [ 1]  450 	cp	a, #0xe1
      0082AB 26 09            [ 1]  451 	jrne	00132$
                                    452 ;	stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0082AD AE 50 C0         [ 2]  453 	ldw	x, #0x50c0
      0082B0 F6               [ 1]  454 	ld	a, (x)
      0082B1 A4 FE            [ 1]  455 	and	a, #0xfe
      0082B3 F7               [ 1]  456 	ld	(x), a
      0082B4 20 21            [ 2]  457 	jra	00136$
      0082B6                        458 00132$:
                                    459 ;	stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      0082B6 0D 08            [ 1]  460 	tnz	(0x08, sp)
      0082B8 26 0F            [ 1]  461 	jrne	00128$
      0082BA 7B 02            [ 1]  462 	ld	a, (0x02, sp)
      0082BC A1 D2            [ 1]  463 	cp	a, #0xd2
      0082BE 26 09            [ 1]  464 	jrne	00128$
                                    465 ;	stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0082C0 AE 50 C0         [ 2]  466 	ldw	x, #0x50c0
      0082C3 F6               [ 1]  467 	ld	a, (x)
      0082C4 A4 F7            [ 1]  468 	and	a, #0xf7
      0082C6 F7               [ 1]  469 	ld	(x), a
      0082C7 20 0E            [ 2]  470 	jra	00136$
      0082C9                        471 00128$:
                                    472 ;	stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      0082C9 0D 08            [ 1]  473 	tnz	(0x08, sp)
      0082CB 26 0A            [ 1]  474 	jrne	00136$
      0082CD 7B 02            [ 1]  475 	ld	a, (0x02, sp)
      0082CF A1 B4            [ 1]  476 	cp	a, #0xb4
      0082D1 26 04            [ 1]  477 	jrne	00136$
                                    478 ;	stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0082D3 72 11 50 C1      [ 1]  479 	bres	0x50c1, #0
      0082D7                        480 00136$:
                                    481 ;	stm8s_clk.c: 406: return(Swif);
      0082D7 7B 01            [ 1]  482 	ld	a, (0x01, sp)
      0082D9 5B 02            [ 2]  483 	addw	sp, #2
      0082DB 81               [ 4]  484 	ret
                                    485 ;	stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    486 ;	-----------------------------------------
                                    487 ;	 function CLK_HSIPrescalerConfig
                                    488 ;	-----------------------------------------
      0082DC                        489 _CLK_HSIPrescalerConfig:
                                    490 ;	stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0082DC AE 50 C6         [ 2]  491 	ldw	x, #0x50c6
      0082DF F6               [ 1]  492 	ld	a, (x)
      0082E0 A4 E7            [ 1]  493 	and	a, #0xe7
      0082E2 F7               [ 1]  494 	ld	(x), a
                                    495 ;	stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      0082E3 AE 50 C6         [ 2]  496 	ldw	x, #0x50c6
      0082E6 F6               [ 1]  497 	ld	a, (x)
      0082E7 1A 03            [ 1]  498 	or	a, (0x03, sp)
      0082E9 AE 50 C6         [ 2]  499 	ldw	x, #0x50c6
      0082EC F7               [ 1]  500 	ld	(x), a
      0082ED 81               [ 4]  501 	ret
                                    502 ;	stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    503 ;	-----------------------------------------
                                    504 ;	 function CLK_CCOConfig
                                    505 ;	-----------------------------------------
      0082EE                        506 _CLK_CCOConfig:
                                    507 ;	stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      0082EE AE 50 C9         [ 2]  508 	ldw	x, #0x50c9
      0082F1 F6               [ 1]  509 	ld	a, (x)
      0082F2 A4 E1            [ 1]  510 	and	a, #0xe1
      0082F4 F7               [ 1]  511 	ld	(x), a
                                    512 ;	stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      0082F5 AE 50 C9         [ 2]  513 	ldw	x, #0x50c9
      0082F8 F6               [ 1]  514 	ld	a, (x)
      0082F9 1A 03            [ 1]  515 	or	a, (0x03, sp)
      0082FB AE 50 C9         [ 2]  516 	ldw	x, #0x50c9
      0082FE F7               [ 1]  517 	ld	(x), a
                                    518 ;	stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      0082FF 72 10 50 C9      [ 1]  519 	bset	0x50c9, #0
      008303 81               [ 4]  520 	ret
                                    521 ;	stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    522 ;	-----------------------------------------
                                    523 ;	 function CLK_ITConfig
                                    524 ;	-----------------------------------------
      008304                        525 _CLK_ITConfig:
      008304 88               [ 1]  526 	push	a
                                    527 ;	stm8s_clk.c: 467: switch (CLK_IT)
      008305 7B 04            [ 1]  528 	ld	a, (0x04, sp)
      008307 A1 0C            [ 1]  529 	cp	a, #0x0c
      008309 26 06            [ 1]  530 	jrne	00135$
      00830B A6 01            [ 1]  531 	ld	a, #0x01
      00830D 6B 01            [ 1]  532 	ld	(0x01, sp), a
      00830F 20 02            [ 2]  533 	jra	00136$
      008311                        534 00135$:
      008311 0F 01            [ 1]  535 	clr	(0x01, sp)
      008313                        536 00136$:
      008313 7B 04            [ 1]  537 	ld	a, (0x04, sp)
      008315 A1 1C            [ 1]  538 	cp	a, #0x1c
      008317 26 04            [ 1]  539 	jrne	00138$
      008319 A6 01            [ 1]  540 	ld	a, #0x01
      00831B 20 01            [ 2]  541 	jra	00139$
      00831D                        542 00138$:
      00831D 4F               [ 1]  543 	clr	a
      00831E                        544 00139$:
                                    545 ;	stm8s_clk.c: 465: if (NewState != DISABLE)
      00831E 0D 05            [ 1]  546 	tnz	(0x05, sp)
      008320 27 19            [ 1]  547 	jreq	00110$
                                    548 ;	stm8s_clk.c: 467: switch (CLK_IT)
      008322 0D 01            [ 1]  549 	tnz	(0x01, sp)
      008324 26 0C            [ 1]  550 	jrne	00102$
      008326 4D               [ 1]  551 	tnz	a
      008327 27 29            [ 1]  552 	jreq	00112$
                                    553 ;	stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      008329 AE 50 C5         [ 2]  554 	ldw	x, #0x50c5
      00832C F6               [ 1]  555 	ld	a, (x)
      00832D AA 04            [ 1]  556 	or	a, #0x04
      00832F F7               [ 1]  557 	ld	(x), a
                                    558 ;	stm8s_clk.c: 471: break;
      008330 20 20            [ 2]  559 	jra	00112$
                                    560 ;	stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      008332                        561 00102$:
                                    562 ;	stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      008332 AE 50 C8         [ 2]  563 	ldw	x, #0x50c8
      008335 F6               [ 1]  564 	ld	a, (x)
      008336 AA 04            [ 1]  565 	or	a, #0x04
      008338 F7               [ 1]  566 	ld	(x), a
                                    567 ;	stm8s_clk.c: 474: break;
      008339 20 17            [ 2]  568 	jra	00112$
                                    569 ;	stm8s_clk.c: 477: }
      00833B                        570 00110$:
                                    571 ;	stm8s_clk.c: 481: switch (CLK_IT)
      00833B 0D 01            [ 1]  572 	tnz	(0x01, sp)
      00833D 26 0C            [ 1]  573 	jrne	00106$
      00833F 4D               [ 1]  574 	tnz	a
      008340 27 10            [ 1]  575 	jreq	00112$
                                    576 ;	stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008342 AE 50 C5         [ 2]  577 	ldw	x, #0x50c5
      008345 F6               [ 1]  578 	ld	a, (x)
      008346 A4 FB            [ 1]  579 	and	a, #0xfb
      008348 F7               [ 1]  580 	ld	(x), a
                                    581 ;	stm8s_clk.c: 485: break;
      008349 20 07            [ 2]  582 	jra	00112$
                                    583 ;	stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      00834B                        584 00106$:
                                    585 ;	stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00834B AE 50 C8         [ 2]  586 	ldw	x, #0x50c8
      00834E F6               [ 1]  587 	ld	a, (x)
      00834F A4 FB            [ 1]  588 	and	a, #0xfb
      008351 F7               [ 1]  589 	ld	(x), a
                                    590 ;	stm8s_clk.c: 491: }
      008352                        591 00112$:
      008352 84               [ 1]  592 	pop	a
      008353 81               [ 4]  593 	ret
                                    594 ;	stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    595 ;	-----------------------------------------
                                    596 ;	 function CLK_SYSCLKConfig
                                    597 ;	-----------------------------------------
      008354                        598 _CLK_SYSCLKConfig:
      008354 52 02            [ 2]  599 	sub	sp, #2
                                    600 ;	stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      008356 7B 05            [ 1]  601 	ld	a, (0x05, sp)
      008358 48               [ 1]  602 	sll	a
      008359 25 19            [ 1]  603 	jrc	00102$
                                    604 ;	stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00835B AE 50 C6         [ 2]  605 	ldw	x, #0x50c6
      00835E F6               [ 1]  606 	ld	a, (x)
      00835F A4 E7            [ 1]  607 	and	a, #0xe7
      008361 F7               [ 1]  608 	ld	(x), a
                                    609 ;	stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008362 AE 50 C6         [ 2]  610 	ldw	x, #0x50c6
      008365 F6               [ 1]  611 	ld	a, (x)
      008366 6B 02            [ 1]  612 	ld	(0x02, sp), a
      008368 7B 05            [ 1]  613 	ld	a, (0x05, sp)
      00836A A4 18            [ 1]  614 	and	a, #0x18
      00836C 1A 02            [ 1]  615 	or	a, (0x02, sp)
      00836E AE 50 C6         [ 2]  616 	ldw	x, #0x50c6
      008371 F7               [ 1]  617 	ld	(x), a
      008372 20 17            [ 2]  618 	jra	00104$
      008374                        619 00102$:
                                    620 ;	stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      008374 AE 50 C6         [ 2]  621 	ldw	x, #0x50c6
      008377 F6               [ 1]  622 	ld	a, (x)
      008378 A4 F8            [ 1]  623 	and	a, #0xf8
      00837A F7               [ 1]  624 	ld	(x), a
                                    625 ;	stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00837B AE 50 C6         [ 2]  626 	ldw	x, #0x50c6
      00837E F6               [ 1]  627 	ld	a, (x)
      00837F 6B 01            [ 1]  628 	ld	(0x01, sp), a
      008381 7B 05            [ 1]  629 	ld	a, (0x05, sp)
      008383 A4 07            [ 1]  630 	and	a, #0x07
      008385 1A 01            [ 1]  631 	or	a, (0x01, sp)
      008387 AE 50 C6         [ 2]  632 	ldw	x, #0x50c6
      00838A F7               [ 1]  633 	ld	(x), a
      00838B                        634 00104$:
      00838B 5B 02            [ 2]  635 	addw	sp, #2
      00838D 81               [ 4]  636 	ret
                                    637 ;	stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    638 ;	-----------------------------------------
                                    639 ;	 function CLK_SWIMConfig
                                    640 ;	-----------------------------------------
      00838E                        641 _CLK_SWIMConfig:
                                    642 ;	stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      00838E 0D 03            [ 1]  643 	tnz	(0x03, sp)
      008390 27 09            [ 1]  644 	jreq	00102$
                                    645 ;	stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008392 AE 50 CD         [ 2]  646 	ldw	x, #0x50cd
      008395 F6               [ 1]  647 	ld	a, (x)
      008396 AA 01            [ 1]  648 	or	a, #0x01
      008398 F7               [ 1]  649 	ld	(x), a
      008399 20 04            [ 2]  650 	jra	00104$
      00839B                        651 00102$:
                                    652 ;	stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00839B 72 11 50 CD      [ 1]  653 	bres	0x50cd, #0
      00839F                        654 00104$:
      00839F 81               [ 4]  655 	ret
                                    656 ;	stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    657 ;	-----------------------------------------
                                    658 ;	 function CLK_ClockSecuritySystemEnable
                                    659 ;	-----------------------------------------
      0083A0                        660 _CLK_ClockSecuritySystemEnable:
                                    661 ;	stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      0083A0 72 10 50 C8      [ 1]  662 	bset	0x50c8, #0
      0083A4 81               [ 4]  663 	ret
                                    664 ;	stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    665 ;	-----------------------------------------
                                    666 ;	 function CLK_GetSYSCLKSource
                                    667 ;	-----------------------------------------
      0083A5                        668 _CLK_GetSYSCLKSource:
                                    669 ;	stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      0083A5 AE 50 C3         [ 2]  670 	ldw	x, #0x50c3
      0083A8 F6               [ 1]  671 	ld	a, (x)
      0083A9 81               [ 4]  672 	ret
                                    673 ;	stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    674 ;	-----------------------------------------
                                    675 ;	 function CLK_GetClockFreq
                                    676 ;	-----------------------------------------
      0083AA                        677 _CLK_GetClockFreq:
      0083AA 52 07            [ 2]  678 	sub	sp, #7
                                    679 ;	stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0083AC AE 50 C3         [ 2]  680 	ldw	x, #0x50c3
      0083AF F6               [ 1]  681 	ld	a, (x)
      0083B0 6B 01            [ 1]  682 	ld	(0x01, sp), a
                                    683 ;	stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      0083B2 7B 01            [ 1]  684 	ld	a, (0x01, sp)
      0083B4 A1 E1            [ 1]  685 	cp	a, #0xe1
      0083B6 26 2D            [ 1]  686 	jrne	00105$
                                    687 ;	stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0083B8 AE 50 C6         [ 2]  688 	ldw	x, #0x50c6
      0083BB F6               [ 1]  689 	ld	a, (x)
      0083BC A4 18            [ 1]  690 	and	a, #0x18
                                    691 ;	stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0083BE 44               [ 1]  692 	srl	a
      0083BF 44               [ 1]  693 	srl	a
      0083C0 44               [ 1]  694 	srl	a
                                    695 ;	stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      0083C1 AE 84 98         [ 2]  696 	ldw	x, #_HSIDivFactor+0
      0083C4 1F 06            [ 2]  697 	ldw	(0x06, sp), x
      0083C6 5F               [ 1]  698 	clrw	x
      0083C7 97               [ 1]  699 	ld	xl, a
      0083C8 72 FB 06         [ 2]  700 	addw	x, (0x06, sp)
      0083CB F6               [ 1]  701 	ld	a, (x)
      0083CC 97               [ 1]  702 	ld	xl, a
                                    703 ;	stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0083CD 4F               [ 1]  704 	clr	a
      0083CE 95               [ 1]  705 	ld	xh, a
      0083CF 90 5F            [ 1]  706 	clrw	y
      0083D1 89               [ 2]  707 	pushw	x
      0083D2 90 89            [ 2]  708 	pushw	y
      0083D4 4B 00            [ 1]  709 	push	#0x00
      0083D6 4B 24            [ 1]  710 	push	#0x24
      0083D8 4B F4            [ 1]  711 	push	#0xf4
      0083DA 4B 00            [ 1]  712 	push	#0x00
      0083DC CD 8A C4         [ 4]  713 	call	__divulong
      0083DF 5B 08            [ 2]  714 	addw	sp, #8
      0083E1 1F 04            [ 2]  715 	ldw	(0x04, sp), x
      0083E3 20 18            [ 2]  716 	jra	00106$
      0083E5                        717 00105$:
                                    718 ;	stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0083E5 7B 01            [ 1]  719 	ld	a, (0x01, sp)
      0083E7 A1 D2            [ 1]  720 	cp	a, #0xd2
      0083E9 26 0B            [ 1]  721 	jrne	00102$
                                    722 ;	stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0083EB AE F4 00         [ 2]  723 	ldw	x, #0xf400
      0083EE 1F 04            [ 2]  724 	ldw	(0x04, sp), x
      0083F0 90 AE 00 01      [ 2]  725 	ldw	y, #0x0001
      0083F4 20 07            [ 2]  726 	jra	00106$
      0083F6                        727 00102$:
                                    728 ;	stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0083F6 5F               [ 1]  729 	clrw	x
      0083F7 1F 04            [ 2]  730 	ldw	(0x04, sp), x
      0083F9 90 AE 00 E1      [ 2]  731 	ldw	y, #0x00e1
      0083FD                        732 00106$:
                                    733 ;	stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0083FD 1E 04            [ 2]  734 	ldw	x, (0x04, sp)
      0083FF 5B 07            [ 2]  735 	addw	sp, #7
      008401 81               [ 4]  736 	ret
                                    737 ;	stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                    738 ;	-----------------------------------------
                                    739 ;	 function CLK_AdjustHSICalibrationValue
                                    740 ;	-----------------------------------------
      008402                        741 _CLK_AdjustHSICalibrationValue:
                                    742 ;	stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      008402 AE 50 CC         [ 2]  743 	ldw	x, #0x50cc
      008405 F6               [ 1]  744 	ld	a, (x)
      008406 A4 F8            [ 1]  745 	and	a, #0xf8
      008408 1A 03            [ 1]  746 	or	a, (0x03, sp)
      00840A AE 50 CC         [ 2]  747 	ldw	x, #0x50cc
      00840D F7               [ 1]  748 	ld	(x), a
      00840E 81               [ 4]  749 	ret
                                    750 ;	stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                    751 ;	-----------------------------------------
                                    752 ;	 function CLK_SYSCLKEmergencyClear
                                    753 ;	-----------------------------------------
      00840F                        754 _CLK_SYSCLKEmergencyClear:
                                    755 ;	stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      00840F 72 11 50 C5      [ 1]  756 	bres	0x50c5, #0
      008413 81               [ 4]  757 	ret
                                    758 ;	stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    759 ;	-----------------------------------------
                                    760 ;	 function CLK_GetFlagStatus
                                    761 ;	-----------------------------------------
      008414                        762 _CLK_GetFlagStatus:
                                    763 ;	stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      008414 4F               [ 1]  764 	clr	a
      008415 97               [ 1]  765 	ld	xl, a
      008416 7B 03            [ 1]  766 	ld	a, (0x03, sp)
      008418 95               [ 1]  767 	ld	xh, a
                                    768 ;	stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008419 A3 01 00         [ 2]  769 	cpw	x, #0x0100
      00841C 26 06            [ 1]  770 	jrne	00111$
                                    771 ;	stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      00841E AE 50 C0         [ 2]  772 	ldw	x, #0x50c0
      008421 F6               [ 1]  773 	ld	a, (x)
      008422 20 25            [ 2]  774 	jra	00112$
      008424                        775 00111$:
                                    776 ;	stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      008424 A3 02 00         [ 2]  777 	cpw	x, #0x0200
      008427 26 06            [ 1]  778 	jrne	00108$
                                    779 ;	stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      008429 AE 50 C1         [ 2]  780 	ldw	x, #0x50c1
      00842C F6               [ 1]  781 	ld	a, (x)
      00842D 20 1A            [ 2]  782 	jra	00112$
      00842F                        783 00108$:
                                    784 ;	stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      00842F A3 03 00         [ 2]  785 	cpw	x, #0x0300
      008432 26 06            [ 1]  786 	jrne	00105$
                                    787 ;	stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      008434 AE 50 C5         [ 2]  788 	ldw	x, #0x50c5
      008437 F6               [ 1]  789 	ld	a, (x)
      008438 20 0F            [ 2]  790 	jra	00112$
      00843A                        791 00105$:
                                    792 ;	stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      00843A A3 04 00         [ 2]  793 	cpw	x, #0x0400
      00843D 26 06            [ 1]  794 	jrne	00102$
                                    795 ;	stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      00843F AE 50 C8         [ 2]  796 	ldw	x, #0x50c8
      008442 F6               [ 1]  797 	ld	a, (x)
      008443 20 04            [ 2]  798 	jra	00112$
      008445                        799 00102$:
                                    800 ;	stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      008445 AE 50 C9         [ 2]  801 	ldw	x, #0x50c9
      008448 F6               [ 1]  802 	ld	a, (x)
      008449                        803 00112$:
                                    804 ;	stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      008449 02               [ 1]  805 	rlwa	x
      00844A 7B 04            [ 1]  806 	ld	a, (0x04, sp)
      00844C 01               [ 1]  807 	rrwa	x
      00844D 89               [ 2]  808 	pushw	x
      00844E 14 01            [ 1]  809 	and	a, (1, sp)
      008450 85               [ 2]  810 	popw	x
      008451 4D               [ 1]  811 	tnz	a
      008452 27 04            [ 1]  812 	jreq	00114$
                                    813 ;	stm8s_clk.c: 670: bitstatus = SET;
      008454 A6 01            [ 1]  814 	ld	a, #0x01
      008456 20 01            [ 2]  815 	jra	00115$
      008458                        816 00114$:
                                    817 ;	stm8s_clk.c: 674: bitstatus = RESET;
      008458 4F               [ 1]  818 	clr	a
      008459                        819 00115$:
                                    820 ;	stm8s_clk.c: 678: return((FlagStatus)bitstatus);
      008459 81               [ 4]  821 	ret
                                    822 ;	stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                    823 ;	-----------------------------------------
                                    824 ;	 function CLK_GetITStatus
                                    825 ;	-----------------------------------------
      00845A                        826 _CLK_GetITStatus:
                                    827 ;	stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      00845A 7B 03            [ 1]  828 	ld	a, (0x03, sp)
      00845C A1 1C            [ 1]  829 	cp	a, #0x1c
      00845E 26 11            [ 1]  830 	jrne	00108$
                                    831 ;	stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008460 AE 50 C5         [ 2]  832 	ldw	x, #0x50c5
      008463 F6               [ 1]  833 	ld	a, (x)
      008464 14 03            [ 1]  834 	and	a, (0x03, sp)
      008466 A1 0C            [ 1]  835 	cp	a, #0x0c
      008468 26 04            [ 1]  836 	jrne	00102$
                                    837 ;	stm8s_clk.c: 699: bitstatus = SET;
      00846A A6 01            [ 1]  838 	ld	a, #0x01
      00846C 20 12            [ 2]  839 	jra	00109$
      00846E                        840 00102$:
                                    841 ;	stm8s_clk.c: 703: bitstatus = RESET;
      00846E 4F               [ 1]  842 	clr	a
      00846F 20 0F            [ 2]  843 	jra	00109$
      008471                        844 00108$:
                                    845 ;	stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008471 AE 50 C8         [ 2]  846 	ldw	x, #0x50c8
      008474 F6               [ 1]  847 	ld	a, (x)
      008475 14 03            [ 1]  848 	and	a, (0x03, sp)
      008477 A1 0C            [ 1]  849 	cp	a, #0x0c
      008479 26 04            [ 1]  850 	jrne	00105$
                                    851 ;	stm8s_clk.c: 711: bitstatus = SET;
      00847B A6 01            [ 1]  852 	ld	a, #0x01
      00847D 20 01            [ 2]  853 	jra	00109$
      00847F                        854 00105$:
                                    855 ;	stm8s_clk.c: 715: bitstatus = RESET;
      00847F 4F               [ 1]  856 	clr	a
      008480                        857 00109$:
                                    858 ;	stm8s_clk.c: 720: return bitstatus;
      008480 81               [ 4]  859 	ret
                                    860 ;	stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                    861 ;	-----------------------------------------
                                    862 ;	 function CLK_ClearITPendingBit
                                    863 ;	-----------------------------------------
      008481                        864 _CLK_ClearITPendingBit:
                                    865 ;	stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      008481 7B 03            [ 1]  866 	ld	a, (0x03, sp)
      008483 A1 0C            [ 1]  867 	cp	a, #0x0c
      008485 26 09            [ 1]  868 	jrne	00102$
                                    869 ;	stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      008487 AE 50 C8         [ 2]  870 	ldw	x, #0x50c8
      00848A F6               [ 1]  871 	ld	a, (x)
      00848B A4 F7            [ 1]  872 	and	a, #0xf7
      00848D F7               [ 1]  873 	ld	(x), a
      00848E 20 07            [ 2]  874 	jra	00104$
      008490                        875 00102$:
                                    876 ;	stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      008490 AE 50 C5         [ 2]  877 	ldw	x, #0x50c5
      008493 F6               [ 1]  878 	ld	a, (x)
      008494 A4 F7            [ 1]  879 	and	a, #0xf7
      008496 F7               [ 1]  880 	ld	(x), a
      008497                        881 00104$:
      008497 81               [ 4]  882 	ret
                                    883 	.area CODE
      008498                        884 _HSIDivFactor:
      008498 01                     885 	.db #0x01	; 1
      008499 02                     886 	.db #0x02	; 2
      00849A 04                     887 	.db #0x04	; 4
      00849B 08                     888 	.db #0x08	; 8
      00849C                        889 _CLKPrescTable:
      00849C 01                     890 	.db #0x01	; 1
      00849D 02                     891 	.db #0x02	; 2
      00849E 04                     892 	.db #0x04	; 4
      00849F 08                     893 	.db #0x08	; 8
      0084A0 0A                     894 	.db #0x0A	; 10
      0084A1 10                     895 	.db #0x10	; 16
      0084A2 14                     896 	.db #0x14	; 20
      0084A3 28                     897 	.db #0x28	; 40
                                    898 	.area INITIALIZER
                                    899 	.area CABS (ABS)

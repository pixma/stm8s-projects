                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 09 13:21:39 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8s_awu
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _TBR_Array
                                     13 	.globl _APR_Array
                                     14 	.globl _AWU_DeInit
                                     15 	.globl _AWU_Init
                                     16 	.globl _AWU_Cmd
                                     17 	.globl _AWU_LSICalibrationConfig
                                     18 	.globl _AWU_IdleModeEnable
                                     19 	.globl _AWU_GetFlagStatus
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 ;--------------------------------------------------------
                                     33 ; global & static initialisations
                                     34 ;--------------------------------------------------------
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area GSINIT
                                     39 ;--------------------------------------------------------
                                     40 ; Home
                                     41 ;--------------------------------------------------------
                                     42 	.area HOME
                                     43 	.area HOME
                                     44 ;--------------------------------------------------------
                                     45 ; code
                                     46 ;--------------------------------------------------------
                                     47 	.area CODE
                                     48 ;	src\stm8s_awu.c: 73: void AWU_DeInit(void)
                                     49 ;	-----------------------------------------
                                     50 ;	 function AWU_DeInit
                                     51 ;	-----------------------------------------
      008198                         52 _AWU_DeInit:
                                     53 ;	src\stm8s_awu.c: 75: AWU->CSR = AWU_CSR_RESET_VALUE;
      008198 AE 50 F0         [ 2]   54 	ldw	x, #0x50f0
      00819B 7F               [ 1]   55 	clr	(x)
                                     56 ;	src\stm8s_awu.c: 76: AWU->APR = AWU_APR_RESET_VALUE;
      00819C AE 50 F1         [ 2]   57 	ldw	x, #0x50f1
      00819F A6 3F            [ 1]   58 	ld	a, #0x3f
      0081A1 F7               [ 1]   59 	ld	(x), a
                                     60 ;	src\stm8s_awu.c: 77: AWU->TBR = AWU_TBR_RESET_VALUE;
      0081A2 AE 50 F2         [ 2]   61 	ldw	x, #0x50f2
      0081A5 7F               [ 1]   62 	clr	(x)
      0081A6 81               [ 4]   63 	ret
                                     64 ;	src\stm8s_awu.c: 88: void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
                                     65 ;	-----------------------------------------
                                     66 ;	 function AWU_Init
                                     67 ;	-----------------------------------------
      0081A7                         68 _AWU_Init:
      0081A7 52 02            [ 2]   69 	sub	sp, #2
                                     70 ;	src\stm8s_awu.c: 94: AWU->CSR |= AWU_CSR_AWUEN;
      0081A9 AE 50 F0         [ 2]   71 	ldw	x, #0x50f0
      0081AC F6               [ 1]   72 	ld	a, (x)
      0081AD AA 10            [ 1]   73 	or	a, #0x10
      0081AF F7               [ 1]   74 	ld	(x), a
                                     75 ;	src\stm8s_awu.c: 97: AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
      0081B0 AE 50 F2         [ 2]   76 	ldw	x, #0x50f2
      0081B3 F6               [ 1]   77 	ld	a, (x)
      0081B4 A4 F0            [ 1]   78 	and	a, #0xf0
      0081B6 F7               [ 1]   79 	ld	(x), a
                                     80 ;	src\stm8s_awu.c: 98: AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
      0081B7 AE 50 F2         [ 2]   81 	ldw	x, #0x50f2
      0081BA F6               [ 1]   82 	ld	a, (x)
      0081BB 6B 02            [ 1]   83 	ld	(0x02, sp), a
      0081BD AE 82 80         [ 2]   84 	ldw	x, #_TBR_Array+0
      0081C0 9F               [ 1]   85 	ld	a, xl
      0081C1 1B 05            [ 1]   86 	add	a, (0x05, sp)
      0081C3 97               [ 1]   87 	ld	xl, a
      0081C4 9E               [ 1]   88 	ld	a, xh
      0081C5 A9 00            [ 1]   89 	adc	a, #0x00
      0081C7 95               [ 1]   90 	ld	xh, a
      0081C8 F6               [ 1]   91 	ld	a, (x)
      0081C9 1A 02            [ 1]   92 	or	a, (0x02, sp)
      0081CB AE 50 F2         [ 2]   93 	ldw	x, #0x50f2
      0081CE F7               [ 1]   94 	ld	(x), a
                                     95 ;	src\stm8s_awu.c: 101: AWU->APR &= (uint8_t)(~AWU_APR_APR);
      0081CF AE 50 F1         [ 2]   96 	ldw	x, #0x50f1
      0081D2 F6               [ 1]   97 	ld	a, (x)
      0081D3 A4 C0            [ 1]   98 	and	a, #0xc0
      0081D5 F7               [ 1]   99 	ld	(x), a
                                    100 ;	src\stm8s_awu.c: 102: AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
      0081D6 AE 50 F1         [ 2]  101 	ldw	x, #0x50f1
      0081D9 F6               [ 1]  102 	ld	a, (x)
      0081DA 6B 01            [ 1]  103 	ld	(0x01, sp), a
      0081DC AE 82 6F         [ 2]  104 	ldw	x, #_APR_Array+0
      0081DF 9F               [ 1]  105 	ld	a, xl
      0081E0 1B 05            [ 1]  106 	add	a, (0x05, sp)
      0081E2 97               [ 1]  107 	ld	xl, a
      0081E3 9E               [ 1]  108 	ld	a, xh
      0081E4 A9 00            [ 1]  109 	adc	a, #0x00
      0081E6 95               [ 1]  110 	ld	xh, a
      0081E7 F6               [ 1]  111 	ld	a, (x)
      0081E8 1A 01            [ 1]  112 	or	a, (0x01, sp)
      0081EA AE 50 F1         [ 2]  113 	ldw	x, #0x50f1
      0081ED F7               [ 1]  114 	ld	(x), a
      0081EE 5B 02            [ 2]  115 	addw	sp, #2
      0081F0 81               [ 4]  116 	ret
                                    117 ;	src\stm8s_awu.c: 112: void AWU_Cmd(FunctionalState NewState)
                                    118 ;	-----------------------------------------
                                    119 ;	 function AWU_Cmd
                                    120 ;	-----------------------------------------
      0081F1                        121 _AWU_Cmd:
                                    122 ;	src\stm8s_awu.c: 114: if (NewState != DISABLE)
      0081F1 0D 03            [ 1]  123 	tnz	(0x03, sp)
      0081F3 27 09            [ 1]  124 	jreq	00102$
                                    125 ;	src\stm8s_awu.c: 117: AWU->CSR |= AWU_CSR_AWUEN;
      0081F5 AE 50 F0         [ 2]  126 	ldw	x, #0x50f0
      0081F8 F6               [ 1]  127 	ld	a, (x)
      0081F9 AA 10            [ 1]  128 	or	a, #0x10
      0081FB F7               [ 1]  129 	ld	(x), a
      0081FC 20 07            [ 2]  130 	jra	00104$
      0081FE                        131 00102$:
                                    132 ;	src\stm8s_awu.c: 122: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
      0081FE AE 50 F0         [ 2]  133 	ldw	x, #0x50f0
      008201 F6               [ 1]  134 	ld	a, (x)
      008202 A4 EF            [ 1]  135 	and	a, #0xef
      008204 F7               [ 1]  136 	ld	(x), a
      008205                        137 00104$:
      008205 81               [ 4]  138 	ret
                                    139 ;	src\stm8s_awu.c: 139: void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
                                    140 ;	-----------------------------------------
                                    141 ;	 function AWU_LSICalibrationConfig
                                    142 ;	-----------------------------------------
      008206                        143 _AWU_LSICalibrationConfig:
      008206 52 06            [ 2]  144 	sub	sp, #6
                                    145 ;	src\stm8s_awu.c: 147: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
      008208 4B E8            [ 1]  146 	push	#0xe8
      00820A 4B 03            [ 1]  147 	push	#0x03
      00820C 5F               [ 1]  148 	clrw	x
      00820D 89               [ 2]  149 	pushw	x
      00820E 1E 0F            [ 2]  150 	ldw	x, (0x0f, sp)
      008210 89               [ 2]  151 	pushw	x
      008211 1E 0F            [ 2]  152 	ldw	x, (0x0f, sp)
      008213 89               [ 2]  153 	pushw	x
      008214 CD 8C 2C         [ 4]  154 	call	__divulong
      008217 5B 08            [ 2]  155 	addw	sp, #8
      008219 51               [ 1]  156 	exgw	x, y
                                    157 ;	src\stm8s_awu.c: 151: A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
      00821A 93               [ 1]  158 	ldw	x, y
      00821B 54               [ 2]  159 	srlw	x
      00821C 54               [ 2]  160 	srlw	x
      00821D 1F 01            [ 2]  161 	ldw	(0x01, sp), x
                                    162 ;	src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
      00821F 1E 01            [ 2]  163 	ldw	x, (0x01, sp)
      008221 58               [ 2]  164 	sllw	x
      008222 58               [ 2]  165 	sllw	x
      008223 1F 05            [ 2]  166 	ldw	(0x05, sp), x
      008225 72 F2 05         [ 2]  167 	subw	y, (0x05, sp)
      008228 1E 01            [ 2]  168 	ldw	x, (0x01, sp)
      00822A 58               [ 2]  169 	sllw	x
      00822B 5C               [ 2]  170 	incw	x
      00822C 89               [ 2]  171 	pushw	x
      00822D 90 89            [ 2]  172 	pushw	y
                                    173 ;	src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
      00822F CD 8B D6         [ 4]  174 	call	__mulint
      008232 5B 04            [ 2]  175 	addw	sp, #4
      008234 1F 03            [ 2]  176 	ldw	(0x03, sp), x
      008236 7B 02            [ 1]  177 	ld	a, (0x02, sp)
                                    178 ;	src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
      008238 1E 05            [ 2]  179 	ldw	x, (0x05, sp)
      00823A 13 03            [ 2]  180 	cpw	x, (0x03, sp)
      00823C 25 08            [ 1]  181 	jrc	00102$
                                    182 ;	src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
      00823E A0 02            [ 1]  183 	sub	a, #0x02
      008240 AE 50 F1         [ 2]  184 	ldw	x, #0x50f1
      008243 F7               [ 1]  185 	ld	(x), a
      008244 20 05            [ 2]  186 	jra	00104$
      008246                        187 00102$:
                                    188 ;	src\stm8s_awu.c: 159: AWU->APR = (uint8_t)(A - 1U);
      008246 4A               [ 1]  189 	dec	a
      008247 AE 50 F1         [ 2]  190 	ldw	x, #0x50f1
      00824A F7               [ 1]  191 	ld	(x), a
      00824B                        192 00104$:
      00824B 5B 06            [ 2]  193 	addw	sp, #6
      00824D 81               [ 4]  194 	ret
                                    195 ;	src\stm8s_awu.c: 168: void AWU_IdleModeEnable(void)
                                    196 ;	-----------------------------------------
                                    197 ;	 function AWU_IdleModeEnable
                                    198 ;	-----------------------------------------
      00824E                        199 _AWU_IdleModeEnable:
                                    200 ;	src\stm8s_awu.c: 171: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
      00824E AE 50 F0         [ 2]  201 	ldw	x, #0x50f0
      008251 F6               [ 1]  202 	ld	a, (x)
      008252 A4 EF            [ 1]  203 	and	a, #0xef
      008254 F7               [ 1]  204 	ld	(x), a
                                    205 ;	src\stm8s_awu.c: 174: AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
      008255 AE 50 F2         [ 2]  206 	ldw	x, #0x50f2
      008258 A6 F0            [ 1]  207 	ld	a, #0xf0
      00825A F7               [ 1]  208 	ld	(x), a
      00825B 81               [ 4]  209 	ret
                                    210 ;	src\stm8s_awu.c: 183: FlagStatus AWU_GetFlagStatus(void)
                                    211 ;	-----------------------------------------
                                    212 ;	 function AWU_GetFlagStatus
                                    213 ;	-----------------------------------------
      00825C                        214 _AWU_GetFlagStatus:
                                    215 ;	src\stm8s_awu.c: 185: return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
      00825C AE 50 F0         [ 2]  216 	ldw	x, #0x50f0
      00825F F6               [ 1]  217 	ld	a, (x)
      008260 A4 20            [ 1]  218 	and	a, #0x20
      008262 A0 01            [ 1]  219 	sub	a, #0x01
      008264 4F               [ 1]  220 	clr	a
      008265 49               [ 1]  221 	rlc	a
      008266 4D               [ 1]  222 	tnz	a
      008267 27 03            [ 1]  223 	jreq	00103$
      008269 4F               [ 1]  224 	clr	a
      00826A 20 02            [ 2]  225 	jra	00104$
      00826C                        226 00103$:
      00826C A6 01            [ 1]  227 	ld	a, #0x01
      00826E                        228 00104$:
      00826E 81               [ 4]  229 	ret
                                    230 	.area CODE
      00826F                        231 _APR_Array:
      00826F 00                     232 	.db #0x00	; 0
      008270 1E                     233 	.db #0x1E	; 30
      008271 1E                     234 	.db #0x1E	; 30
      008272 1E                     235 	.db #0x1E	; 30
      008273 1E                     236 	.db #0x1E	; 30
      008274 1E                     237 	.db #0x1E	; 30
      008275 1E                     238 	.db #0x1E	; 30
      008276 1E                     239 	.db #0x1E	; 30
      008277 1E                     240 	.db #0x1E	; 30
      008278 1E                     241 	.db #0x1E	; 30
      008279 1E                     242 	.db #0x1E	; 30
      00827A 1E                     243 	.db #0x1E	; 30
      00827B 1E                     244 	.db #0x1E	; 30
      00827C 3D                     245 	.db #0x3D	; 61
      00827D 17                     246 	.db #0x17	; 23
      00827E 17                     247 	.db #0x17	; 23
      00827F 3E                     248 	.db #0x3E	; 62
      008280                        249 _TBR_Array:
      008280 00                     250 	.db #0x00	; 0
      008281 01                     251 	.db #0x01	; 1
      008282 02                     252 	.db #0x02	; 2
      008283 03                     253 	.db #0x03	; 3
      008284 04                     254 	.db #0x04	; 4
      008285 05                     255 	.db #0x05	; 5
      008286 06                     256 	.db #0x06	; 6
      008287 07                     257 	.db #0x07	; 7
      008288 08                     258 	.db #0x08	; 8
      008289 09                     259 	.db #0x09	; 9
      00828A 0A                     260 	.db #0x0A	; 10
      00828B 0B                     261 	.db #0x0B	; 11
      00828C 0C                     262 	.db #0x0C	; 12
      00828D 0C                     263 	.db #0x0C	; 12
      00828E 0E                     264 	.db #0x0E	; 14
      00828F 0F                     265 	.db #0x0F	; 15
      008290 0F                     266 	.db #0x0F	; 15
                                    267 	.area INITIALIZER
                                    268 	.area CABS (ABS)

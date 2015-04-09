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
      0080EC                         52 _AWU_DeInit:
                                     53 ;	src\stm8s_awu.c: 75: AWU->CSR = AWU_CSR_RESET_VALUE;
      0080EC AE 50 F0         [ 2]   54 	ldw	x, #0x50f0
      0080EF 7F               [ 1]   55 	clr	(x)
                                     56 ;	src\stm8s_awu.c: 76: AWU->APR = AWU_APR_RESET_VALUE;
      0080F0 AE 50 F1         [ 2]   57 	ldw	x, #0x50f1
      0080F3 A6 3F            [ 1]   58 	ld	a, #0x3f
      0080F5 F7               [ 1]   59 	ld	(x), a
                                     60 ;	src\stm8s_awu.c: 77: AWU->TBR = AWU_TBR_RESET_VALUE;
      0080F6 AE 50 F2         [ 2]   61 	ldw	x, #0x50f2
      0080F9 7F               [ 1]   62 	clr	(x)
      0080FA 81               [ 4]   63 	ret
                                     64 ;	src\stm8s_awu.c: 88: void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
                                     65 ;	-----------------------------------------
                                     66 ;	 function AWU_Init
                                     67 ;	-----------------------------------------
      0080FB                         68 _AWU_Init:
      0080FB 52 02            [ 2]   69 	sub	sp, #2
                                     70 ;	src\stm8s_awu.c: 94: AWU->CSR |= AWU_CSR_AWUEN;
      0080FD AE 50 F0         [ 2]   71 	ldw	x, #0x50f0
      008100 F6               [ 1]   72 	ld	a, (x)
      008101 AA 10            [ 1]   73 	or	a, #0x10
      008103 F7               [ 1]   74 	ld	(x), a
                                     75 ;	src\stm8s_awu.c: 97: AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
      008104 AE 50 F2         [ 2]   76 	ldw	x, #0x50f2
      008107 F6               [ 1]   77 	ld	a, (x)
      008108 A4 F0            [ 1]   78 	and	a, #0xf0
      00810A F7               [ 1]   79 	ld	(x), a
                                     80 ;	src\stm8s_awu.c: 98: AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
      00810B AE 50 F2         [ 2]   81 	ldw	x, #0x50f2
      00810E F6               [ 1]   82 	ld	a, (x)
      00810F 6B 02            [ 1]   83 	ld	(0x02, sp), a
      008111 AE 81 D4         [ 2]   84 	ldw	x, #_TBR_Array+0
      008114 9F               [ 1]   85 	ld	a, xl
      008115 1B 05            [ 1]   86 	add	a, (0x05, sp)
      008117 97               [ 1]   87 	ld	xl, a
      008118 9E               [ 1]   88 	ld	a, xh
      008119 A9 00            [ 1]   89 	adc	a, #0x00
      00811B 95               [ 1]   90 	ld	xh, a
      00811C F6               [ 1]   91 	ld	a, (x)
      00811D 1A 02            [ 1]   92 	or	a, (0x02, sp)
      00811F AE 50 F2         [ 2]   93 	ldw	x, #0x50f2
      008122 F7               [ 1]   94 	ld	(x), a
                                     95 ;	src\stm8s_awu.c: 101: AWU->APR &= (uint8_t)(~AWU_APR_APR);
      008123 AE 50 F1         [ 2]   96 	ldw	x, #0x50f1
      008126 F6               [ 1]   97 	ld	a, (x)
      008127 A4 C0            [ 1]   98 	and	a, #0xc0
      008129 F7               [ 1]   99 	ld	(x), a
                                    100 ;	src\stm8s_awu.c: 102: AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
      00812A AE 50 F1         [ 2]  101 	ldw	x, #0x50f1
      00812D F6               [ 1]  102 	ld	a, (x)
      00812E 6B 01            [ 1]  103 	ld	(0x01, sp), a
      008130 AE 81 C3         [ 2]  104 	ldw	x, #_APR_Array+0
      008133 9F               [ 1]  105 	ld	a, xl
      008134 1B 05            [ 1]  106 	add	a, (0x05, sp)
      008136 97               [ 1]  107 	ld	xl, a
      008137 9E               [ 1]  108 	ld	a, xh
      008138 A9 00            [ 1]  109 	adc	a, #0x00
      00813A 95               [ 1]  110 	ld	xh, a
      00813B F6               [ 1]  111 	ld	a, (x)
      00813C 1A 01            [ 1]  112 	or	a, (0x01, sp)
      00813E AE 50 F1         [ 2]  113 	ldw	x, #0x50f1
      008141 F7               [ 1]  114 	ld	(x), a
      008142 5B 02            [ 2]  115 	addw	sp, #2
      008144 81               [ 4]  116 	ret
                                    117 ;	src\stm8s_awu.c: 112: void AWU_Cmd(FunctionalState NewState)
                                    118 ;	-----------------------------------------
                                    119 ;	 function AWU_Cmd
                                    120 ;	-----------------------------------------
      008145                        121 _AWU_Cmd:
                                    122 ;	src\stm8s_awu.c: 114: if (NewState != DISABLE)
      008145 0D 03            [ 1]  123 	tnz	(0x03, sp)
      008147 27 09            [ 1]  124 	jreq	00102$
                                    125 ;	src\stm8s_awu.c: 117: AWU->CSR |= AWU_CSR_AWUEN;
      008149 AE 50 F0         [ 2]  126 	ldw	x, #0x50f0
      00814C F6               [ 1]  127 	ld	a, (x)
      00814D AA 10            [ 1]  128 	or	a, #0x10
      00814F F7               [ 1]  129 	ld	(x), a
      008150 20 07            [ 2]  130 	jra	00104$
      008152                        131 00102$:
                                    132 ;	src\stm8s_awu.c: 122: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
      008152 AE 50 F0         [ 2]  133 	ldw	x, #0x50f0
      008155 F6               [ 1]  134 	ld	a, (x)
      008156 A4 EF            [ 1]  135 	and	a, #0xef
      008158 F7               [ 1]  136 	ld	(x), a
      008159                        137 00104$:
      008159 81               [ 4]  138 	ret
                                    139 ;	src\stm8s_awu.c: 139: void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
                                    140 ;	-----------------------------------------
                                    141 ;	 function AWU_LSICalibrationConfig
                                    142 ;	-----------------------------------------
      00815A                        143 _AWU_LSICalibrationConfig:
      00815A 52 06            [ 2]  144 	sub	sp, #6
                                    145 ;	src\stm8s_awu.c: 147: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
      00815C 4B E8            [ 1]  146 	push	#0xe8
      00815E 4B 03            [ 1]  147 	push	#0x03
      008160 5F               [ 1]  148 	clrw	x
      008161 89               [ 2]  149 	pushw	x
      008162 1E 0F            [ 2]  150 	ldw	x, (0x0f, sp)
      008164 89               [ 2]  151 	pushw	x
      008165 1E 0F            [ 2]  152 	ldw	x, (0x0f, sp)
      008167 89               [ 2]  153 	pushw	x
      008168 CD 86 D1         [ 4]  154 	call	__divulong
      00816B 5B 08            [ 2]  155 	addw	sp, #8
      00816D 51               [ 1]  156 	exgw	x, y
                                    157 ;	src\stm8s_awu.c: 151: A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
      00816E 93               [ 1]  158 	ldw	x, y
      00816F 54               [ 2]  159 	srlw	x
      008170 54               [ 2]  160 	srlw	x
      008171 1F 01            [ 2]  161 	ldw	(0x01, sp), x
                                    162 ;	src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
      008173 1E 01            [ 2]  163 	ldw	x, (0x01, sp)
      008175 58               [ 2]  164 	sllw	x
      008176 58               [ 2]  165 	sllw	x
      008177 1F 05            [ 2]  166 	ldw	(0x05, sp), x
      008179 72 F2 05         [ 2]  167 	subw	y, (0x05, sp)
      00817C 1E 01            [ 2]  168 	ldw	x, (0x01, sp)
      00817E 58               [ 2]  169 	sllw	x
      00817F 5C               [ 2]  170 	incw	x
      008180 89               [ 2]  171 	pushw	x
      008181 90 89            [ 2]  172 	pushw	y
                                    173 ;	src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
      008183 CD 86 7B         [ 4]  174 	call	__mulint
      008186 5B 04            [ 2]  175 	addw	sp, #4
      008188 1F 03            [ 2]  176 	ldw	(0x03, sp), x
      00818A 7B 02            [ 1]  177 	ld	a, (0x02, sp)
                                    178 ;	src\stm8s_awu.c: 153: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
      00818C 1E 05            [ 2]  179 	ldw	x, (0x05, sp)
      00818E 13 03            [ 2]  180 	cpw	x, (0x03, sp)
      008190 25 08            [ 1]  181 	jrc	00102$
                                    182 ;	src\stm8s_awu.c: 155: AWU->APR = (uint8_t)(A - 2U);
      008192 A0 02            [ 1]  183 	sub	a, #0x02
      008194 AE 50 F1         [ 2]  184 	ldw	x, #0x50f1
      008197 F7               [ 1]  185 	ld	(x), a
      008198 20 05            [ 2]  186 	jra	00104$
      00819A                        187 00102$:
                                    188 ;	src\stm8s_awu.c: 159: AWU->APR = (uint8_t)(A - 1U);
      00819A 4A               [ 1]  189 	dec	a
      00819B AE 50 F1         [ 2]  190 	ldw	x, #0x50f1
      00819E F7               [ 1]  191 	ld	(x), a
      00819F                        192 00104$:
      00819F 5B 06            [ 2]  193 	addw	sp, #6
      0081A1 81               [ 4]  194 	ret
                                    195 ;	src\stm8s_awu.c: 168: void AWU_IdleModeEnable(void)
                                    196 ;	-----------------------------------------
                                    197 ;	 function AWU_IdleModeEnable
                                    198 ;	-----------------------------------------
      0081A2                        199 _AWU_IdleModeEnable:
                                    200 ;	src\stm8s_awu.c: 171: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
      0081A2 AE 50 F0         [ 2]  201 	ldw	x, #0x50f0
      0081A5 F6               [ 1]  202 	ld	a, (x)
      0081A6 A4 EF            [ 1]  203 	and	a, #0xef
      0081A8 F7               [ 1]  204 	ld	(x), a
                                    205 ;	src\stm8s_awu.c: 174: AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
      0081A9 AE 50 F2         [ 2]  206 	ldw	x, #0x50f2
      0081AC A6 F0            [ 1]  207 	ld	a, #0xf0
      0081AE F7               [ 1]  208 	ld	(x), a
      0081AF 81               [ 4]  209 	ret
                                    210 ;	src\stm8s_awu.c: 183: FlagStatus AWU_GetFlagStatus(void)
                                    211 ;	-----------------------------------------
                                    212 ;	 function AWU_GetFlagStatus
                                    213 ;	-----------------------------------------
      0081B0                        214 _AWU_GetFlagStatus:
                                    215 ;	src\stm8s_awu.c: 185: return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
      0081B0 AE 50 F0         [ 2]  216 	ldw	x, #0x50f0
      0081B3 F6               [ 1]  217 	ld	a, (x)
      0081B4 A4 20            [ 1]  218 	and	a, #0x20
      0081B6 A0 01            [ 1]  219 	sub	a, #0x01
      0081B8 4F               [ 1]  220 	clr	a
      0081B9 49               [ 1]  221 	rlc	a
      0081BA 4D               [ 1]  222 	tnz	a
      0081BB 27 03            [ 1]  223 	jreq	00103$
      0081BD 4F               [ 1]  224 	clr	a
      0081BE 20 02            [ 2]  225 	jra	00104$
      0081C0                        226 00103$:
      0081C0 A6 01            [ 1]  227 	ld	a, #0x01
      0081C2                        228 00104$:
      0081C2 81               [ 4]  229 	ret
                                    230 	.area CODE
      0081C3                        231 _APR_Array:
      0081C3 00                     232 	.db #0x00	; 0
      0081C4 1E                     233 	.db #0x1E	; 30
      0081C5 1E                     234 	.db #0x1E	; 30
      0081C6 1E                     235 	.db #0x1E	; 30
      0081C7 1E                     236 	.db #0x1E	; 30
      0081C8 1E                     237 	.db #0x1E	; 30
      0081C9 1E                     238 	.db #0x1E	; 30
      0081CA 1E                     239 	.db #0x1E	; 30
      0081CB 1E                     240 	.db #0x1E	; 30
      0081CC 1E                     241 	.db #0x1E	; 30
      0081CD 1E                     242 	.db #0x1E	; 30
      0081CE 1E                     243 	.db #0x1E	; 30
      0081CF 1E                     244 	.db #0x1E	; 30
      0081D0 3D                     245 	.db #0x3D	; 61
      0081D1 17                     246 	.db #0x17	; 23
      0081D2 17                     247 	.db #0x17	; 23
      0081D3 3E                     248 	.db #0x3E	; 62
      0081D4                        249 _TBR_Array:
      0081D4 00                     250 	.db #0x00	; 0
      0081D5 01                     251 	.db #0x01	; 1
      0081D6 02                     252 	.db #0x02	; 2
      0081D7 03                     253 	.db #0x03	; 3
      0081D8 04                     254 	.db #0x04	; 4
      0081D9 05                     255 	.db #0x05	; 5
      0081DA 06                     256 	.db #0x06	; 6
      0081DB 07                     257 	.db #0x07	; 7
      0081DC 08                     258 	.db #0x08	; 8
      0081DD 09                     259 	.db #0x09	; 9
      0081DE 0A                     260 	.db #0x0A	; 10
      0081DF 0B                     261 	.db #0x0B	; 11
      0081E0 0C                     262 	.db #0x0C	; 12
      0081E1 0C                     263 	.db #0x0C	; 12
      0081E2 0E                     264 	.db #0x0E	; 14
      0081E3 0F                     265 	.db #0x0F	; 15
      0081E4 0F                     266 	.db #0x0F	; 15
                                    267 	.area INITIALIZER
                                    268 	.area CABS (ABS)

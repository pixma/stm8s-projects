                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 16 17:18:44 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8s_adc1
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _ADC1_DeInit
                                     13 	.globl _ADC1_Init
                                     14 	.globl _ADC1_Cmd
                                     15 	.globl _ADC1_ScanModeCmd
                                     16 	.globl _ADC1_DataBufferCmd
                                     17 	.globl _ADC1_ITConfig
                                     18 	.globl _ADC1_PrescalerConfig
                                     19 	.globl _ADC1_SchmittTriggerConfig
                                     20 	.globl _ADC1_ConversionConfig
                                     21 	.globl _ADC1_ExternalTriggerConfig
                                     22 	.globl _ADC1_StartConversion
                                     23 	.globl _ADC1_GetConversionValue
                                     24 	.globl _ADC1_AWDChannelConfig
                                     25 	.globl _ADC1_SetHighThreshold
                                     26 	.globl _ADC1_SetLowThreshold
                                     27 	.globl _ADC1_GetBufferValue
                                     28 	.globl _ADC1_GetAWDChannelStatus
                                     29 	.globl _ADC1_GetFlagStatus
                                     30 	.globl _ADC1_ClearFlag
                                     31 	.globl _ADC1_GetITStatus
                                     32 	.globl _ADC1_ClearITPendingBit
                                     33 ;--------------------------------------------------------
                                     34 ; ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DATA
                                     37 ;--------------------------------------------------------
                                     38 ; ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area INITIALIZED
                                     41 ;--------------------------------------------------------
                                     42 ; absolute external ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area DABS (ABS)
                                     45 ;--------------------------------------------------------
                                     46 ; global & static initialisations
                                     47 ;--------------------------------------------------------
                                     48 	.area HOME
                                     49 	.area GSINIT
                                     50 	.area GSFINAL
                                     51 	.area GSINIT
                                     52 ;--------------------------------------------------------
                                     53 ; Home
                                     54 ;--------------------------------------------------------
                                     55 	.area HOME
                                     56 	.area HOME
                                     57 ;--------------------------------------------------------
                                     58 ; code
                                     59 ;--------------------------------------------------------
                                     60 	.area CODE
                                     61 ;	stm8s_adc1.c: 52: void ADC1_DeInit(void)
                                     62 ;	-----------------------------------------
                                     63 ;	 function ADC1_DeInit
                                     64 ;	-----------------------------------------
      0081BD                         65 _ADC1_DeInit:
                                     66 ;	stm8s_adc1.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
      0081BD AE 54 00         [ 2]   67 	ldw	x, #0x5400
      0081C0 7F               [ 1]   68 	clr	(x)
                                     69 ;	stm8s_adc1.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
      0081C1 AE 54 01         [ 2]   70 	ldw	x, #0x5401
      0081C4 7F               [ 1]   71 	clr	(x)
                                     72 ;	stm8s_adc1.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
      0081C5 AE 54 02         [ 2]   73 	ldw	x, #0x5402
      0081C8 7F               [ 1]   74 	clr	(x)
                                     75 ;	stm8s_adc1.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
      0081C9 AE 54 03         [ 2]   76 	ldw	x, #0x5403
      0081CC 7F               [ 1]   77 	clr	(x)
                                     78 ;	stm8s_adc1.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
      0081CD AE 54 06         [ 2]   79 	ldw	x, #0x5406
      0081D0 7F               [ 1]   80 	clr	(x)
                                     81 ;	stm8s_adc1.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
      0081D1 AE 54 07         [ 2]   82 	ldw	x, #0x5407
      0081D4 7F               [ 1]   83 	clr	(x)
                                     84 ;	stm8s_adc1.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
      0081D5 AE 54 08         [ 2]   85 	ldw	x, #0x5408
      0081D8 A6 FF            [ 1]   86 	ld	a, #0xff
      0081DA F7               [ 1]   87 	ld	(x), a
                                     88 ;	stm8s_adc1.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
      0081DB AE 54 09         [ 2]   89 	ldw	x, #0x5409
      0081DE A6 03            [ 1]   90 	ld	a, #0x03
      0081E0 F7               [ 1]   91 	ld	(x), a
                                     92 ;	stm8s_adc1.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
      0081E1 AE 54 0A         [ 2]   93 	ldw	x, #0x540a
      0081E4 7F               [ 1]   94 	clr	(x)
                                     95 ;	stm8s_adc1.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
      0081E5 AE 54 0B         [ 2]   96 	ldw	x, #0x540b
      0081E8 7F               [ 1]   97 	clr	(x)
                                     98 ;	stm8s_adc1.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
      0081E9 AE 54 0E         [ 2]   99 	ldw	x, #0x540e
      0081EC 7F               [ 1]  100 	clr	(x)
                                    101 ;	stm8s_adc1.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
      0081ED AE 54 0F         [ 2]  102 	ldw	x, #0x540f
      0081F0 7F               [ 1]  103 	clr	(x)
      0081F1 81               [ 4]  104 	ret
                                    105 ;	stm8s_adc1.c: 88: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
                                    106 ;	-----------------------------------------
                                    107 ;	 function ADC1_Init
                                    108 ;	-----------------------------------------
      0081F2                        109 _ADC1_Init:
                                    110 ;	stm8s_adc1.c: 103: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
      0081F2 7B 08            [ 1]  111 	ld	a, (0x08, sp)
      0081F4 88               [ 1]  112 	push	a
      0081F5 7B 05            [ 1]  113 	ld	a, (0x05, sp)
      0081F7 88               [ 1]  114 	push	a
      0081F8 7B 05            [ 1]  115 	ld	a, (0x05, sp)
      0081FA 88               [ 1]  116 	push	a
      0081FB CD 83 32         [ 4]  117 	call	_ADC1_ConversionConfig
      0081FE 5B 03            [ 2]  118 	addw	sp, #3
                                    119 ;	stm8s_adc1.c: 105: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
      008200 7B 05            [ 1]  120 	ld	a, (0x05, sp)
      008202 88               [ 1]  121 	push	a
      008203 CD 82 81         [ 4]  122 	call	_ADC1_PrescalerConfig
      008206 84               [ 1]  123 	pop	a
                                    124 ;	stm8s_adc1.c: 110: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
      008207 7B 07            [ 1]  125 	ld	a, (0x07, sp)
      008209 88               [ 1]  126 	push	a
      00820A 7B 07            [ 1]  127 	ld	a, (0x07, sp)
      00820C 88               [ 1]  128 	push	a
      00820D CD 83 6B         [ 4]  129 	call	_ADC1_ExternalTriggerConfig
      008210 5B 02            [ 2]  130 	addw	sp, #2
                                    131 ;	stm8s_adc1.c: 115: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
      008212 7B 0A            [ 1]  132 	ld	a, (0x0a, sp)
      008214 88               [ 1]  133 	push	a
      008215 7B 0A            [ 1]  134 	ld	a, (0x0a, sp)
      008217 88               [ 1]  135 	push	a
      008218 CD 82 93         [ 4]  136 	call	_ADC1_SchmittTriggerConfig
      00821B 5B 02            [ 2]  137 	addw	sp, #2
                                    138 ;	stm8s_adc1.c: 118: ADC1->CR1 |= ADC1_CR1_ADON;
      00821D 72 10 54 01      [ 1]  139 	bset	0x5401, #0
      008221 81               [ 4]  140 	ret
                                    141 ;	stm8s_adc1.c: 126: void ADC1_Cmd(FunctionalState NewState)
                                    142 ;	-----------------------------------------
                                    143 ;	 function ADC1_Cmd
                                    144 ;	-----------------------------------------
      008222                        145 _ADC1_Cmd:
                                    146 ;	stm8s_adc1.c: 131: if (NewState != DISABLE)
      008222 0D 03            [ 1]  147 	tnz	(0x03, sp)
      008224 27 09            [ 1]  148 	jreq	00102$
                                    149 ;	stm8s_adc1.c: 133: ADC1->CR1 |= ADC1_CR1_ADON;
      008226 AE 54 01         [ 2]  150 	ldw	x, #0x5401
      008229 F6               [ 1]  151 	ld	a, (x)
      00822A AA 01            [ 1]  152 	or	a, #0x01
      00822C F7               [ 1]  153 	ld	(x), a
      00822D 20 04            [ 2]  154 	jra	00104$
      00822F                        155 00102$:
                                    156 ;	stm8s_adc1.c: 137: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
      00822F 72 11 54 01      [ 1]  157 	bres	0x5401, #0
      008233                        158 00104$:
      008233 81               [ 4]  159 	ret
                                    160 ;	stm8s_adc1.c: 146: void ADC1_ScanModeCmd(FunctionalState NewState)
                                    161 ;	-----------------------------------------
                                    162 ;	 function ADC1_ScanModeCmd
                                    163 ;	-----------------------------------------
      008234                        164 _ADC1_ScanModeCmd:
                                    165 ;	stm8s_adc1.c: 151: if (NewState != DISABLE)
      008234 0D 03            [ 1]  166 	tnz	(0x03, sp)
      008236 27 09            [ 1]  167 	jreq	00102$
                                    168 ;	stm8s_adc1.c: 153: ADC1->CR2 |= ADC1_CR2_SCAN;
      008238 AE 54 02         [ 2]  169 	ldw	x, #0x5402
      00823B F6               [ 1]  170 	ld	a, (x)
      00823C AA 02            [ 1]  171 	or	a, #0x02
      00823E F7               [ 1]  172 	ld	(x), a
      00823F 20 07            [ 2]  173 	jra	00104$
      008241                        174 00102$:
                                    175 ;	stm8s_adc1.c: 157: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
      008241 AE 54 02         [ 2]  176 	ldw	x, #0x5402
      008244 F6               [ 1]  177 	ld	a, (x)
      008245 A4 FD            [ 1]  178 	and	a, #0xfd
      008247 F7               [ 1]  179 	ld	(x), a
      008248                        180 00104$:
      008248 81               [ 4]  181 	ret
                                    182 ;	stm8s_adc1.c: 166: void ADC1_DataBufferCmd(FunctionalState NewState)
                                    183 ;	-----------------------------------------
                                    184 ;	 function ADC1_DataBufferCmd
                                    185 ;	-----------------------------------------
      008249                        186 _ADC1_DataBufferCmd:
                                    187 ;	stm8s_adc1.c: 171: if (NewState != DISABLE)
      008249 0D 03            [ 1]  188 	tnz	(0x03, sp)
      00824B 27 09            [ 1]  189 	jreq	00102$
                                    190 ;	stm8s_adc1.c: 173: ADC1->CR3 |= ADC1_CR3_DBUF;
      00824D AE 54 03         [ 2]  191 	ldw	x, #0x5403
      008250 F6               [ 1]  192 	ld	a, (x)
      008251 AA 80            [ 1]  193 	or	a, #0x80
      008253 F7               [ 1]  194 	ld	(x), a
      008254 20 04            [ 2]  195 	jra	00104$
      008256                        196 00102$:
                                    197 ;	stm8s_adc1.c: 177: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
      008256 72 17 54 03      [ 1]  198 	bres	0x5403, #7
      00825A                        199 00104$:
      00825A 81               [ 4]  200 	ret
                                    201 ;	stm8s_adc1.c: 190: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
                                    202 ;	-----------------------------------------
                                    203 ;	 function ADC1_ITConfig
                                    204 ;	-----------------------------------------
      00825B                        205 _ADC1_ITConfig:
      00825B 88               [ 1]  206 	push	a
                                    207 ;	stm8s_adc1.c: 196: if (NewState != DISABLE)
      00825C 0D 06            [ 1]  208 	tnz	(0x06, sp)
      00825E 27 10            [ 1]  209 	jreq	00102$
                                    210 ;	stm8s_adc1.c: 199: ADC1->CSR |= (uint8_t)ADC1_IT;
      008260 AE 54 00         [ 2]  211 	ldw	x, #0x5400
      008263 F6               [ 1]  212 	ld	a, (x)
      008264 6B 01            [ 1]  213 	ld	(0x01, sp), a
      008266 7B 05            [ 1]  214 	ld	a, (0x05, sp)
      008268 1A 01            [ 1]  215 	or	a, (0x01, sp)
      00826A AE 54 00         [ 2]  216 	ldw	x, #0x5400
      00826D F7               [ 1]  217 	ld	(x), a
      00826E 20 0F            [ 2]  218 	jra	00104$
      008270                        219 00102$:
                                    220 ;	stm8s_adc1.c: 204: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
      008270 AE 54 00         [ 2]  221 	ldw	x, #0x5400
      008273 F6               [ 1]  222 	ld	a, (x)
      008274 1E 04            [ 2]  223 	ldw	x, (0x04, sp)
      008276 53               [ 2]  224 	cplw	x
      008277 89               [ 2]  225 	pushw	x
      008278 14 02            [ 1]  226 	and	a, (2, sp)
      00827A 85               [ 2]  227 	popw	x
      00827B AE 54 00         [ 2]  228 	ldw	x, #0x5400
      00827E F7               [ 1]  229 	ld	(x), a
      00827F                        230 00104$:
      00827F 84               [ 1]  231 	pop	a
      008280 81               [ 4]  232 	ret
                                    233 ;	stm8s_adc1.c: 214: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
                                    234 ;	-----------------------------------------
                                    235 ;	 function ADC1_PrescalerConfig
                                    236 ;	-----------------------------------------
      008281                        237 _ADC1_PrescalerConfig:
                                    238 ;	stm8s_adc1.c: 220: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
      008281 AE 54 01         [ 2]  239 	ldw	x, #0x5401
      008284 F6               [ 1]  240 	ld	a, (x)
      008285 A4 8F            [ 1]  241 	and	a, #0x8f
      008287 F7               [ 1]  242 	ld	(x), a
                                    243 ;	stm8s_adc1.c: 222: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
      008288 AE 54 01         [ 2]  244 	ldw	x, #0x5401
      00828B F6               [ 1]  245 	ld	a, (x)
      00828C 1A 03            [ 1]  246 	or	a, (0x03, sp)
      00828E AE 54 01         [ 2]  247 	ldw	x, #0x5401
      008291 F7               [ 1]  248 	ld	(x), a
      008292 81               [ 4]  249 	ret
                                    250 ;	stm8s_adc1.c: 233: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
                                    251 ;	-----------------------------------------
                                    252 ;	 function ADC1_SchmittTriggerConfig
                                    253 ;	-----------------------------------------
      008293                        254 _ADC1_SchmittTriggerConfig:
      008293 52 04            [ 2]  255 	sub	sp, #4
                                    256 ;	stm8s_adc1.c: 239: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
      008295 7B 07            [ 1]  257 	ld	a, (0x07, sp)
      008297 A1 FF            [ 1]  258 	cp	a, #0xff
      008299 26 2E            [ 1]  259 	jrne	00114$
                                    260 ;	stm8s_adc1.c: 241: if (NewState != DISABLE)
      00829B 0D 08            [ 1]  261 	tnz	(0x08, sp)
      00829D 27 13            [ 1]  262 	jreq	00102$
                                    263 ;	stm8s_adc1.c: 243: ADC1->TDRL &= (uint8_t)0x0;
      00829F AE 54 07         [ 2]  264 	ldw	x, #0x5407
      0082A2 F6               [ 1]  265 	ld	a, (x)
      0082A3 AE 54 07         [ 2]  266 	ldw	x, #0x5407
      0082A6 7F               [ 1]  267 	clr	(x)
                                    268 ;	stm8s_adc1.c: 244: ADC1->TDRH &= (uint8_t)0x0;
      0082A7 AE 54 06         [ 2]  269 	ldw	x, #0x5406
      0082AA F6               [ 1]  270 	ld	a, (x)
      0082AB AE 54 06         [ 2]  271 	ldw	x, #0x5406
      0082AE 7F               [ 1]  272 	clr	(x)
      0082AF CC 83 2F         [ 2]  273 	jp	00116$
      0082B2                        274 00102$:
                                    275 ;	stm8s_adc1.c: 248: ADC1->TDRL |= (uint8_t)0xFF;
      0082B2 AE 54 07         [ 2]  276 	ldw	x, #0x5407
      0082B5 F6               [ 1]  277 	ld	a, (x)
      0082B6 AE 54 07         [ 2]  278 	ldw	x, #0x5407
      0082B9 A6 FF            [ 1]  279 	ld	a, #0xff
      0082BB F7               [ 1]  280 	ld	(x), a
                                    281 ;	stm8s_adc1.c: 249: ADC1->TDRH |= (uint8_t)0xFF;
      0082BC AE 54 06         [ 2]  282 	ldw	x, #0x5406
      0082BF F6               [ 1]  283 	ld	a, (x)
      0082C0 AE 54 06         [ 2]  284 	ldw	x, #0x5406
      0082C3 A6 FF            [ 1]  285 	ld	a, #0xff
      0082C5 F7               [ 1]  286 	ld	(x), a
      0082C6 CC 83 2F         [ 2]  287 	jp	00116$
      0082C9                        288 00114$:
                                    289 ;	stm8s_adc1.c: 252: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
      0082C9 7B 07            [ 1]  290 	ld	a, (0x07, sp)
      0082CB A1 08            [ 1]  291 	cp	a, #0x08
      0082CD 24 2F            [ 1]  292 	jrnc	00111$
                                    293 ;	stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      0082CF A6 01            [ 1]  294 	ld	a, #0x01
      0082D1 6B 04            [ 1]  295 	ld	(0x04, sp), a
      0082D3 7B 07            [ 1]  296 	ld	a, (0x07, sp)
      0082D5 4D               [ 1]  297 	tnz	a
      0082D6 27 05            [ 1]  298 	jreq	00144$
      0082D8                        299 00143$:
      0082D8 08 04            [ 1]  300 	sll	(0x04, sp)
      0082DA 4A               [ 1]  301 	dec	a
      0082DB 26 FB            [ 1]  302 	jrne	00143$
      0082DD                        303 00144$:
                                    304 ;	stm8s_adc1.c: 254: if (NewState != DISABLE)
      0082DD 0D 08            [ 1]  305 	tnz	(0x08, sp)
      0082DF 27 11            [ 1]  306 	jreq	00105$
                                    307 ;	stm8s_adc1.c: 256: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
      0082E1 AE 54 07         [ 2]  308 	ldw	x, #0x5407
      0082E4 F6               [ 1]  309 	ld	a, (x)
      0082E5 6B 03            [ 1]  310 	ld	(0x03, sp), a
      0082E7 7B 04            [ 1]  311 	ld	a, (0x04, sp)
      0082E9 43               [ 1]  312 	cpl	a
      0082EA 14 03            [ 1]  313 	and	a, (0x03, sp)
      0082EC AE 54 07         [ 2]  314 	ldw	x, #0x5407
      0082EF F7               [ 1]  315 	ld	(x), a
      0082F0 20 3D            [ 2]  316 	jra	00116$
      0082F2                        317 00105$:
                                    318 ;	stm8s_adc1.c: 260: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
      0082F2 AE 54 07         [ 2]  319 	ldw	x, #0x5407
      0082F5 F6               [ 1]  320 	ld	a, (x)
      0082F6 1A 04            [ 1]  321 	or	a, (0x04, sp)
      0082F8 AE 54 07         [ 2]  322 	ldw	x, #0x5407
      0082FB F7               [ 1]  323 	ld	(x), a
      0082FC 20 31            [ 2]  324 	jra	00116$
      0082FE                        325 00111$:
                                    326 ;	stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      0082FE 7B 07            [ 1]  327 	ld	a, (0x07, sp)
      008300 A0 08            [ 1]  328 	sub	a, #0x08
      008302 95               [ 1]  329 	ld	xh, a
      008303 A6 01            [ 1]  330 	ld	a, #0x01
      008305 6B 02            [ 1]  331 	ld	(0x02, sp), a
      008307 9E               [ 1]  332 	ld	a, xh
      008308 4D               [ 1]  333 	tnz	a
      008309 27 05            [ 1]  334 	jreq	00147$
      00830B                        335 00146$:
      00830B 08 02            [ 1]  336 	sll	(0x02, sp)
      00830D 4A               [ 1]  337 	dec	a
      00830E 26 FB            [ 1]  338 	jrne	00146$
      008310                        339 00147$:
                                    340 ;	stm8s_adc1.c: 265: if (NewState != DISABLE)
      008310 0D 08            [ 1]  341 	tnz	(0x08, sp)
      008312 27 11            [ 1]  342 	jreq	00108$
                                    343 ;	stm8s_adc1.c: 267: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
      008314 AE 54 06         [ 2]  344 	ldw	x, #0x5406
      008317 F6               [ 1]  345 	ld	a, (x)
      008318 6B 01            [ 1]  346 	ld	(0x01, sp), a
      00831A 7B 02            [ 1]  347 	ld	a, (0x02, sp)
      00831C 43               [ 1]  348 	cpl	a
      00831D 14 01            [ 1]  349 	and	a, (0x01, sp)
      00831F AE 54 06         [ 2]  350 	ldw	x, #0x5406
      008322 F7               [ 1]  351 	ld	(x), a
      008323 20 0A            [ 2]  352 	jra	00116$
      008325                        353 00108$:
                                    354 ;	stm8s_adc1.c: 271: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
      008325 AE 54 06         [ 2]  355 	ldw	x, #0x5406
      008328 F6               [ 1]  356 	ld	a, (x)
      008329 1A 02            [ 1]  357 	or	a, (0x02, sp)
      00832B AE 54 06         [ 2]  358 	ldw	x, #0x5406
      00832E F7               [ 1]  359 	ld	(x), a
      00832F                        360 00116$:
      00832F 5B 04            [ 2]  361 	addw	sp, #4
      008331 81               [ 4]  362 	ret
                                    363 ;	stm8s_adc1.c: 286: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
                                    364 ;	-----------------------------------------
                                    365 ;	 function ADC1_ConversionConfig
                                    366 ;	-----------------------------------------
      008332                        367 _ADC1_ConversionConfig:
                                    368 ;	stm8s_adc1.c: 294: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
      008332 AE 54 02         [ 2]  369 	ldw	x, #0x5402
      008335 F6               [ 1]  370 	ld	a, (x)
      008336 A4 F7            [ 1]  371 	and	a, #0xf7
      008338 F7               [ 1]  372 	ld	(x), a
                                    373 ;	stm8s_adc1.c: 296: ADC1->CR2 |= (uint8_t)(ADC1_Align);
      008339 AE 54 02         [ 2]  374 	ldw	x, #0x5402
      00833C F6               [ 1]  375 	ld	a, (x)
      00833D 1A 05            [ 1]  376 	or	a, (0x05, sp)
      00833F AE 54 02         [ 2]  377 	ldw	x, #0x5402
      008342 F7               [ 1]  378 	ld	(x), a
                                    379 ;	stm8s_adc1.c: 298: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
      008343 7B 03            [ 1]  380 	ld	a, (0x03, sp)
      008345 A1 01            [ 1]  381 	cp	a, #0x01
      008347 26 09            [ 1]  382 	jrne	00102$
                                    383 ;	stm8s_adc1.c: 301: ADC1->CR1 |= ADC1_CR1_CONT;
      008349 AE 54 01         [ 2]  384 	ldw	x, #0x5401
      00834C F6               [ 1]  385 	ld	a, (x)
      00834D AA 02            [ 1]  386 	or	a, #0x02
      00834F F7               [ 1]  387 	ld	(x), a
      008350 20 07            [ 2]  388 	jra	00103$
      008352                        389 00102$:
                                    390 ;	stm8s_adc1.c: 306: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
      008352 AE 54 01         [ 2]  391 	ldw	x, #0x5401
      008355 F6               [ 1]  392 	ld	a, (x)
      008356 A4 FD            [ 1]  393 	and	a, #0xfd
      008358 F7               [ 1]  394 	ld	(x), a
      008359                        395 00103$:
                                    396 ;	stm8s_adc1.c: 310: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
      008359 AE 54 00         [ 2]  397 	ldw	x, #0x5400
      00835C F6               [ 1]  398 	ld	a, (x)
      00835D A4 F0            [ 1]  399 	and	a, #0xf0
      00835F F7               [ 1]  400 	ld	(x), a
                                    401 ;	stm8s_adc1.c: 312: ADC1->CSR |= (uint8_t)(ADC1_Channel);
      008360 AE 54 00         [ 2]  402 	ldw	x, #0x5400
      008363 F6               [ 1]  403 	ld	a, (x)
      008364 1A 04            [ 1]  404 	or	a, (0x04, sp)
      008366 AE 54 00         [ 2]  405 	ldw	x, #0x5400
      008369 F7               [ 1]  406 	ld	(x), a
      00836A 81               [ 4]  407 	ret
                                    408 ;	stm8s_adc1.c: 325: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
                                    409 ;	-----------------------------------------
                                    410 ;	 function ADC1_ExternalTriggerConfig
                                    411 ;	-----------------------------------------
      00836B                        412 _ADC1_ExternalTriggerConfig:
                                    413 ;	stm8s_adc1.c: 332: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
      00836B AE 54 02         [ 2]  414 	ldw	x, #0x5402
      00836E F6               [ 1]  415 	ld	a, (x)
      00836F A4 CF            [ 1]  416 	and	a, #0xcf
      008371 F7               [ 1]  417 	ld	(x), a
                                    418 ;	stm8s_adc1.c: 334: if (NewState != DISABLE)
      008372 0D 04            [ 1]  419 	tnz	(0x04, sp)
      008374 27 09            [ 1]  420 	jreq	00102$
                                    421 ;	stm8s_adc1.c: 337: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
      008376 AE 54 02         [ 2]  422 	ldw	x, #0x5402
      008379 F6               [ 1]  423 	ld	a, (x)
      00837A AA 40            [ 1]  424 	or	a, #0x40
      00837C F7               [ 1]  425 	ld	(x), a
      00837D 20 07            [ 2]  426 	jra	00103$
      00837F                        427 00102$:
                                    428 ;	stm8s_adc1.c: 342: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
      00837F AE 54 02         [ 2]  429 	ldw	x, #0x5402
      008382 F6               [ 1]  430 	ld	a, (x)
      008383 A4 BF            [ 1]  431 	and	a, #0xbf
      008385 F7               [ 1]  432 	ld	(x), a
      008386                        433 00103$:
                                    434 ;	stm8s_adc1.c: 346: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
      008386 AE 54 02         [ 2]  435 	ldw	x, #0x5402
      008389 F6               [ 1]  436 	ld	a, (x)
      00838A 1A 03            [ 1]  437 	or	a, (0x03, sp)
      00838C AE 54 02         [ 2]  438 	ldw	x, #0x5402
      00838F F7               [ 1]  439 	ld	(x), a
      008390 81               [ 4]  440 	ret
                                    441 ;	stm8s_adc1.c: 358: void ADC1_StartConversion(void)
                                    442 ;	-----------------------------------------
                                    443 ;	 function ADC1_StartConversion
                                    444 ;	-----------------------------------------
      008391                        445 _ADC1_StartConversion:
                                    446 ;	stm8s_adc1.c: 360: ADC1->CR1 |= ADC1_CR1_ADON;
      008391 72 10 54 01      [ 1]  447 	bset	0x5401, #0
      008395 81               [ 4]  448 	ret
                                    449 ;	stm8s_adc1.c: 370: uint16_t ADC1_GetConversionValue(void)
                                    450 ;	-----------------------------------------
                                    451 ;	 function ADC1_GetConversionValue
                                    452 ;	-----------------------------------------
      008396                        453 _ADC1_GetConversionValue:
      008396 52 0B            [ 2]  454 	sub	sp, #11
                                    455 ;	stm8s_adc1.c: 375: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      008398 AE 54 02         [ 2]  456 	ldw	x, #0x5402
      00839B F6               [ 1]  457 	ld	a, (x)
      00839C A5 08            [ 1]  458 	bcp	a, #0x08
      00839E 27 2A            [ 1]  459 	jreq	00102$
                                    460 ;	stm8s_adc1.c: 378: templ = ADC1->DRL;
      0083A0 AE 54 05         [ 2]  461 	ldw	x, #0x5405
      0083A3 F6               [ 1]  462 	ld	a, (x)
      0083A4 6B 0B            [ 1]  463 	ld	(0x0b, sp), a
                                    464 ;	stm8s_adc1.c: 380: temph = ADC1->DRH;
      0083A6 AE 54 04         [ 2]  465 	ldw	x, #0x5404
      0083A9 F6               [ 1]  466 	ld	a, (x)
      0083AA 5F               [ 1]  467 	clrw	x
      0083AB 97               [ 1]  468 	ld	xl, a
                                    469 ;	stm8s_adc1.c: 382: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      0083AC 58               [ 2]  470 	sllw	x
      0083AD 58               [ 2]  471 	sllw	x
      0083AE 58               [ 2]  472 	sllw	x
      0083AF 58               [ 2]  473 	sllw	x
      0083B0 58               [ 2]  474 	sllw	x
      0083B1 58               [ 2]  475 	sllw	x
      0083B2 58               [ 2]  476 	sllw	x
      0083B3 58               [ 2]  477 	sllw	x
      0083B4 7B 0B            [ 1]  478 	ld	a, (0x0b, sp)
      0083B6 6B 0A            [ 1]  479 	ld	(0x0a, sp), a
      0083B8 0F 09            [ 1]  480 	clr	(0x09, sp)
      0083BA 9F               [ 1]  481 	ld	a, xl
      0083BB 1A 0A            [ 1]  482 	or	a, (0x0a, sp)
      0083BD 6B 08            [ 1]  483 	ld	(0x08, sp), a
      0083BF 9E               [ 1]  484 	ld	a, xh
      0083C0 1A 09            [ 1]  485 	or	a, (0x09, sp)
      0083C2 88               [ 1]  486 	push	a
      0083C3 7B 09            [ 1]  487 	ld	a, (0x09, sp)
      0083C5 6B 07            [ 1]  488 	ld	(0x07, sp), a
      0083C7 84               [ 1]  489 	pop	a
      0083C8 20 2D            [ 2]  490 	jra	00103$
      0083CA                        491 00102$:
                                    492 ;	stm8s_adc1.c: 387: temph = ADC1->DRH;
      0083CA AE 54 04         [ 2]  493 	ldw	x, #0x5404
      0083CD F6               [ 1]  494 	ld	a, (x)
      0083CE 90 5F            [ 1]  495 	clrw	y
      0083D0 90 97            [ 1]  496 	ld	yl, a
                                    497 ;	stm8s_adc1.c: 389: templ = ADC1->DRL;
      0083D2 AE 54 05         [ 2]  498 	ldw	x, #0x5405
      0083D5 F6               [ 1]  499 	ld	a, (x)
                                    500 ;	stm8s_adc1.c: 391: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
      0083D6 5F               [ 1]  501 	clrw	x
      0083D7 97               [ 1]  502 	ld	xl, a
      0083D8 58               [ 2]  503 	sllw	x
      0083D9 58               [ 2]  504 	sllw	x
      0083DA 58               [ 2]  505 	sllw	x
      0083DB 58               [ 2]  506 	sllw	x
      0083DC 58               [ 2]  507 	sllw	x
      0083DD 58               [ 2]  508 	sllw	x
      0083DE 1F 03            [ 2]  509 	ldw	(0x03, sp), x
      0083E0 93               [ 1]  510 	ldw	x, y
      0083E1 58               [ 2]  511 	sllw	x
      0083E2 58               [ 2]  512 	sllw	x
      0083E3 58               [ 2]  513 	sllw	x
      0083E4 58               [ 2]  514 	sllw	x
      0083E5 58               [ 2]  515 	sllw	x
      0083E6 58               [ 2]  516 	sllw	x
      0083E7 58               [ 2]  517 	sllw	x
      0083E8 58               [ 2]  518 	sllw	x
      0083E9 9F               [ 1]  519 	ld	a, xl
      0083EA 1A 04            [ 1]  520 	or	a, (0x04, sp)
      0083EC 6B 02            [ 1]  521 	ld	(0x02, sp), a
      0083EE 9E               [ 1]  522 	ld	a, xh
      0083EF 1A 03            [ 1]  523 	or	a, (0x03, sp)
      0083F1 88               [ 1]  524 	push	a
      0083F2 7B 03            [ 1]  525 	ld	a, (0x03, sp)
      0083F4 6B 07            [ 1]  526 	ld	(0x07, sp), a
      0083F6 84               [ 1]  527 	pop	a
      0083F7                        528 00103$:
                                    529 ;	stm8s_adc1.c: 394: return ((uint16_t)temph);
      0083F7 95               [ 1]  530 	ld	xh, a
      0083F8 7B 06            [ 1]  531 	ld	a, (0x06, sp)
      0083FA 97               [ 1]  532 	ld	xl, a
      0083FB 5B 0B            [ 2]  533 	addw	sp, #11
      0083FD 81               [ 4]  534 	ret
                                    535 ;	stm8s_adc1.c: 405: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
                                    536 ;	-----------------------------------------
                                    537 ;	 function ADC1_AWDChannelConfig
                                    538 ;	-----------------------------------------
      0083FE                        539 _ADC1_AWDChannelConfig:
      0083FE 52 04            [ 2]  540 	sub	sp, #4
                                    541 ;	stm8s_adc1.c: 411: if (Channel < (uint8_t)8)
      008400 7B 07            [ 1]  542 	ld	a, (0x07, sp)
      008402 A1 08            [ 1]  543 	cp	a, #0x08
      008404 24 2F            [ 1]  544 	jrnc	00108$
                                    545 ;	stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      008406 A6 01            [ 1]  546 	ld	a, #0x01
      008408 6B 04            [ 1]  547 	ld	(0x04, sp), a
      00840A 7B 07            [ 1]  548 	ld	a, (0x07, sp)
      00840C 4D               [ 1]  549 	tnz	a
      00840D 27 05            [ 1]  550 	jreq	00126$
      00840F                        551 00125$:
      00840F 08 04            [ 1]  552 	sll	(0x04, sp)
      008411 4A               [ 1]  553 	dec	a
      008412 26 FB            [ 1]  554 	jrne	00125$
      008414                        555 00126$:
                                    556 ;	stm8s_adc1.c: 413: if (NewState != DISABLE)
      008414 0D 08            [ 1]  557 	tnz	(0x08, sp)
      008416 27 0C            [ 1]  558 	jreq	00102$
                                    559 ;	stm8s_adc1.c: 415: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
      008418 AE 54 0F         [ 2]  560 	ldw	x, #0x540f
      00841B F6               [ 1]  561 	ld	a, (x)
      00841C 1A 04            [ 1]  562 	or	a, (0x04, sp)
      00841E AE 54 0F         [ 2]  563 	ldw	x, #0x540f
      008421 F7               [ 1]  564 	ld	(x), a
      008422 20 42            [ 2]  565 	jra	00110$
      008424                        566 00102$:
                                    567 ;	stm8s_adc1.c: 419: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
      008424 AE 54 0F         [ 2]  568 	ldw	x, #0x540f
      008427 F6               [ 1]  569 	ld	a, (x)
      008428 6B 03            [ 1]  570 	ld	(0x03, sp), a
      00842A 7B 04            [ 1]  571 	ld	a, (0x04, sp)
      00842C 43               [ 1]  572 	cpl	a
      00842D 14 03            [ 1]  573 	and	a, (0x03, sp)
      00842F AE 54 0F         [ 2]  574 	ldw	x, #0x540f
      008432 F7               [ 1]  575 	ld	(x), a
      008433 20 31            [ 2]  576 	jra	00110$
      008435                        577 00108$:
                                    578 ;	stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      008435 7B 07            [ 1]  579 	ld	a, (0x07, sp)
      008437 A0 08            [ 1]  580 	sub	a, #0x08
      008439 95               [ 1]  581 	ld	xh, a
      00843A A6 01            [ 1]  582 	ld	a, #0x01
      00843C 6B 02            [ 1]  583 	ld	(0x02, sp), a
      00843E 9E               [ 1]  584 	ld	a, xh
      00843F 4D               [ 1]  585 	tnz	a
      008440 27 05            [ 1]  586 	jreq	00129$
      008442                        587 00128$:
      008442 08 02            [ 1]  588 	sll	(0x02, sp)
      008444 4A               [ 1]  589 	dec	a
      008445 26 FB            [ 1]  590 	jrne	00128$
      008447                        591 00129$:
                                    592 ;	stm8s_adc1.c: 424: if (NewState != DISABLE)
      008447 0D 08            [ 1]  593 	tnz	(0x08, sp)
      008449 27 0C            [ 1]  594 	jreq	00105$
                                    595 ;	stm8s_adc1.c: 426: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
      00844B AE 54 0E         [ 2]  596 	ldw	x, #0x540e
      00844E F6               [ 1]  597 	ld	a, (x)
      00844F 1A 02            [ 1]  598 	or	a, (0x02, sp)
      008451 AE 54 0E         [ 2]  599 	ldw	x, #0x540e
      008454 F7               [ 1]  600 	ld	(x), a
      008455 20 0F            [ 2]  601 	jra	00110$
      008457                        602 00105$:
                                    603 ;	stm8s_adc1.c: 430: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
      008457 AE 54 0E         [ 2]  604 	ldw	x, #0x540e
      00845A F6               [ 1]  605 	ld	a, (x)
      00845B 6B 01            [ 1]  606 	ld	(0x01, sp), a
      00845D 7B 02            [ 1]  607 	ld	a, (0x02, sp)
      00845F 43               [ 1]  608 	cpl	a
      008460 14 01            [ 1]  609 	and	a, (0x01, sp)
      008462 AE 54 0E         [ 2]  610 	ldw	x, #0x540e
      008465 F7               [ 1]  611 	ld	(x), a
      008466                        612 00110$:
      008466 5B 04            [ 2]  613 	addw	sp, #4
      008468 81               [ 4]  614 	ret
                                    615 ;	stm8s_adc1.c: 441: void ADC1_SetHighThreshold(uint16_t Threshold)
                                    616 ;	-----------------------------------------
                                    617 ;	 function ADC1_SetHighThreshold
                                    618 ;	-----------------------------------------
      008469                        619 _ADC1_SetHighThreshold:
                                    620 ;	stm8s_adc1.c: 443: ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
      008469 1E 03            [ 2]  621 	ldw	x, (0x03, sp)
      00846B 54               [ 2]  622 	srlw	x
      00846C 54               [ 2]  623 	srlw	x
      00846D 9F               [ 1]  624 	ld	a, xl
      00846E AE 54 08         [ 2]  625 	ldw	x, #0x5408
      008471 F7               [ 1]  626 	ld	(x), a
                                    627 ;	stm8s_adc1.c: 444: ADC1->HTRL = (uint8_t)Threshold;
      008472 7B 04            [ 1]  628 	ld	a, (0x04, sp)
      008474 AE 54 09         [ 2]  629 	ldw	x, #0x5409
      008477 F7               [ 1]  630 	ld	(x), a
      008478 81               [ 4]  631 	ret
                                    632 ;	stm8s_adc1.c: 453: void ADC1_SetLowThreshold(uint16_t Threshold)
                                    633 ;	-----------------------------------------
                                    634 ;	 function ADC1_SetLowThreshold
                                    635 ;	-----------------------------------------
      008479                        636 _ADC1_SetLowThreshold:
                                    637 ;	stm8s_adc1.c: 455: ADC1->LTRL = (uint8_t)Threshold;
      008479 7B 04            [ 1]  638 	ld	a, (0x04, sp)
      00847B AE 54 0B         [ 2]  639 	ldw	x, #0x540b
      00847E F7               [ 1]  640 	ld	(x), a
                                    641 ;	stm8s_adc1.c: 456: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
      00847F 1E 03            [ 2]  642 	ldw	x, (0x03, sp)
      008481 54               [ 2]  643 	srlw	x
      008482 54               [ 2]  644 	srlw	x
      008483 9F               [ 1]  645 	ld	a, xl
      008484 AE 54 0A         [ 2]  646 	ldw	x, #0x540a
      008487 F7               [ 1]  647 	ld	(x), a
      008488 81               [ 4]  648 	ret
                                    649 ;	stm8s_adc1.c: 466: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
                                    650 ;	-----------------------------------------
                                    651 ;	 function ADC1_GetBufferValue
                                    652 ;	-----------------------------------------
      008489                        653 _ADC1_GetBufferValue:
      008489 52 0D            [ 2]  654 	sub	sp, #13
                                    655 ;	stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      00848B AE 54 02         [ 2]  656 	ldw	x, #0x5402
      00848E F6               [ 1]  657 	ld	a, (x)
      00848F 6B 0D            [ 1]  658 	ld	(0x0d, sp), a
                                    659 ;	stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      008491 7B 10            [ 1]  660 	ld	a, (0x10, sp)
      008493 48               [ 1]  661 	sll	a
      008494 5F               [ 1]  662 	clrw	x
      008495 97               [ 1]  663 	ld	xl, a
      008496 90 93            [ 1]  664 	ldw	y, x
      008498 72 A9 53 E1      [ 2]  665 	addw	y, #0x53e1
                                    666 ;	stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      00849C 1C 53 E0         [ 2]  667 	addw	x, #0x53e0
                                    668 ;	stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
                                    669 ;	stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    670 ;	stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      00849F 90 F6            [ 1]  671 	ld	a, (y)
      0084A1 6B 0C            [ 1]  672 	ld	(0x0c, sp), a
                                    673 ;	stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      0084A3 F6               [ 1]  674 	ld	a, (x)
      0084A4 5F               [ 1]  675 	clrw	x
      0084A5 97               [ 1]  676 	ld	xl, a
                                    677 ;	stm8s_adc1.c: 474: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
      0084A6 7B 0D            [ 1]  678 	ld	a, (0x0d, sp)
      0084A8 A5 08            [ 1]  679 	bcp	a, #0x08
      0084AA 27 22            [ 1]  680 	jreq	00102$
                                    681 ;	stm8s_adc1.c: 477: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      0084AC 7B 0C            [ 1]  682 	ld	a, (0x0c, sp)
      0084AE 6B 0B            [ 1]  683 	ld	(0x0b, sp), a
                                    684 ;	stm8s_adc1.c: 479: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
                                    685 ;	stm8s_adc1.c: 481: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
      0084B0 58               [ 2]  686 	sllw	x
      0084B1 58               [ 2]  687 	sllw	x
      0084B2 58               [ 2]  688 	sllw	x
      0084B3 58               [ 2]  689 	sllw	x
      0084B4 58               [ 2]  690 	sllw	x
      0084B5 58               [ 2]  691 	sllw	x
      0084B6 58               [ 2]  692 	sllw	x
      0084B7 58               [ 2]  693 	sllw	x
      0084B8 7B 0B            [ 1]  694 	ld	a, (0x0b, sp)
      0084BA 6B 0A            [ 1]  695 	ld	(0x0a, sp), a
      0084BC 0F 09            [ 1]  696 	clr	(0x09, sp)
      0084BE 9F               [ 1]  697 	ld	a, xl
      0084BF 1A 0A            [ 1]  698 	or	a, (0x0a, sp)
      0084C1 6B 08            [ 1]  699 	ld	(0x08, sp), a
      0084C3 9E               [ 1]  700 	ld	a, xh
      0084C4 1A 09            [ 1]  701 	or	a, (0x09, sp)
      0084C6 6B 05            [ 1]  702 	ld	(0x05, sp), a
      0084C8 7B 08            [ 1]  703 	ld	a, (0x08, sp)
      0084CA 6B 06            [ 1]  704 	ld	(0x06, sp), a
      0084CC 20 25            [ 2]  705 	jra	00103$
      0084CE                        706 00102$:
                                    707 ;	stm8s_adc1.c: 486: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
      0084CE 90 93            [ 1]  708 	ldw	y, x
                                    709 ;	stm8s_adc1.c: 488: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
      0084D0 7B 0C            [ 1]  710 	ld	a, (0x0c, sp)
                                    711 ;	stm8s_adc1.c: 490: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
      0084D2 5F               [ 1]  712 	clrw	x
      0084D3 97               [ 1]  713 	ld	xl, a
      0084D4 58               [ 2]  714 	sllw	x
      0084D5 58               [ 2]  715 	sllw	x
      0084D6 58               [ 2]  716 	sllw	x
      0084D7 58               [ 2]  717 	sllw	x
      0084D8 58               [ 2]  718 	sllw	x
      0084D9 58               [ 2]  719 	sllw	x
      0084DA 1F 03            [ 2]  720 	ldw	(0x03, sp), x
      0084DC 93               [ 1]  721 	ldw	x, y
      0084DD 58               [ 2]  722 	sllw	x
      0084DE 58               [ 2]  723 	sllw	x
      0084DF 58               [ 2]  724 	sllw	x
      0084E0 58               [ 2]  725 	sllw	x
      0084E1 58               [ 2]  726 	sllw	x
      0084E2 58               [ 2]  727 	sllw	x
      0084E3 58               [ 2]  728 	sllw	x
      0084E4 58               [ 2]  729 	sllw	x
      0084E5 9F               [ 1]  730 	ld	a, xl
      0084E6 1A 04            [ 1]  731 	or	a, (0x04, sp)
      0084E8 6B 02            [ 1]  732 	ld	(0x02, sp), a
      0084EA 9E               [ 1]  733 	ld	a, xh
      0084EB 1A 03            [ 1]  734 	or	a, (0x03, sp)
      0084ED 6B 05            [ 1]  735 	ld	(0x05, sp), a
      0084EF 7B 02            [ 1]  736 	ld	a, (0x02, sp)
      0084F1 6B 06            [ 1]  737 	ld	(0x06, sp), a
      0084F3                        738 00103$:
                                    739 ;	stm8s_adc1.c: 493: return ((uint16_t)temph);
      0084F3 1E 05            [ 2]  740 	ldw	x, (0x05, sp)
      0084F5 5B 0D            [ 2]  741 	addw	sp, #13
      0084F7 81               [ 4]  742 	ret
                                    743 ;	stm8s_adc1.c: 502: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
                                    744 ;	-----------------------------------------
                                    745 ;	 function ADC1_GetAWDChannelStatus
                                    746 ;	-----------------------------------------
      0084F8                        747 _ADC1_GetAWDChannelStatus:
      0084F8 52 02            [ 2]  748 	sub	sp, #2
                                    749 ;	stm8s_adc1.c: 509: if (Channel < (uint8_t)8)
      0084FA 7B 05            [ 1]  750 	ld	a, (0x05, sp)
      0084FC A1 08            [ 1]  751 	cp	a, #0x08
      0084FE 24 18            [ 1]  752 	jrnc	00102$
                                    753 ;	stm8s_adc1.c: 511: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
      008500 AE 54 0D         [ 2]  754 	ldw	x, #0x540d
      008503 F6               [ 1]  755 	ld	a, (x)
      008504 6B 02            [ 1]  756 	ld	(0x02, sp), a
      008506 A6 01            [ 1]  757 	ld	a, #0x01
      008508 88               [ 1]  758 	push	a
      008509 7B 06            [ 1]  759 	ld	a, (0x06, sp)
      00850B 4D               [ 1]  760 	tnz	a
      00850C 27 05            [ 1]  761 	jreq	00112$
      00850E                        762 00111$:
      00850E 08 01            [ 1]  763 	sll	(1, sp)
      008510 4A               [ 1]  764 	dec	a
      008511 26 FB            [ 1]  765 	jrne	00111$
      008513                        766 00112$:
      008513 84               [ 1]  767 	pop	a
      008514 14 02            [ 1]  768 	and	a, (0x02, sp)
      008516 20 1A            [ 2]  769 	jra	00103$
      008518                        770 00102$:
                                    771 ;	stm8s_adc1.c: 515: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
      008518 AE 54 0C         [ 2]  772 	ldw	x, #0x540c
      00851B F6               [ 1]  773 	ld	a, (x)
      00851C 6B 01            [ 1]  774 	ld	(0x01, sp), a
      00851E 7B 05            [ 1]  775 	ld	a, (0x05, sp)
      008520 A0 08            [ 1]  776 	sub	a, #0x08
      008522 95               [ 1]  777 	ld	xh, a
      008523 A6 01            [ 1]  778 	ld	a, #0x01
      008525 88               [ 1]  779 	push	a
      008526 9E               [ 1]  780 	ld	a, xh
      008527 4D               [ 1]  781 	tnz	a
      008528 27 05            [ 1]  782 	jreq	00114$
      00852A                        783 00113$:
      00852A 08 01            [ 1]  784 	sll	(1, sp)
      00852C 4A               [ 1]  785 	dec	a
      00852D 26 FB            [ 1]  786 	jrne	00113$
      00852F                        787 00114$:
      00852F 84               [ 1]  788 	pop	a
      008530 14 01            [ 1]  789 	and	a, (0x01, sp)
      008532                        790 00103$:
                                    791 ;	stm8s_adc1.c: 518: return ((FlagStatus)status);
      008532 5B 02            [ 2]  792 	addw	sp, #2
      008534 81               [ 4]  793 	ret
                                    794 ;	stm8s_adc1.c: 527: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
                                    795 ;	-----------------------------------------
                                    796 ;	 function ADC1_GetFlagStatus
                                    797 ;	-----------------------------------------
      008535                        798 _ADC1_GetFlagStatus:
      008535 52 04            [ 2]  799 	sub	sp, #4
                                    800 ;	stm8s_adc1.c: 535: if ((Flag & 0x0F) == 0x01)
      008537 7B 07            [ 1]  801 	ld	a, (0x07, sp)
      008539 A4 0F            [ 1]  802 	and	a, #0x0f
      00853B 6B 04            [ 1]  803 	ld	(0x04, sp), a
      00853D 7B 04            [ 1]  804 	ld	a, (0x04, sp)
      00853F A1 01            [ 1]  805 	cp	a, #0x01
      008541 26 08            [ 1]  806 	jrne	00108$
                                    807 ;	stm8s_adc1.c: 538: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
      008543 AE 54 03         [ 2]  808 	ldw	x, #0x5403
      008546 F6               [ 1]  809 	ld	a, (x)
      008547 A4 40            [ 1]  810 	and	a, #0x40
      008549 20 4C            [ 2]  811 	jra	00109$
      00854B                        812 00108$:
                                    813 ;	stm8s_adc1.c: 540: else if ((Flag & 0xF0) == 0x10)
      00854B 7B 07            [ 1]  814 	ld	a, (0x07, sp)
      00854D A4 F0            [ 1]  815 	and	a, #0xf0
      00854F A1 10            [ 1]  816 	cp	a, #0x10
      008551 26 3E            [ 1]  817 	jrne	00105$
                                    818 ;	stm8s_adc1.c: 543: temp = (uint8_t)(Flag & (uint8_t)0x0F);
      008553 7B 04            [ 1]  819 	ld	a, (0x04, sp)
      008555 6B 01            [ 1]  820 	ld	(0x01, sp), a
                                    821 ;	stm8s_adc1.c: 544: if (temp < 8)
      008557 7B 01            [ 1]  822 	ld	a, (0x01, sp)
      008559 A1 08            [ 1]  823 	cp	a, #0x08
      00855B 24 18            [ 1]  824 	jrnc	00102$
                                    825 ;	stm8s_adc1.c: 546: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      00855D AE 54 0D         [ 2]  826 	ldw	x, #0x540d
      008560 F6               [ 1]  827 	ld	a, (x)
      008561 95               [ 1]  828 	ld	xh, a
      008562 A6 01            [ 1]  829 	ld	a, #0x01
      008564 6B 03            [ 1]  830 	ld	(0x03, sp), a
      008566 7B 01            [ 1]  831 	ld	a, (0x01, sp)
      008568 4D               [ 1]  832 	tnz	a
      008569 27 05            [ 1]  833 	jreq	00132$
      00856B                        834 00131$:
      00856B 08 03            [ 1]  835 	sll	(0x03, sp)
      00856D 4A               [ 1]  836 	dec	a
      00856E 26 FB            [ 1]  837 	jrne	00131$
      008570                        838 00132$:
      008570 9E               [ 1]  839 	ld	a, xh
      008571 14 03            [ 1]  840 	and	a, (0x03, sp)
      008573 20 22            [ 2]  841 	jra	00109$
      008575                        842 00102$:
                                    843 ;	stm8s_adc1.c: 550: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      008575 AE 54 0C         [ 2]  844 	ldw	x, #0x540c
      008578 F6               [ 1]  845 	ld	a, (x)
      008579 95               [ 1]  846 	ld	xh, a
      00857A 7B 01            [ 1]  847 	ld	a, (0x01, sp)
      00857C A0 08            [ 1]  848 	sub	a, #0x08
      00857E 97               [ 1]  849 	ld	xl, a
      00857F A6 01            [ 1]  850 	ld	a, #0x01
      008581 6B 02            [ 1]  851 	ld	(0x02, sp), a
      008583 9F               [ 1]  852 	ld	a, xl
      008584 4D               [ 1]  853 	tnz	a
      008585 27 05            [ 1]  854 	jreq	00134$
      008587                        855 00133$:
      008587 08 02            [ 1]  856 	sll	(0x02, sp)
      008589 4A               [ 1]  857 	dec	a
      00858A 26 FB            [ 1]  858 	jrne	00133$
      00858C                        859 00134$:
      00858C 9E               [ 1]  860 	ld	a, xh
      00858D 14 02            [ 1]  861 	and	a, (0x02, sp)
      00858F 20 06            [ 2]  862 	jra	00109$
      008591                        863 00105$:
                                    864 ;	stm8s_adc1.c: 555: flagstatus = (uint8_t)(ADC1->CSR & Flag);
      008591 AE 54 00         [ 2]  865 	ldw	x, #0x5400
      008594 F6               [ 1]  866 	ld	a, (x)
      008595 14 07            [ 1]  867 	and	a, (0x07, sp)
      008597                        868 00109$:
                                    869 ;	stm8s_adc1.c: 557: return ((FlagStatus)flagstatus);
      008597 5B 04            [ 2]  870 	addw	sp, #4
      008599 81               [ 4]  871 	ret
                                    872 ;	stm8s_adc1.c: 567: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
                                    873 ;	-----------------------------------------
                                    874 ;	 function ADC1_ClearFlag
                                    875 ;	-----------------------------------------
      00859A                        876 _ADC1_ClearFlag:
      00859A 52 03            [ 2]  877 	sub	sp, #3
                                    878 ;	stm8s_adc1.c: 574: if ((Flag & 0x0F) == 0x01)
      00859C 7B 06            [ 1]  879 	ld	a, (0x06, sp)
      00859E A4 0F            [ 1]  880 	and	a, #0x0f
      0085A0 95               [ 1]  881 	ld	xh, a
      0085A1 A1 01            [ 1]  882 	cp	a, #0x01
      0085A3 26 09            [ 1]  883 	jrne	00108$
                                    884 ;	stm8s_adc1.c: 577: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
      0085A5 AE 54 03         [ 2]  885 	ldw	x, #0x5403
      0085A8 F6               [ 1]  886 	ld	a, (x)
      0085A9 A4 BF            [ 1]  887 	and	a, #0xbf
      0085AB F7               [ 1]  888 	ld	(x), a
      0085AC 20 5B            [ 2]  889 	jra	00110$
      0085AE                        890 00108$:
                                    891 ;	stm8s_adc1.c: 579: else if ((Flag & 0xF0) == 0x10)
      0085AE 7B 06            [ 1]  892 	ld	a, (0x06, sp)
      0085B0 A4 F0            [ 1]  893 	and	a, #0xf0
      0085B2 A1 10            [ 1]  894 	cp	a, #0x10
      0085B4 26 44            [ 1]  895 	jrne	00105$
                                    896 ;	stm8s_adc1.c: 582: temp = (uint8_t)(Flag & (uint8_t)0x0F);
                                    897 ;	stm8s_adc1.c: 583: if (temp < 8)
      0085B6 9E               [ 1]  898 	ld	a, xh
      0085B7 A1 08            [ 1]  899 	cp	a, #0x08
      0085B9 24 1E            [ 1]  900 	jrnc	00102$
                                    901 ;	stm8s_adc1.c: 585: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      0085BB 90 AE 54 0D      [ 2]  902 	ldw	y, #0x540d
      0085BF 90 F6            [ 1]  903 	ld	a, (y)
      0085C1 6B 03            [ 1]  904 	ld	(0x03, sp), a
      0085C3 A6 01            [ 1]  905 	ld	a, #0x01
      0085C5 88               [ 1]  906 	push	a
      0085C6 9E               [ 1]  907 	ld	a, xh
      0085C7 4D               [ 1]  908 	tnz	a
      0085C8 27 05            [ 1]  909 	jreq	00132$
      0085CA                        910 00131$:
      0085CA 08 01            [ 1]  911 	sll	(1, sp)
      0085CC 4A               [ 1]  912 	dec	a
      0085CD 26 FB            [ 1]  913 	jrne	00131$
      0085CF                        914 00132$:
      0085CF 84               [ 1]  915 	pop	a
      0085D0 43               [ 1]  916 	cpl	a
      0085D1 14 03            [ 1]  917 	and	a, (0x03, sp)
      0085D3 AE 54 0D         [ 2]  918 	ldw	x, #0x540d
      0085D6 F7               [ 1]  919 	ld	(x), a
      0085D7 20 30            [ 2]  920 	jra	00110$
      0085D9                        921 00102$:
                                    922 ;	stm8s_adc1.c: 589: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      0085D9 90 AE 54 0C      [ 2]  923 	ldw	y, #0x540c
      0085DD 90 F6            [ 1]  924 	ld	a, (y)
      0085DF 6B 02            [ 1]  925 	ld	(0x02, sp), a
      0085E1 1D 08 00         [ 2]  926 	subw	x, #2048
      0085E4 A6 01            [ 1]  927 	ld	a, #0x01
      0085E6 88               [ 1]  928 	push	a
      0085E7 9E               [ 1]  929 	ld	a, xh
      0085E8 4D               [ 1]  930 	tnz	a
      0085E9 27 05            [ 1]  931 	jreq	00134$
      0085EB                        932 00133$:
      0085EB 08 01            [ 1]  933 	sll	(1, sp)
      0085ED 4A               [ 1]  934 	dec	a
      0085EE 26 FB            [ 1]  935 	jrne	00133$
      0085F0                        936 00134$:
      0085F0 84               [ 1]  937 	pop	a
      0085F1 43               [ 1]  938 	cpl	a
      0085F2 14 02            [ 1]  939 	and	a, (0x02, sp)
      0085F4 AE 54 0C         [ 2]  940 	ldw	x, #0x540c
      0085F7 F7               [ 1]  941 	ld	(x), a
      0085F8 20 0F            [ 2]  942 	jra	00110$
      0085FA                        943 00105$:
                                    944 ;	stm8s_adc1.c: 594: ADC1->CSR &= (uint8_t) (~Flag);
      0085FA AE 54 00         [ 2]  945 	ldw	x, #0x5400
      0085FD F6               [ 1]  946 	ld	a, (x)
      0085FE 6B 01            [ 1]  947 	ld	(0x01, sp), a
      008600 7B 06            [ 1]  948 	ld	a, (0x06, sp)
      008602 43               [ 1]  949 	cpl	a
      008603 14 01            [ 1]  950 	and	a, (0x01, sp)
      008605 AE 54 00         [ 2]  951 	ldw	x, #0x5400
      008608 F7               [ 1]  952 	ld	(x), a
      008609                        953 00110$:
      008609 5B 03            [ 2]  954 	addw	sp, #3
      00860B 81               [ 4]  955 	ret
                                    956 ;	stm8s_adc1.c: 616: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
                                    957 ;	-----------------------------------------
                                    958 ;	 function ADC1_GetITStatus
                                    959 ;	-----------------------------------------
      00860C                        960 _ADC1_GetITStatus:
      00860C 52 03            [ 2]  961 	sub	sp, #3
                                    962 ;	stm8s_adc1.c: 624: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      00860E 7B 07            [ 1]  963 	ld	a, (0x07, sp)
      008610 A4 F0            [ 1]  964 	and	a, #0xf0
      008612 97               [ 1]  965 	ld	xl, a
      008613 4F               [ 1]  966 	clr	a
      008614 95               [ 1]  967 	ld	xh, a
      008615 A3 00 10         [ 2]  968 	cpw	x, #0x0010
      008618 26 40            [ 1]  969 	jrne	00105$
                                    970 ;	stm8s_adc1.c: 627: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      00861A 7B 07            [ 1]  971 	ld	a, (0x07, sp)
      00861C A4 0F            [ 1]  972 	and	a, #0x0f
      00861E 95               [ 1]  973 	ld	xh, a
      00861F 4F               [ 1]  974 	clr	a
                                    975 ;	stm8s_adc1.c: 628: if (temp < 8)
      008620 9E               [ 1]  976 	ld	a, xh
      008621 A1 08            [ 1]  977 	cp	a, #0x08
      008623 24 19            [ 1]  978 	jrnc	00102$
                                    979 ;	stm8s_adc1.c: 630: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
      008625 90 AE 54 0D      [ 2]  980 	ldw	y, #0x540d
      008629 90 F6            [ 1]  981 	ld	a, (y)
      00862B 97               [ 1]  982 	ld	xl, a
      00862C A6 01            [ 1]  983 	ld	a, #0x01
      00862E 6B 03            [ 1]  984 	ld	(0x03, sp), a
      008630 9E               [ 1]  985 	ld	a, xh
      008631 4D               [ 1]  986 	tnz	a
      008632 27 05            [ 1]  987 	jreq	00122$
      008634                        988 00121$:
      008634 08 03            [ 1]  989 	sll	(0x03, sp)
      008636 4A               [ 1]  990 	dec	a
      008637 26 FB            [ 1]  991 	jrne	00121$
      008639                        992 00122$:
      008639 9F               [ 1]  993 	ld	a, xl
      00863A 14 03            [ 1]  994 	and	a, (0x03, sp)
      00863C 20 26            [ 2]  995 	jra	00106$
      00863E                        996 00102$:
                                    997 ;	stm8s_adc1.c: 634: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
      00863E 90 AE 54 0C      [ 2]  998 	ldw	y, #0x540c
      008642 90 F6            [ 1]  999 	ld	a, (y)
      008644 97               [ 1] 1000 	ld	xl, a
      008645 1D 08 00         [ 2] 1001 	subw	x, #2048
      008648 A6 01            [ 1] 1002 	ld	a, #0x01
      00864A 6B 02            [ 1] 1003 	ld	(0x02, sp), a
      00864C 9E               [ 1] 1004 	ld	a, xh
      00864D 4D               [ 1] 1005 	tnz	a
      00864E 27 05            [ 1] 1006 	jreq	00124$
      008650                       1007 00123$:
      008650 08 02            [ 1] 1008 	sll	(0x02, sp)
      008652 4A               [ 1] 1009 	dec	a
      008653 26 FB            [ 1] 1010 	jrne	00123$
      008655                       1011 00124$:
      008655 9F               [ 1] 1012 	ld	a, xl
      008656 14 02            [ 1] 1013 	and	a, (0x02, sp)
      008658 20 0A            [ 2] 1014 	jra	00106$
      00865A                       1015 00105$:
                                   1016 ;	stm8s_adc1.c: 639: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
      00865A AE 54 00         [ 2] 1017 	ldw	x, #0x5400
      00865D F6               [ 1] 1018 	ld	a, (x)
      00865E 6B 01            [ 1] 1019 	ld	(0x01, sp), a
      008660 7B 07            [ 1] 1020 	ld	a, (0x07, sp)
      008662 14 01            [ 1] 1021 	and	a, (0x01, sp)
      008664                       1022 00106$:
                                   1023 ;	stm8s_adc1.c: 641: return ((ITStatus)itstatus);
      008664 5B 03            [ 2] 1024 	addw	sp, #3
      008666 81               [ 4] 1025 	ret
                                   1026 ;	stm8s_adc1.c: 662: void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
                                   1027 ;	-----------------------------------------
                                   1028 ;	 function ADC1_ClearITPendingBit
                                   1029 ;	-----------------------------------------
      008667                       1030 _ADC1_ClearITPendingBit:
      008667 52 02            [ 2] 1031 	sub	sp, #2
                                   1032 ;	stm8s_adc1.c: 669: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
      008669 7B 06            [ 1] 1033 	ld	a, (0x06, sp)
      00866B A4 F0            [ 1] 1034 	and	a, #0xf0
      00866D 97               [ 1] 1035 	ld	xl, a
      00866E 4F               [ 1] 1036 	clr	a
      00866F 95               [ 1] 1037 	ld	xh, a
      008670 A3 00 10         [ 2] 1038 	cpw	x, #0x0010
      008673 26 4A            [ 1] 1039 	jrne	00105$
                                   1040 ;	stm8s_adc1.c: 672: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
      008675 7B 06            [ 1] 1041 	ld	a, (0x06, sp)
      008677 A4 0F            [ 1] 1042 	and	a, #0x0f
      008679 95               [ 1] 1043 	ld	xh, a
      00867A 4F               [ 1] 1044 	clr	a
                                   1045 ;	stm8s_adc1.c: 673: if (temp < 8)
      00867B 9E               [ 1] 1046 	ld	a, xh
      00867C A1 08            [ 1] 1047 	cp	a, #0x08
      00867E 24 1E            [ 1] 1048 	jrnc	00102$
                                   1049 ;	stm8s_adc1.c: 675: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
      008680 90 AE 54 0D      [ 2] 1050 	ldw	y, #0x540d
      008684 90 F6            [ 1] 1051 	ld	a, (y)
      008686 6B 02            [ 1] 1052 	ld	(0x02, sp), a
      008688 A6 01            [ 1] 1053 	ld	a, #0x01
      00868A 88               [ 1] 1054 	push	a
      00868B 9E               [ 1] 1055 	ld	a, xh
      00868C 4D               [ 1] 1056 	tnz	a
      00868D 27 05            [ 1] 1057 	jreq	00122$
      00868F                       1058 00121$:
      00868F 08 01            [ 1] 1059 	sll	(1, sp)
      008691 4A               [ 1] 1060 	dec	a
      008692 26 FB            [ 1] 1061 	jrne	00121$
      008694                       1062 00122$:
      008694 84               [ 1] 1063 	pop	a
      008695 43               [ 1] 1064 	cpl	a
      008696 14 02            [ 1] 1065 	and	a, (0x02, sp)
      008698 AE 54 0D         [ 2] 1066 	ldw	x, #0x540d
      00869B F7               [ 1] 1067 	ld	(x), a
      00869C 20 30            [ 2] 1068 	jra	00107$
      00869E                       1069 00102$:
                                   1070 ;	stm8s_adc1.c: 679: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
      00869E 90 AE 54 0C      [ 2] 1071 	ldw	y, #0x540c
      0086A2 90 F6            [ 1] 1072 	ld	a, (y)
      0086A4 6B 01            [ 1] 1073 	ld	(0x01, sp), a
      0086A6 1D 08 00         [ 2] 1074 	subw	x, #2048
      0086A9 A6 01            [ 1] 1075 	ld	a, #0x01
      0086AB 88               [ 1] 1076 	push	a
      0086AC 9E               [ 1] 1077 	ld	a, xh
      0086AD 4D               [ 1] 1078 	tnz	a
      0086AE 27 05            [ 1] 1079 	jreq	00124$
      0086B0                       1080 00123$:
      0086B0 08 01            [ 1] 1081 	sll	(1, sp)
      0086B2 4A               [ 1] 1082 	dec	a
      0086B3 26 FB            [ 1] 1083 	jrne	00123$
      0086B5                       1084 00124$:
      0086B5 84               [ 1] 1085 	pop	a
      0086B6 43               [ 1] 1086 	cpl	a
      0086B7 14 01            [ 1] 1087 	and	a, (0x01, sp)
      0086B9 AE 54 0C         [ 2] 1088 	ldw	x, #0x540c
      0086BC F7               [ 1] 1089 	ld	(x), a
      0086BD 20 0F            [ 2] 1090 	jra	00107$
      0086BF                       1091 00105$:
                                   1092 ;	stm8s_adc1.c: 684: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
      0086BF AE 54 00         [ 2] 1093 	ldw	x, #0x5400
      0086C2 F6               [ 1] 1094 	ld	a, (x)
      0086C3 1E 05            [ 2] 1095 	ldw	x, (0x05, sp)
      0086C5 53               [ 2] 1096 	cplw	x
      0086C6 89               [ 2] 1097 	pushw	x
      0086C7 14 02            [ 1] 1098 	and	a, (2, sp)
      0086C9 85               [ 2] 1099 	popw	x
      0086CA AE 54 00         [ 2] 1100 	ldw	x, #0x5400
      0086CD F7               [ 1] 1101 	ld	(x), a
      0086CE                       1102 00107$:
      0086CE 5B 02            [ 2] 1103 	addw	sp, #2
      0086D0 81               [ 4] 1104 	ret
                                   1105 	.area CODE
                                   1106 	.area INITIALIZER
                                   1107 	.area CABS (ABS)

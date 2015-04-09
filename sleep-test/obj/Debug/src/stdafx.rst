                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 09 17:30:58 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stdafx
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _TIM3_ClearFlag
                                     13 	.globl _TIM3_GetCapture1
                                     14 	.globl _TIM3_Cmd
                                     15 	.globl _TIM3_ICInit
                                     16 	.globl _AWU_LSICalibrationConfig
                                     17 	.globl _AWU_Init
                                     18 	.globl _CLK_GetClockFreq
                                     19 	.globl _AWU_Config
                                     20 	.globl _LSIMeasurment
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 ;--------------------------------------------------------
                                     34 ; global & static initialisations
                                     35 ;--------------------------------------------------------
                                     36 	.area HOME
                                     37 	.area GSINIT
                                     38 	.area GSFINAL
                                     39 	.area GSINIT
                                     40 ;--------------------------------------------------------
                                     41 ; Home
                                     42 ;--------------------------------------------------------
                                     43 	.area HOME
                                     44 	.area HOME
                                     45 ;--------------------------------------------------------
                                     46 ; code
                                     47 ;--------------------------------------------------------
                                     48 	.area CODE
                                     49 ;	src\stdafx.c: 10: void AWU_Config(void){
                                     50 ;	-----------------------------------------
                                     51 ;	 function AWU_Config
                                     52 ;	-----------------------------------------
      0080E2                         53 _AWU_Config:
                                     54 ;	src\stdafx.c: 14: AWU_LSICalibrationConfig(LSIMeasurment());
      0080E2 CD 80 F4         [ 4]   55 	call	_LSIMeasurment
      0080E5 89               [ 2]   56 	pushw	x
      0080E6 90 89            [ 2]   57 	pushw	y
      0080E8 CD 82 06         [ 4]   58 	call	_AWU_LSICalibrationConfig
      0080EB 5B 04            [ 2]   59 	addw	sp, #4
                                     60 ;	src\stdafx.c: 17: AWU_Init(AWU_TIMEBASE_2S);
      0080ED 4B 0E            [ 1]   61 	push	#0x0e
      0080EF CD 81 A7         [ 4]   62 	call	_AWU_Init
      0080F2 84               [ 1]   63 	pop	a
      0080F3 81               [ 4]   64 	ret
                                     65 ;	src\stdafx.c: 21: uint32_t LSIMeasurment(void){
                                     66 ;	-----------------------------------------
                                     67 ;	 function LSIMeasurment
                                     68 ;	-----------------------------------------
      0080F4                         69 _LSIMeasurment:
      0080F4 52 18            [ 2]   70 	sub	sp, #24
                                     71 ;	src\stdafx.c: 28: fmaster = CLK_GetClockFreq();
      0080F6 CD 85 4D         [ 4]   72 	call	_CLK_GetClockFreq
      0080F9 1F 07            [ 2]   73 	ldw	(0x07, sp), x
      0080FB 17 05            [ 2]   74 	ldw	(0x05, sp), y
                                     75 ;	src\stdafx.c: 31: AWU->CSR |= AWU_CSR_MSR;
      0080FD AE 50 F0         [ 2]   76 	ldw	x, #0x50f0
      008100 F6               [ 1]   77 	ld	a, (x)
      008101 AA 01            [ 1]   78 	or	a, #0x01
      008103 F7               [ 1]   79 	ld	(x), a
                                     80 ;	src\stdafx.c: 35: TIM3_ICInit(TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI, TIM3_ICPSC_DIV8, 0);
      008104 4B 00            [ 1]   81 	push	#0x00
      008106 4B 0C            [ 1]   82 	push	#0x0c
      008108 4B 01            [ 1]   83 	push	#0x01
      00810A 4B 00            [ 1]   84 	push	#0x00
      00810C 4B 00            [ 1]   85 	push	#0x00
      00810E CD 88 05         [ 4]   86 	call	_TIM3_ICInit
      008111 5B 05            [ 2]   87 	addw	sp, #5
                                     88 ;	src\stdafx.c: 37: TIM3_Cmd(ENABLE);
      008113 4B 01            [ 1]   89 	push	#0x01
      008115 CD 88 B7         [ 4]   90 	call	_TIM3_Cmd
      008118 84               [ 1]   91 	pop	a
                                     92 ;	src\stdafx.c: 41: while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
      008119                         93 00101$:
      008119 AE 53 22         [ 2]   94 	ldw	x, #0x5322
      00811C F6               [ 1]   95 	ld	a, (x)
      00811D 0F 17            [ 1]   96 	clr	(0x17, sp)
      00811F A4 02            [ 1]   97 	and	a, #0x02
      008121 97               [ 1]   98 	ld	xl, a
      008122 4F               [ 1]   99 	clr	a
      008123 95               [ 1]  100 	ld	xh, a
      008124 A3 00 02         [ 2]  101 	cpw	x, #0x0002
      008127 26 F0            [ 1]  102 	jrne	00101$
                                    103 ;	src\stdafx.c: 42: ICValue1 = TIM3_GetCapture1();
      008129 CD 8A 7D         [ 4]  104 	call	_TIM3_GetCapture1
      00812C 1F 03            [ 2]  105 	ldw	(0x03, sp), x
                                    106 ;	src\stdafx.c: 43: TIM3_ClearFlag(TIM3_FLAG_CC1);
      00812E 4B 02            [ 1]  107 	push	#0x02
      008130 4B 00            [ 1]  108 	push	#0x00
      008132 CD 8B 28         [ 4]  109 	call	_TIM3_ClearFlag
      008135 5B 02            [ 2]  110 	addw	sp, #2
                                    111 ;	src\stdafx.c: 46: while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
      008137                        112 00104$:
      008137 AE 53 22         [ 2]  113 	ldw	x, #0x5322
      00813A F6               [ 1]  114 	ld	a, (x)
      00813B 0F 15            [ 1]  115 	clr	(0x15, sp)
      00813D A4 02            [ 1]  116 	and	a, #0x02
      00813F 97               [ 1]  117 	ld	xl, a
      008140 4F               [ 1]  118 	clr	a
      008141 95               [ 1]  119 	ld	xh, a
      008142 A3 00 02         [ 2]  120 	cpw	x, #0x0002
      008145 26 F0            [ 1]  121 	jrne	00104$
                                    122 ;	src\stdafx.c: 48: ICValue2 = TIM3_GetCapture1();
      008147 CD 8A 7D         [ 4]  123 	call	_TIM3_GetCapture1
      00814A 1F 01            [ 2]  124 	ldw	(0x01, sp), x
                                    125 ;	src\stdafx.c: 49: TIM3_ClearFlag(TIM3_FLAG_CC1);
      00814C 4B 02            [ 1]  126 	push	#0x02
      00814E 4B 00            [ 1]  127 	push	#0x00
      008150 CD 8B 28         [ 4]  128 	call	_TIM3_ClearFlag
      008153 5B 02            [ 2]  129 	addw	sp, #2
                                    130 ;	src\stdafx.c: 53: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
      008155 AE 53 27         [ 2]  131 	ldw	x, #0x5327
      008158 F6               [ 1]  132 	ld	a, (x)
      008159 A4 FE            [ 1]  133 	and	a, #0xfe
      00815B F7               [ 1]  134 	ld	(x), a
                                    135 ;	src\stdafx.c: 55: TIM3_Cmd(DISABLE);
      00815C 4B 00            [ 1]  136 	push	#0x00
      00815E CD 88 B7         [ 4]  137 	call	_TIM3_Cmd
      008161 84               [ 1]  138 	pop	a
                                    139 ;	src\stdafx.c: 58: lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
      008162 16 07            [ 2]  140 	ldw	y, (0x07, sp)
      008164 17 13            [ 2]  141 	ldw	(0x13, sp), y
      008166 16 05            [ 2]  142 	ldw	y, (0x05, sp)
      008168 A6 03            [ 1]  143 	ld	a, #0x03
      00816A 4D               [ 1]  144 	tnz	a
      00816B 27 09            [ 1]  145 	jreq	00132$
      00816D                        146 00131$:
      00816D 08 14            [ 1]  147 	sll	(0x14, sp)
      00816F 09 13            [ 1]  148 	rlc	(0x13, sp)
      008171 90 59            [ 2]  149 	rlcw	y
      008173 4A               [ 1]  150 	dec	a
      008174 26 F7            [ 1]  151 	jrne	00131$
      008176                        152 00132$:
      008176 1E 01            [ 2]  153 	ldw	x, (0x01, sp)
      008178 72 F0 03         [ 2]  154 	subw	x, (0x03, sp)
      00817B 0F 0E            [ 1]  155 	clr	(0x0e, sp)
      00817D 0F 0D            [ 1]  156 	clr	(0x0d, sp)
      00817F 89               [ 2]  157 	pushw	x
      008180 1E 0F            [ 2]  158 	ldw	x, (0x0f, sp)
      008182 89               [ 2]  159 	pushw	x
      008183 1E 17            [ 2]  160 	ldw	x, (0x17, sp)
      008185 89               [ 2]  161 	pushw	x
      008186 90 89            [ 2]  162 	pushw	y
      008188 CD 8C 2C         [ 4]  163 	call	__divulong
      00818B 5B 08            [ 2]  164 	addw	sp, #8
      00818D 1F 0B            [ 2]  165 	ldw	(0x0b, sp), x
                                    166 ;	src\stdafx.c: 61: AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
      00818F 72 11 50 F0      [ 1]  167 	bres	0x50f0, #0
                                    168 ;	src\stdafx.c: 62: return (lsi_freq_hz);
      008193 1E 0B            [ 2]  169 	ldw	x, (0x0b, sp)
      008195 5B 18            [ 2]  170 	addw	sp, #24
      008197 81               [ 4]  171 	ret
                                    172 	.area CODE
                                    173 	.area INITIALIZER
                                    174 	.area CABS (ABS)

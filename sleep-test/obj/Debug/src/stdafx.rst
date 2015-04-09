                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 09 14:44:44 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stdafx
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _AWU_LSICalibrationConfig
                                     13 	.globl _AWU_Init
                                     14 	.globl _CLK_GetClockFreq
                                     15 	.globl _AWU_Config
                                     16 	.globl _LSIMeasurment
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
                                     25 ;--------------------------------------------------------
                                     26 ; absolute external ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area DABS (ABS)
                                     29 ;--------------------------------------------------------
                                     30 ; global & static initialisations
                                     31 ;--------------------------------------------------------
                                     32 	.area HOME
                                     33 	.area GSINIT
                                     34 	.area GSFINAL
                                     35 	.area GSINIT
                                     36 ;--------------------------------------------------------
                                     37 ; Home
                                     38 ;--------------------------------------------------------
                                     39 	.area HOME
                                     40 	.area HOME
                                     41 ;--------------------------------------------------------
                                     42 ; code
                                     43 ;--------------------------------------------------------
                                     44 	.area CODE
                                     45 ;	src\stdafx.c: 10: void AWU_Config(void){
                                     46 ;	-----------------------------------------
                                     47 ;	 function AWU_Config
                                     48 ;	-----------------------------------------
      0080A7                         49 _AWU_Config:
                                     50 ;	src\stdafx.c: 13: AWU_LSICalibrationConfig(LSIMeasurment());
      0080A7 CD 80 B9         [ 4]   51 	call	_LSIMeasurment
      0080AA 89               [ 2]   52 	pushw	x
      0080AB 90 89            [ 2]   53 	pushw	y
      0080AD CD 81 5A         [ 4]   54 	call	_AWU_LSICalibrationConfig
      0080B0 5B 04            [ 2]   55 	addw	sp, #4
                                     56 ;	src\stdafx.c: 16: AWU_Init(AWU_TIMEBASE_30S);
      0080B2 4B 10            [ 1]   57 	push	#0x10
      0080B4 CD 80 FB         [ 4]   58 	call	_AWU_Init
      0080B7 84               [ 1]   59 	pop	a
      0080B8 81               [ 4]   60 	ret
                                     61 ;	src\stdafx.c: 20: uint32_t LSIMeasurment(void){
                                     62 ;	-----------------------------------------
                                     63 ;	 function LSIMeasurment
                                     64 ;	-----------------------------------------
      0080B9                         65 _LSIMeasurment:
      0080B9 52 08            [ 2]   66 	sub	sp, #8
                                     67 ;	src\stdafx.c: 27: fmaster = CLK_GetClockFreq();
      0080BB CD 84 A1         [ 4]   68 	call	_CLK_GetClockFreq
      0080BE 1F 03            [ 2]   69 	ldw	(0x03, sp), x
                                     70 ;	src\stdafx.c: 30: AWU->CSR |= AWU_CSR_MSR;
      0080C0 72 10 50 F0      [ 1]   71 	bset	0x50f0, #0
                                     72 ;	src\stdafx.c: 32: lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
      0080C4 1E 03            [ 2]   73 	ldw	x, (0x03, sp)
      0080C6 A6 03            [ 1]   74 	ld	a, #0x03
      0080C8 4D               [ 1]   75 	tnz	a
      0080C9 27 06            [ 1]   76 	jreq	00104$
      0080CB                         77 00103$:
      0080CB 58               [ 2]   78 	sllw	x
      0080CC 90 59            [ 2]   79 	rlcw	y
      0080CE 4A               [ 1]   80 	dec	a
      0080CF 26 FA            [ 1]   81 	jrne	00103$
      0080D1                         82 00104$:
      0080D1 4B 00            [ 1]   83 	push	#0x00
      0080D3 4B 00            [ 1]   84 	push	#0x00
      0080D5 4B 00            [ 1]   85 	push	#0x00
      0080D7 4B 00            [ 1]   86 	push	#0x00
      0080D9 89               [ 2]   87 	pushw	x
      0080DA 90 89            [ 2]   88 	pushw	y
      0080DC CD 86 D1         [ 4]   89 	call	__divulong
      0080DF 5B 08            [ 2]   90 	addw	sp, #8
      0080E1 1F 07            [ 2]   91 	ldw	(0x07, sp), x
                                     92 ;	src\stdafx.c: 35: AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);
      0080E3 72 11 50 F0      [ 1]   93 	bres	0x50f0, #0
                                     94 ;	src\stdafx.c: 36: return (lsi_freq_hz);
      0080E7 1E 07            [ 2]   95 	ldw	x, (0x07, sp)
      0080E9 5B 08            [ 2]   96 	addw	sp, #8
      0080EB 81               [ 4]   97 	ret
                                     98 	.area CODE
                                     99 	.area INITIALIZER
                                    100 	.area CABS (ABS)

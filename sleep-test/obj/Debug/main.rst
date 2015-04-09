                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 09 17:30:57 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _AWU_Config
                                     14 	.globl _CLK_HSIPrescalerConfig
                                     15 	.globl _GPIO_WriteLow
                                     16 	.globl _GPIO_WriteHigh
                                     17 	.globl _GPIO_Init
                                     18 	.globl _GPIO_DeInit
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area DATA
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area INITIALIZED
                                     27 ;--------------------------------------------------------
                                     28 ; Stack segment in internal ram 
                                     29 ;--------------------------------------------------------
                                     30 	.area	SSEG
      000000                         31 __start__stack:
      000000                         32 	.ds	1
                                     33 
                                     34 ;--------------------------------------------------------
                                     35 ; absolute external ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DABS (ABS)
                                     38 ;--------------------------------------------------------
                                     39 ; interrupt vector 
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
      008000                         42 __interrupt_vect:
      008000 82 00 80 83             43 	int s_GSINIT ;reset
      008004 82 00 00 00             44 	int 0x0000 ;trap
      008008 82 00 00 00             45 	int 0x0000 ;int0
      00800C 82 00 00 00             46 	int 0x0000 ;int1
      008010 82 00 00 00             47 	int 0x0000 ;int2
      008014 82 00 00 00             48 	int 0x0000 ;int3
      008018 82 00 00 00             49 	int 0x0000 ;int4
      00801C 82 00 00 00             50 	int 0x0000 ;int5
      008020 82 00 00 00             51 	int 0x0000 ;int6
      008024 82 00 00 00             52 	int 0x0000 ;int7
      008028 82 00 00 00             53 	int 0x0000 ;int8
      00802C 82 00 00 00             54 	int 0x0000 ;int9
      008030 82 00 00 00             55 	int 0x0000 ;int10
      008034 82 00 00 00             56 	int 0x0000 ;int11
      008038 82 00 00 00             57 	int 0x0000 ;int12
      00803C 82 00 00 00             58 	int 0x0000 ;int13
      008040 82 00 00 00             59 	int 0x0000 ;int14
      008044 82 00 00 00             60 	int 0x0000 ;int15
      008048 82 00 00 00             61 	int 0x0000 ;int16
      00804C 82 00 00 00             62 	int 0x0000 ;int17
      008050 82 00 00 00             63 	int 0x0000 ;int18
      008054 82 00 00 00             64 	int 0x0000 ;int19
      008058 82 00 00 00             65 	int 0x0000 ;int20
      00805C 82 00 00 00             66 	int 0x0000 ;int21
      008060 82 00 00 00             67 	int 0x0000 ;int22
      008064 82 00 00 00             68 	int 0x0000 ;int23
      008068 82 00 00 00             69 	int 0x0000 ;int24
      00806C 82 00 00 00             70 	int 0x0000 ;int25
      008070 82 00 00 00             71 	int 0x0000 ;int26
      008074 82 00 00 00             72 	int 0x0000 ;int27
      008078 82 00 00 00             73 	int 0x0000 ;int28
      00807C 82 00 00 00             74 	int 0x0000 ;int29
                                     75 ;--------------------------------------------------------
                                     76 ; global & static initialisations
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
                                     79 	.area GSINIT
                                     80 	.area GSFINAL
                                     81 	.area GSINIT
      008083                         82 __sdcc_gs_init_startup:
      008083                         83 __sdcc_init_data:
                                     84 ; stm8_genXINIT() start
      008083 AE 00 00         [ 2]   85 	ldw x, #l_DATA
      008086 27 07            [ 1]   86 	jreq	00002$
      008088                         87 00001$:
      008088 72 4F 00 00      [ 1]   88 	clr (s_DATA - 1, x)
      00808C 5A               [ 2]   89 	decw x
      00808D 26 F9            [ 1]   90 	jrne	00001$
      00808F                         91 00002$:
      00808F AE 00 00         [ 2]   92 	ldw	x, #l_INITIALIZER
      008092 27 09            [ 1]   93 	jreq	00004$
      008094                         94 00003$:
      008094 D6 8C CA         [ 1]   95 	ld	a, (s_INITIALIZER - 1, x)
      008097 D7 00 00         [ 1]   96 	ld	(s_INITIALIZED - 1, x), a
      00809A 5A               [ 2]   97 	decw	x
      00809B 26 F7            [ 1]   98 	jrne	00003$
      00809D                         99 00004$:
                                    100 ; stm8_genXINIT() end
                                    101 	.area GSFINAL
      00809D CC 80 80         [ 2]  102 	jp	__sdcc_program_startup
                                    103 ;--------------------------------------------------------
                                    104 ; Home
                                    105 ;--------------------------------------------------------
                                    106 	.area HOME
                                    107 	.area HOME
      008080                        108 __sdcc_program_startup:
      008080 CC 80 A0         [ 2]  109 	jp	_main
                                    110 ;	return from main will return to caller
                                    111 ;--------------------------------------------------------
                                    112 ; code
                                    113 ;--------------------------------------------------------
                                    114 	.area CODE
                                    115 ;	main.c: 6: int main( void ){
                                    116 ;	-----------------------------------------
                                    117 ;	 function main
                                    118 ;	-----------------------------------------
      0080A0                        119 _main:
                                    120 ;	main.c: 10: GPIO_DeInit(GPIOD);
      0080A0 4B 0F            [ 1]  121 	push	#0x0f
      0080A2 4B 50            [ 1]  122 	push	#0x50
      0080A4 CD 86 47         [ 4]  123 	call	_GPIO_DeInit
      0080A7 5B 02            [ 2]  124 	addw	sp, #2
                                    125 ;	main.c: 16: AWU_Config();
      0080A9 CD 80 E2         [ 4]  126 	call	_AWU_Config
                                    127 ;	main.c: 18: GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
      0080AC 4B E0            [ 1]  128 	push	#0xe0
      0080AE 4B 01            [ 1]  129 	push	#0x01
      0080B0 4B 0F            [ 1]  130 	push	#0x0f
      0080B2 4B 50            [ 1]  131 	push	#0x50
      0080B4 CD 86 5A         [ 4]  132 	call	_GPIO_Init
      0080B7 5B 04            [ 2]  133 	addw	sp, #4
                                    134 ;	main.c: 20: while( 1 ){
      0080B9                        135 00103$:
                                    136 ;	main.c: 22: GPIO_WriteLow(GPIOD, GPIO_PIN_0);
      0080B9 4B 01            [ 1]  137 	push	#0x01
      0080BB 4B 0F            [ 1]  138 	push	#0x0f
      0080BD 4B 50            [ 1]  139 	push	#0x50
      0080BF CD 86 E7         [ 4]  140 	call	_GPIO_WriteLow
      0080C2 5B 03            [ 2]  141 	addw	sp, #3
                                    142 ;	main.c: 24: for(i=0;i<10000;i++) // A delay loop
      0080C4 AE 27 10         [ 2]  143 	ldw	x, #0x2710
      0080C7                        144 00107$:
                                    145 ;	main.c: 26: nop();
      0080C7 9D               [ 1]  146 	nop
      0080C8 5A               [ 2]  147 	decw	x
                                    148 ;	main.c: 24: for(i=0;i<10000;i++) // A delay loop
      0080C9 5D               [ 2]  149 	tnzw	x
      0080CA 26 FB            [ 1]  150 	jrne	00107$
                                    151 ;	main.c: 28: GPIO_WriteHigh(GPIOD, GPIO_PIN_0);
      0080CC 4B 01            [ 1]  152 	push	#0x01
      0080CE 4B 0F            [ 1]  153 	push	#0x0f
      0080D0 4B 50            [ 1]  154 	push	#0x50
      0080D2 CD 86 E0         [ 4]  155 	call	_GPIO_WriteHigh
      0080D5 5B 03            [ 2]  156 	addw	sp, #3
                                    157 ;	main.c: 30: halt();/* Program halted */
      0080D7 8E               [10]  158 	halt
      0080D8 20 DF            [ 2]  159 	jra	00103$
      0080DA 81               [ 4]  160 	ret
                                    161 ;	main.c: 35: static void CLK_Config(void){
                                    162 ;	-----------------------------------------
                                    163 ;	 function CLK_Config
                                    164 ;	-----------------------------------------
      0080DB                        165 _CLK_Config:
                                    166 ;	main.c: 37: CLK_HSIPrescalerConfig(CLK_PRESCALER_CPUDIV128);
      0080DB 4B 87            [ 1]  167 	push	#0x87
      0080DD CD 84 7F         [ 4]  168 	call	_CLK_HSIPrescalerConfig
      0080E0 84               [ 1]  169 	pop	a
      0080E1 81               [ 4]  170 	ret
                                    171 	.area CODE
                                    172 	.area INITIALIZER
                                    173 	.area CABS (ABS)

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 09 12:28:39 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _GPIO_WriteReverse
                                     14 	.globl _GPIO_Init
                                     15 	.globl _GPIO_DeInit
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; Stack segment in internal ram 
                                     26 ;--------------------------------------------------------
                                     27 	.area	SSEG
      000000                         28 __start__stack:
      000000                         29 	.ds	1
                                     30 
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 ;--------------------------------------------------------
                                     36 ; interrupt vector 
                                     37 ;--------------------------------------------------------
                                     38 	.area HOME
      008000                         39 __interrupt_vect:
      008000 82 00 80 83             40 	int s_GSINIT ;reset
      008004 82 00 00 00             41 	int 0x0000 ;trap
      008008 82 00 00 00             42 	int 0x0000 ;int0
      00800C 82 00 00 00             43 	int 0x0000 ;int1
      008010 82 00 00 00             44 	int 0x0000 ;int2
      008014 82 00 00 00             45 	int 0x0000 ;int3
      008018 82 00 00 00             46 	int 0x0000 ;int4
      00801C 82 00 00 00             47 	int 0x0000 ;int5
      008020 82 00 00 00             48 	int 0x0000 ;int6
      008024 82 00 00 00             49 	int 0x0000 ;int7
      008028 82 00 00 00             50 	int 0x0000 ;int8
      00802C 82 00 00 00             51 	int 0x0000 ;int9
      008030 82 00 00 00             52 	int 0x0000 ;int10
      008034 82 00 00 00             53 	int 0x0000 ;int11
      008038 82 00 00 00             54 	int 0x0000 ;int12
      00803C 82 00 00 00             55 	int 0x0000 ;int13
      008040 82 00 00 00             56 	int 0x0000 ;int14
      008044 82 00 00 00             57 	int 0x0000 ;int15
      008048 82 00 00 00             58 	int 0x0000 ;int16
      00804C 82 00 00 00             59 	int 0x0000 ;int17
      008050 82 00 00 00             60 	int 0x0000 ;int18
      008054 82 00 00 00             61 	int 0x0000 ;int19
      008058 82 00 00 00             62 	int 0x0000 ;int20
      00805C 82 00 00 00             63 	int 0x0000 ;int21
      008060 82 00 00 00             64 	int 0x0000 ;int22
      008064 82 00 00 00             65 	int 0x0000 ;int23
      008068 82 00 00 00             66 	int 0x0000 ;int24
      00806C 82 00 00 00             67 	int 0x0000 ;int25
      008070 82 00 00 00             68 	int 0x0000 ;int26
      008074 82 00 00 00             69 	int 0x0000 ;int27
      008078 82 00 00 00             70 	int 0x0000 ;int28
      00807C 82 00 00 00             71 	int 0x0000 ;int29
                                     72 ;--------------------------------------------------------
                                     73 ; global & static initialisations
                                     74 ;--------------------------------------------------------
                                     75 	.area HOME
                                     76 	.area GSINIT
                                     77 	.area GSFINAL
                                     78 	.area GSINIT
      008083                         79 __sdcc_gs_init_startup:
      008083                         80 __sdcc_init_data:
                                     81 ; stm8_genXINIT() start
      008083 AE 00 00         [ 2]   82 	ldw x, #l_DATA
      008086 27 07            [ 1]   83 	jreq	00002$
      008088                         84 00001$:
      008088 72 4F 00 00      [ 1]   85 	clr (s_DATA - 1, x)
      00808C 5A               [ 2]   86 	decw x
      00808D 26 F9            [ 1]   87 	jrne	00001$
      00808F                         88 00002$:
      00808F AE 00 00         [ 2]   89 	ldw	x, #l_INITIALIZER
      008092 27 09            [ 1]   90 	jreq	00004$
      008094                         91 00003$:
      008094 D6 81 AB         [ 1]   92 	ld	a, (s_INITIALIZER - 1, x)
      008097 D7 00 00         [ 1]   93 	ld	(s_INITIALIZED - 1, x), a
      00809A 5A               [ 2]   94 	decw	x
      00809B 26 F7            [ 1]   95 	jrne	00003$
      00809D                         96 00004$:
                                     97 ; stm8_genXINIT() end
                                     98 	.area GSFINAL
      00809D CC 80 80         [ 2]   99 	jp	__sdcc_program_startup
                                    100 ;--------------------------------------------------------
                                    101 ; Home
                                    102 ;--------------------------------------------------------
                                    103 	.area HOME
                                    104 	.area HOME
      008080                        105 __sdcc_program_startup:
      008080 CC 80 A0         [ 2]  106 	jp	_main
                                    107 ;	return from main will return to caller
                                    108 ;--------------------------------------------------------
                                    109 ; code
                                    110 ;--------------------------------------------------------
                                    111 	.area CODE
                                    112 ;	src\main.c: 5: int main( void ){
                                    113 ;	-----------------------------------------
                                    114 ;	 function main
                                    115 ;	-----------------------------------------
      0080A0                        116 _main:
                                    117 ;	src\main.c: 8: GPIO_DeInit(GPIOD);
      0080A0 4B 0F            [ 1]  118 	push	#0x0f
      0080A2 4B 50            [ 1]  119 	push	#0x50
      0080A4 CD 80 CC         [ 4]  120 	call	_GPIO_DeInit
      0080A7 5B 02            [ 2]  121 	addw	sp, #2
                                    122 ;	src\main.c: 12: GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
      0080A9 4B E0            [ 1]  123 	push	#0xe0
      0080AB 4B 01            [ 1]  124 	push	#0x01
      0080AD 4B 0F            [ 1]  125 	push	#0x0f
      0080AF 4B 50            [ 1]  126 	push	#0x50
      0080B1 CD 80 DF         [ 4]  127 	call	_GPIO_Init
      0080B4 5B 04            [ 2]  128 	addw	sp, #4
                                    129 ;	src\main.c: 17: for(i=0;i<20000;i++) // A delay loop
      0080B6                        130 00110$:
      0080B6 AE 4E 20         [ 2]  131 	ldw	x, #0x4e20
      0080B9                        132 00107$:
                                    133 ;	src\main.c: 19: nop();
      0080B9 9D               [ 1]  134 	nop
      0080BA 5A               [ 2]  135 	decw	x
                                    136 ;	src\main.c: 17: for(i=0;i<20000;i++) // A delay loop
      0080BB 5D               [ 2]  137 	tnzw	x
      0080BC 26 FB            [ 1]  138 	jrne	00107$
                                    139 ;	src\main.c: 21: GPIO_WriteReverse(GPIOD, GPIO_PIN_0);
      0080BE 4B 01            [ 1]  140 	push	#0x01
      0080C0 4B 0F            [ 1]  141 	push	#0x0f
      0080C2 4B 50            [ 1]  142 	push	#0x50
      0080C4 CD 81 7A         [ 4]  143 	call	_GPIO_WriteReverse
      0080C7 5B 03            [ 2]  144 	addw	sp, #3
      0080C9 20 EB            [ 2]  145 	jra	00110$
                           00002B   146 	C$main.c$23$1$12 ==.
                           00002B   147 	XG$main$0$0 ==.
      0080CB 81               [ 4]  148 	ret
                                    149 	.area CODE
                                    150 	.area INITIALIZER
                                    151 	.area CABS (ABS)

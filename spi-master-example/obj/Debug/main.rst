                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Fri Apr 10 13:48:28 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _spi_write_data_8t
                                     14 	.globl _init_spi
                                     15 	.globl _SPI_DeInit
                                     16 	.globl _GPIO_WriteReverse
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
      008094 D6 88 14         [ 1]   95 	ld	a, (s_INITIALIZER - 1, x)
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
                                    115 ;	main.c: 4: int main( void ){
                                    116 ;	-----------------------------------------
                                    117 ;	 function main
                                    118 ;	-----------------------------------------
      0080A0                        119 _main:
                                    120 ;	main.c: 8: GPIO_DeInit(GPIOD);
      0080A0 4B 0F            [ 1]  121 	push	#0x0f
      0080A2 4B 50            [ 1]  122 	push	#0x50
      0080A4 CD 85 0D         [ 4]  123 	call	_GPIO_DeInit
      0080A7 5B 02            [ 2]  124 	addw	sp, #2
                                    125 ;	main.c: 9: SPI_DeInit();
      0080A9 CD 85 ED         [ 4]  126 	call	_SPI_DeInit
                                    127 ;	main.c: 11: GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
      0080AC 4B E0            [ 1]  128 	push	#0xe0
      0080AE 4B 01            [ 1]  129 	push	#0x01
      0080B0 4B 0F            [ 1]  130 	push	#0x0f
      0080B2 4B 50            [ 1]  131 	push	#0x50
      0080B4 CD 85 20         [ 4]  132 	call	_GPIO_Init
      0080B7 5B 04            [ 2]  133 	addw	sp, #4
                                    134 ;	main.c: 12: init_spi();
      0080B9 CD 80 EB         [ 4]  135 	call	_init_spi
                                    136 ;	main.c: 17: for(i=0;i<15000;i++) // A delay loop
      0080BC                        137 00110$:
      0080BC AE 3A 98         [ 2]  138 	ldw	x, #0x3a98
      0080BF                        139 00107$:
                                    140 ;	main.c: 19: nop();
      0080BF 9D               [ 1]  141 	nop
      0080C0 5A               [ 2]  142 	decw	x
                                    143 ;	main.c: 17: for(i=0;i<15000;i++) // A delay loop
      0080C1 5D               [ 2]  144 	tnzw	x
      0080C2 26 FB            [ 1]  145 	jrne	00107$
                                    146 ;	main.c: 21: GPIO_WriteReverse(GPIOD, GPIO_PIN_0);
      0080C4 4B 01            [ 1]  147 	push	#0x01
      0080C6 4B 0F            [ 1]  148 	push	#0x0f
      0080C8 4B 50            [ 1]  149 	push	#0x50
      0080CA CD 85 BB         [ 4]  150 	call	_GPIO_WriteReverse
      0080CD 5B 03            [ 2]  151 	addw	sp, #3
                                    152 ;	main.c: 22: spi_write_data_8t("keep going...", 0x40);//Random Address 0x40 for now.
      0080CF AE 80 DD         [ 2]  153 	ldw	x, #___str_0+0
      0080D2 4B 40            [ 1]  154 	push	#0x40
      0080D4 89               [ 2]  155 	pushw	x
      0080D5 CD 81 2A         [ 4]  156 	call	_spi_write_data_8t
      0080D8 5B 03            [ 2]  157 	addw	sp, #3
      0080DA 20 E0            [ 2]  158 	jra	00110$
      0080DC 81               [ 4]  159 	ret
                                    160 	.area CODE
      0080DD                        161 ___str_0:
      0080DD 6B 65 65 70 20 67 6F   162 	.ascii "keep going..."
             69 6E 67 2E 2E 2E
      0080EA 00                     163 	.db 0x00
                                    164 	.area INITIALIZER
                                    165 	.area CABS (ABS)

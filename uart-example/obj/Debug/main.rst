                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Fri Apr 03 17:44:38 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _UART2_SendData8
                                     14 	.globl _UART2_Init
                                     15 	.globl _UART2_DeInit
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
      008094 D6 8C CB         [ 1]   95 	ld	a, (s_INITIALIZER - 1, x)
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
                                    115 ;	main.c: 10: int main( void ){
                                    116 ;	-----------------------------------------
                                    117 ;	 function main
                                    118 ;	-----------------------------------------
      0080A0                        119 _main:
                                    120 ;	main.c: 15: GPIO_DeInit(GPIOD);
      0080A0 4B 0F            [ 1]  121 	push	#0x0f
      0080A2 4B 50            [ 1]  122 	push	#0x50
      0080A4 CD 84 A4         [ 4]  123 	call	_GPIO_DeInit
      0080A7 5B 02            [ 2]  124 	addw	sp, #2
                                    125 ;	main.c: 25: UART_Config();
      0080A9 CD 80 D5         [ 4]  126 	call	_UART_Config
                                    127 ;	main.c: 27: GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
      0080AC 4B E0            [ 1]  128 	push	#0xe0
      0080AE 4B 01            [ 1]  129 	push	#0x01
      0080B0 4B 0F            [ 1]  130 	push	#0x0f
      0080B2 4B 50            [ 1]  131 	push	#0x50
      0080B4 CD 84 B7         [ 4]  132 	call	_GPIO_Init
      0080B7 5B 04            [ 2]  133 	addw	sp, #4
                                    134 ;	main.c: 30: for(i=0;i<20000;i++) // A delay loop
      0080B9                        135 00110$:
      0080B9 AE 4E 20         [ 2]  136 	ldw	x, #0x4e20
      0080BC                        137 00107$:
                                    138 ;	main.c: 32: nop();
      0080BC 9D               [ 1]  139 	nop
      0080BD 5A               [ 2]  140 	decw	x
                                    141 ;	main.c: 30: for(i=0;i<20000;i++) // A delay loop
      0080BE 5D               [ 2]  142 	tnzw	x
      0080BF 26 FB            [ 1]  143 	jrne	00107$
                                    144 ;	main.c: 36: GPIO_WriteReverse(GPIOD, GPIO_PIN_0);
      0080C1 4B 01            [ 1]  145 	push	#0x01
      0080C3 4B 0F            [ 1]  146 	push	#0x0f
      0080C5 4B 50            [ 1]  147 	push	#0x50
      0080C7 CD 85 52         [ 4]  148 	call	_GPIO_WriteReverse
      0080CA 5B 03            [ 2]  149 	addw	sp, #3
                                    150 ;	main.c: 39: UART2_SendData8((uint8_t)'A');
      0080CC 4B 41            [ 1]  151 	push	#0x41
      0080CE CD 89 0A         [ 4]  152 	call	_UART2_SendData8
      0080D1 84               [ 1]  153 	pop	a
      0080D2 20 E5            [ 2]  154 	jra	00110$
      0080D4 81               [ 4]  155 	ret
                                    156 ;	main.c: 45: static void UART_Config(void){
                                    157 ;	-----------------------------------------
                                    158 ;	 function UART_Config
                                    159 ;	-----------------------------------------
      0080D5                        160 _UART_Config:
                                    161 ;	main.c: 47: UART2_DeInit();
      0080D5 CD 85 84         [ 4]  162 	call	_UART2_DeInit
                                    163 ;	main.c: 48: UART2_Init((uint32_t)9600, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO, UART2_SYNCMODE_CLOCK_DISABLE, UART2_MODE_TXRX_ENABLE );
      0080D8 4B 0C            [ 1]  164 	push	#0x0c
      0080DA 4B 80            [ 1]  165 	push	#0x80
      0080DC 4B 00            [ 1]  166 	push	#0x00
      0080DE 4B 00            [ 1]  167 	push	#0x00
      0080E0 4B 00            [ 1]  168 	push	#0x00
      0080E2 4B 80            [ 1]  169 	push	#0x80
      0080E4 4B 25            [ 1]  170 	push	#0x25
      0080E6 5F               [ 1]  171 	clrw	x
      0080E7 89               [ 2]  172 	pushw	x
      0080E8 CD 85 AD         [ 4]  173 	call	_UART2_Init
      0080EB 5B 09            [ 2]  174 	addw	sp, #9
      0080ED 81               [ 4]  175 	ret
                                    176 	.area CODE
                                    177 	.area INITIALIZER
                                    178 	.area CABS (ABS)

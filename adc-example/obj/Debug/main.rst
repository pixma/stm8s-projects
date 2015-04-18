                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 16 19:30:44 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module main
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _ADC1_GetConversionValue
                                     14 	.globl _ADC1_StartConversion
                                     15 	.globl _ADC1_Init
                                     16 	.globl _ADC1_DeInit
                                     17 	.globl _UART2_SendData8
                                     18 	.globl _UART2_Init
                                     19 	.globl _UART2_DeInit
                                     20 	.globl _GPIO_WriteReverse
                                     21 	.globl _GPIO_Init
                                     22 	.globl _GPIO_DeInit
                                     23 ;--------------------------------------------------------
                                     24 ; ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DATA
                                     27 ;--------------------------------------------------------
                                     28 ; ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area INITIALIZED
                                     31 ;--------------------------------------------------------
                                     32 ; Stack segment in internal ram 
                                     33 ;--------------------------------------------------------
                                     34 	.area	SSEG
      000000                         35 __start__stack:
      000000                         36 	.ds	1
                                     37 
                                     38 ;--------------------------------------------------------
                                     39 ; absolute external ram data
                                     40 ;--------------------------------------------------------
                                     41 	.area DABS (ABS)
                                     42 ;--------------------------------------------------------
                                     43 ; interrupt vector 
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
      008000                         46 __interrupt_vect:
      008000 82 00 80 83             47 	int s_GSINIT ;reset
      008004 82 00 00 00             48 	int 0x0000 ;trap
      008008 82 00 00 00             49 	int 0x0000 ;int0
      00800C 82 00 00 00             50 	int 0x0000 ;int1
      008010 82 00 00 00             51 	int 0x0000 ;int2
      008014 82 00 00 00             52 	int 0x0000 ;int3
      008018 82 00 00 00             53 	int 0x0000 ;int4
      00801C 82 00 00 00             54 	int 0x0000 ;int5
      008020 82 00 00 00             55 	int 0x0000 ;int6
      008024 82 00 00 00             56 	int 0x0000 ;int7
      008028 82 00 00 00             57 	int 0x0000 ;int8
      00802C 82 00 00 00             58 	int 0x0000 ;int9
      008030 82 00 00 00             59 	int 0x0000 ;int10
      008034 82 00 00 00             60 	int 0x0000 ;int11
      008038 82 00 00 00             61 	int 0x0000 ;int12
      00803C 82 00 00 00             62 	int 0x0000 ;int13
      008040 82 00 00 00             63 	int 0x0000 ;int14
      008044 82 00 00 00             64 	int 0x0000 ;int15
      008048 82 00 00 00             65 	int 0x0000 ;int16
      00804C 82 00 00 00             66 	int 0x0000 ;int17
      008050 82 00 00 00             67 	int 0x0000 ;int18
      008054 82 00 00 00             68 	int 0x0000 ;int19
      008058 82 00 00 00             69 	int 0x0000 ;int20
      00805C 82 00 00 00             70 	int 0x0000 ;int21
      008060 82 00 00 00             71 	int 0x0000 ;int22
      008064 82 00 00 00             72 	int 0x0000 ;int23
      008068 82 00 00 00             73 	int 0x0000 ;int24
      00806C 82 00 00 00             74 	int 0x0000 ;int25
      008070 82 00 00 00             75 	int 0x0000 ;int26
      008074 82 00 00 00             76 	int 0x0000 ;int27
      008078 82 00 00 00             77 	int 0x0000 ;int28
      00807C 82 00 00 00             78 	int 0x0000 ;int29
                                     79 ;--------------------------------------------------------
                                     80 ; global & static initialisations
                                     81 ;--------------------------------------------------------
                                     82 	.area HOME
                                     83 	.area GSINIT
                                     84 	.area GSFINAL
                                     85 	.area GSINIT
      008083                         86 __sdcc_gs_init_startup:
      008083                         87 __sdcc_init_data:
                                     88 ; stm8_genXINIT() start
      008083 AE 00 00         [ 2]   89 	ldw x, #l_DATA
      008086 27 07            [ 1]   90 	jreq	00002$
      008088                         91 00001$:
      008088 72 4F 00 00      [ 1]   92 	clr (s_DATA - 1, x)
      00808C 5A               [ 2]   93 	decw x
      00808D 26 F9            [ 1]   94 	jrne	00001$
      00808F                         95 00002$:
      00808F AE 00 00         [ 2]   96 	ldw	x, #l_INITIALIZER
      008092 27 09            [ 1]   97 	jreq	00004$
      008094                         98 00003$:
      008094 D6 92 AE         [ 1]   99 	ld	a, (s_INITIALIZER - 1, x)
      008097 D7 00 00         [ 1]  100 	ld	(s_INITIALIZED - 1, x), a
      00809A 5A               [ 2]  101 	decw	x
      00809B 26 F7            [ 1]  102 	jrne	00003$
      00809D                        103 00004$:
                                    104 ; stm8_genXINIT() end
                                    105 	.area GSFINAL
      00809D CC 80 80         [ 2]  106 	jp	__sdcc_program_startup
                                    107 ;--------------------------------------------------------
                                    108 ; Home
                                    109 ;--------------------------------------------------------
                                    110 	.area HOME
                                    111 	.area HOME
      008080                        112 __sdcc_program_startup:
      008080 CC 80 A0         [ 2]  113 	jp	_main
                                    114 ;	return from main will return to caller
                                    115 ;--------------------------------------------------------
                                    116 ; code
                                    117 ;--------------------------------------------------------
                                    118 	.area CODE
                                    119 ;	main.c: 11: int main( void ){
                                    120 ;	-----------------------------------------
                                    121 ;	 function main
                                    122 ;	-----------------------------------------
      0080A0                        123 _main:
      0080A0 52 20            [ 2]  124 	sub	sp, #32
                                    125 ;	main.c: 18: uint16_t nAdc_Buffer[10] = {0,0,0,0,0,0,0,0,0,0};
      0080A2 96               [ 1]  126 	ldw	x, sp
      0080A3 1C 00 03         [ 2]  127 	addw	x, #3
      0080A6 1F 1F            [ 2]  128 	ldw	(0x1f, sp), x
      0080A8 1E 1F            [ 2]  129 	ldw	x, (0x1f, sp)
      0080AA 6F 01            [ 1]  130 	clr	(0x1, x)
      0080AC 7F               [ 1]  131 	clr	(x)
      0080AD 1E 1F            [ 2]  132 	ldw	x, (0x1f, sp)
      0080AF 5C               [ 2]  133 	incw	x
      0080B0 5C               [ 2]  134 	incw	x
      0080B1 6F 01            [ 1]  135 	clr	(0x1, x)
      0080B3 7F               [ 1]  136 	clr	(x)
      0080B4 1E 1F            [ 2]  137 	ldw	x, (0x1f, sp)
      0080B6 1C 00 04         [ 2]  138 	addw	x, #0x0004
      0080B9 6F 01            [ 1]  139 	clr	(0x1, x)
      0080BB 7F               [ 1]  140 	clr	(x)
      0080BC 1E 1F            [ 2]  141 	ldw	x, (0x1f, sp)
      0080BE 1C 00 06         [ 2]  142 	addw	x, #0x0006
      0080C1 6F 01            [ 1]  143 	clr	(0x1, x)
      0080C3 7F               [ 1]  144 	clr	(x)
      0080C4 1E 1F            [ 2]  145 	ldw	x, (0x1f, sp)
      0080C6 1C 00 08         [ 2]  146 	addw	x, #0x0008
      0080C9 6F 01            [ 1]  147 	clr	(0x1, x)
      0080CB 7F               [ 1]  148 	clr	(x)
      0080CC 1E 1F            [ 2]  149 	ldw	x, (0x1f, sp)
      0080CE 1C 00 0A         [ 2]  150 	addw	x, #0x000a
      0080D1 6F 01            [ 1]  151 	clr	(0x1, x)
      0080D3 7F               [ 1]  152 	clr	(x)
      0080D4 1E 1F            [ 2]  153 	ldw	x, (0x1f, sp)
      0080D6 1C 00 0C         [ 2]  154 	addw	x, #0x000c
      0080D9 6F 01            [ 1]  155 	clr	(0x1, x)
      0080DB 7F               [ 1]  156 	clr	(x)
      0080DC 1E 1F            [ 2]  157 	ldw	x, (0x1f, sp)
      0080DE 1C 00 0E         [ 2]  158 	addw	x, #0x000e
      0080E1 6F 01            [ 1]  159 	clr	(0x1, x)
      0080E3 7F               [ 1]  160 	clr	(x)
      0080E4 1E 1F            [ 2]  161 	ldw	x, (0x1f, sp)
      0080E6 1C 00 10         [ 2]  162 	addw	x, #0x0010
      0080E9 6F 01            [ 1]  163 	clr	(0x1, x)
      0080EB 7F               [ 1]  164 	clr	(x)
      0080EC 1E 1F            [ 2]  165 	ldw	x, (0x1f, sp)
      0080EE 1C 00 12         [ 2]  166 	addw	x, #0x0012
      0080F1 6F 01            [ 1]  167 	clr	(0x1, x)
      0080F3 7F               [ 1]  168 	clr	(x)
                                    169 ;	main.c: 19: uint16_t nAdc_Hold = 0;
      0080F4 5F               [ 1]  170 	clrw	x
      0080F5 1F 01            [ 2]  171 	ldw	(0x01, sp), x
                                    172 ;	main.c: 22: GPIO_DeInit(GPIOD);
      0080F7 4B 0F            [ 1]  173 	push	#0x0f
      0080F9 4B 50            [ 1]  174 	push	#0x50
      0080FB CD 8A 87         [ 4]  175 	call	_GPIO_DeInit
      0080FE 5B 02            [ 2]  176 	addw	sp, #2
                                    177 ;	main.c: 32: UART_Config();
      008100 CD 81 7E         [ 4]  178 	call	_UART_Config
                                    179 ;	main.c: 35: ADC_Config();
      008103 CD 81 97         [ 4]  180 	call	_ADC_Config
                                    181 ;	main.c: 37: ADC1_StartConversion();
      008106 CD 83 91         [ 4]  182 	call	_ADC1_StartConversion
                                    183 ;	main.c: 39: GPIO_Init(GPIOD, GPIO_PIN_0, GPIO_MODE_OUT_PP_LOW_FAST);
      008109 4B E0            [ 1]  184 	push	#0xe0
      00810B 4B 01            [ 1]  185 	push	#0x01
      00810D 4B 0F            [ 1]  186 	push	#0x0f
      00810F 4B 50            [ 1]  187 	push	#0x50
      008111 CD 8A 9A         [ 4]  188 	call	_GPIO_Init
      008114 5B 04            [ 2]  189 	addw	sp, #4
                                    190 ;	main.c: 42: for(i=0;i<20000;i++) // A delay loop
      008116                        191 00116$:
      008116 AE 4E 20         [ 2]  192 	ldw	x, #0x4e20
      008119                        193 00109$:
                                    194 ;	main.c: 44: nop();
      008119 9D               [ 1]  195 	nop
      00811A 5A               [ 2]  196 	decw	x
                                    197 ;	main.c: 42: for(i=0;i<20000;i++) // A delay loop
      00811B 5D               [ 2]  198 	tnzw	x
      00811C 26 FB            [ 1]  199 	jrne	00109$
                                    200 ;	main.c: 48: GPIO_WriteReverse(GPIOD, GPIO_PIN_0);
      00811E 4B 01            [ 1]  201 	push	#0x01
      008120 4B 0F            [ 1]  202 	push	#0x0f
      008122 4B 50            [ 1]  203 	push	#0x50
      008124 CD 8B 35         [ 4]  204 	call	_GPIO_WriteReverse
      008127 5B 03            [ 2]  205 	addw	sp, #3
                                    206 ;	main.c: 50: for ( nCount = 0; nCount< 10; nCount++){
      008129 5F               [ 1]  207 	clrw	x
      00812A 1F 19            [ 2]  208 	ldw	(0x19, sp), x
      00812C                        209 00110$:
                                    210 ;	main.c: 51: nAdc_Buffer[nCount] = ADC1_GetConversionValue();
      00812C 1E 19            [ 2]  211 	ldw	x, (0x19, sp)
      00812E 58               [ 2]  212 	sllw	x
      00812F 1F 1D            [ 2]  213 	ldw	(0x1d, sp), x
      008131 1E 1F            [ 2]  214 	ldw	x, (0x1f, sp)
      008133 72 FB 1D         [ 2]  215 	addw	x, (0x1d, sp)
      008136 1F 1B            [ 2]  216 	ldw	(0x1b, sp), x
      008138 CD 83 96         [ 4]  217 	call	_ADC1_GetConversionValue
      00813B 16 1B            [ 2]  218 	ldw	y, (0x1b, sp)
      00813D 90 FF            [ 2]  219 	ldw	(y), x
                                    220 ;	main.c: 52: nAdc_Hold += nAdc_Buffer[nCount];
      00813F 72 FB 01         [ 2]  221 	addw	x, (0x01, sp)
      008142 1F 01            [ 2]  222 	ldw	(0x01, sp), x
                                    223 ;	main.c: 50: for ( nCount = 0; nCount< 10; nCount++){
      008144 1E 19            [ 2]  224 	ldw	x, (0x19, sp)
      008146 5C               [ 2]  225 	incw	x
      008147 1F 19            [ 2]  226 	ldw	(0x19, sp), x
      008149 1E 19            [ 2]  227 	ldw	x, (0x19, sp)
      00814B A3 00 0A         [ 2]  228 	cpw	x, #0x000a
      00814E 25 DC            [ 1]  229 	jrc	00110$
                                    230 ;	main.c: 54: nAdc_Buffer[0] = nAdc_Hold / 10;
      008150 1E 01            [ 2]  231 	ldw	x, (0x01, sp)
      008152 90 AE 00 0A      [ 2]  232 	ldw	y, #0x000a
      008156 65               [ 2]  233 	divw	x, y
      008157 16 1F            [ 2]  234 	ldw	y, (0x1f, sp)
      008159 90 FF            [ 2]  235 	ldw	(y), x
                                    236 ;	main.c: 55: adc_value = nAdc_Buffer[0];
      00815B 1F 17            [ 2]  237 	ldw	(0x17, sp), x
                                    238 ;	main.c: 59: for ( nCount = 0; nCount< 10; nCount++){
      00815D 90 5F            [ 1]  239 	clrw	y
      00815F                        240 00112$:
                                    241 ;	main.c: 60: nAdc_Buffer[nCount] = 0;
      00815F 93               [ 1]  242 	ldw	x, y
      008160 58               [ 2]  243 	sllw	x
      008161 72 FB 1F         [ 2]  244 	addw	x, (0x1f, sp)
      008164 6F 01            [ 1]  245 	clr	(0x1, x)
      008166 7F               [ 1]  246 	clr	(x)
                                    247 ;	main.c: 59: for ( nCount = 0; nCount< 10; nCount++){
      008167 90 5C            [ 2]  248 	incw	y
      008169 90 A3 00 0A      [ 2]  249 	cpw	y, #0x000a
      00816D 25 F0            [ 1]  250 	jrc	00112$
                                    251 ;	main.c: 62: nAdc_Hold = 0;
      00816F 5F               [ 1]  252 	clrw	x
      008170 1F 01            [ 2]  253 	ldw	(0x01, sp), x
                                    254 ;	main.c: 69: UART2_SendData8((uint8_t)adc_value);
      008172 7B 18            [ 1]  255 	ld	a, (0x18, sp)
      008174 88               [ 1]  256 	push	a
      008175 CD 8E ED         [ 4]  257 	call	_UART2_SendData8
      008178 84               [ 1]  258 	pop	a
      008179 20 9B            [ 2]  259 	jra	00116$
      00817B 5B 20            [ 2]  260 	addw	sp, #32
      00817D 81               [ 4]  261 	ret
                                    262 ;	main.c: 75: static void UART_Config(void){
                                    263 ;	-----------------------------------------
                                    264 ;	 function UART_Config
                                    265 ;	-----------------------------------------
      00817E                        266 _UART_Config:
                                    267 ;	main.c: 77: UART2_DeInit();
      00817E CD 8B 67         [ 4]  268 	call	_UART2_DeInit
                                    269 ;	main.c: 78: UART2_Init((uint32_t)9600, UART2_WORDLENGTH_8D, UART2_STOPBITS_1, UART2_PARITY_NO, UART2_SYNCMODE_CLOCK_DISABLE, UART2_MODE_TXRX_ENABLE );
      008181 4B 0C            [ 1]  270 	push	#0x0c
      008183 4B 80            [ 1]  271 	push	#0x80
      008185 4B 00            [ 1]  272 	push	#0x00
      008187 4B 00            [ 1]  273 	push	#0x00
      008189 4B 00            [ 1]  274 	push	#0x00
      00818B 4B 80            [ 1]  275 	push	#0x80
      00818D 4B 25            [ 1]  276 	push	#0x25
      00818F 5F               [ 1]  277 	clrw	x
      008190 89               [ 2]  278 	pushw	x
      008191 CD 8B 90         [ 4]  279 	call	_UART2_Init
      008194 5B 09            [ 2]  280 	addw	sp, #9
      008196 81               [ 4]  281 	ret
                                    282 ;	main.c: 81: static void ADC_Config( void ){
                                    283 ;	-----------------------------------------
                                    284 ;	 function ADC_Config
                                    285 ;	-----------------------------------------
      008197                        286 _ADC_Config:
                                    287 ;	main.c: 82: GPIO_Init(GPIOB, GPIO_PIN_0, GPIO_MODE_IN_FL_NO_IT );
      008197 4B 00            [ 1]  288 	push	#0x00
      008199 4B 01            [ 1]  289 	push	#0x01
      00819B 4B 05            [ 1]  290 	push	#0x05
      00819D 4B 50            [ 1]  291 	push	#0x50
      00819F CD 8A 9A         [ 4]  292 	call	_GPIO_Init
      0081A2 5B 04            [ 2]  293 	addw	sp, #4
                                    294 ;	main.c: 83: ADC1_DeInit();
      0081A4 CD 81 BD         [ 4]  295 	call	_ADC1_DeInit
                                    296 ;	main.c: 84: ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS, ADC1_CHANNEL_0, ADC1_PRESSEL_FCPU_D2, ADC1_EXTTRIG_TIM,DISABLE, ADC1_ALIGN_RIGHT, ADC1_SCHMITTTRIG_CHANNEL0, DISABLE );
      0081A7 4B 00            [ 1]  297 	push	#0x00
      0081A9 4B 00            [ 1]  298 	push	#0x00
      0081AB 4B 08            [ 1]  299 	push	#0x08
      0081AD 4B 00            [ 1]  300 	push	#0x00
      0081AF 4B 00            [ 1]  301 	push	#0x00
      0081B1 4B 00            [ 1]  302 	push	#0x00
      0081B3 4B 00            [ 1]  303 	push	#0x00
      0081B5 4B 01            [ 1]  304 	push	#0x01
      0081B7 CD 81 F2         [ 4]  305 	call	_ADC1_Init
      0081BA 5B 08            [ 2]  306 	addw	sp, #8
      0081BC 81               [ 4]  307 	ret
                                    308 	.area CODE
                                    309 	.area INITIALIZER
                                    310 	.area CABS (ABS)

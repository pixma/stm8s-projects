                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 16 17:18:45 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stm8s_gpio
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _GPIO_DeInit
                                     13 	.globl _GPIO_Init
                                     14 	.globl _GPIO_Write
                                     15 	.globl _GPIO_WriteHigh
                                     16 	.globl _GPIO_WriteLow
                                     17 	.globl _GPIO_WriteReverse
                                     18 	.globl _GPIO_ReadOutputData
                                     19 	.globl _GPIO_ReadInputData
                                     20 	.globl _GPIO_ReadInputPin
                                     21 	.globl _GPIO_ExternalPullUpConfig
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area DATA
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                                     30 ;--------------------------------------------------------
                                     31 ; absolute external ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DABS (ABS)
                                     34 ;--------------------------------------------------------
                                     35 ; global & static initialisations
                                     36 ;--------------------------------------------------------
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area GSINIT
                                     41 ;--------------------------------------------------------
                                     42 ; Home
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area HOME
                                     46 ;--------------------------------------------------------
                                     47 ; code
                                     48 ;--------------------------------------------------------
                                     49 	.area CODE
                                     50 ;	stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     51 ;	-----------------------------------------
                                     52 ;	 function GPIO_DeInit
                                     53 ;	-----------------------------------------
      008A87                         54 _GPIO_DeInit:
                                     55 ;	stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      008A87 16 03            [ 2]   56 	ldw	y, (0x03, sp)
      008A89 90 7F            [ 1]   57 	clr	(y)
                                     58 ;	stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      008A8B 93               [ 1]   59 	ldw	x, y
      008A8C 5C               [ 2]   60 	incw	x
      008A8D 5C               [ 2]   61 	incw	x
      008A8E 7F               [ 1]   62 	clr	(x)
                                     63 ;	stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      008A8F 93               [ 1]   64 	ldw	x, y
      008A90 1C 00 03         [ 2]   65 	addw	x, #0x0003
      008A93 7F               [ 1]   66 	clr	(x)
                                     67 ;	stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      008A94 93               [ 1]   68 	ldw	x, y
      008A95 1C 00 04         [ 2]   69 	addw	x, #0x0004
      008A98 7F               [ 1]   70 	clr	(x)
      008A99 81               [ 4]   71 	ret
                                     72 ;	stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     73 ;	-----------------------------------------
                                     74 ;	 function GPIO_Init
                                     75 ;	-----------------------------------------
      008A9A                         76 _GPIO_Init:
      008A9A 52 07            [ 2]   77 	sub	sp, #7
                                     78 ;	stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008A9C 16 0A            [ 2]   79 	ldw	y, (0x0a, sp)
      008A9E 17 06            [ 2]   80 	ldw	(0x06, sp), y
      008AA0 1E 06            [ 2]   81 	ldw	x, (0x06, sp)
      008AA2 1C 00 04         [ 2]   82 	addw	x, #0x0004
      008AA5 1F 04            [ 2]   83 	ldw	(0x04, sp), x
      008AA7 1E 04            [ 2]   84 	ldw	x, (0x04, sp)
      008AA9 F6               [ 1]   85 	ld	a, (x)
      008AAA 95               [ 1]   86 	ld	xh, a
      008AAB 7B 0C            [ 1]   87 	ld	a, (0x0c, sp)
      008AAD 43               [ 1]   88 	cpl	a
      008AAE 6B 03            [ 1]   89 	ld	(0x03, sp), a
      008AB0 9E               [ 1]   90 	ld	a, xh
      008AB1 14 03            [ 1]   91 	and	a, (0x03, sp)
      008AB3 1E 04            [ 2]   92 	ldw	x, (0x04, sp)
      008AB5 F7               [ 1]   93 	ld	(x), a
                                     94 ;	stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008AB6 1E 06            [ 2]   95 	ldw	x, (0x06, sp)
      008AB8 5C               [ 2]   96 	incw	x
      008AB9 5C               [ 2]   97 	incw	x
      008ABA 1F 01            [ 2]   98 	ldw	(0x01, sp), x
                                     99 ;	stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008ABC 7B 0D            [ 1]  100 	ld	a, (0x0d, sp)
      008ABE 48               [ 1]  101 	sll	a
      008ABF 24 21            [ 1]  102 	jrnc	00105$
                                    103 ;	stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008AC1 1E 06            [ 2]  104 	ldw	x, (0x06, sp)
      008AC3 F6               [ 1]  105 	ld	a, (x)
                                    106 ;	stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008AC4 88               [ 1]  107 	push	a
      008AC5 7B 0E            [ 1]  108 	ld	a, (0x0e, sp)
      008AC7 A5 10            [ 1]  109 	bcp	a, #0x10
      008AC9 84               [ 1]  110 	pop	a
      008ACA 27 07            [ 1]  111 	jreq	00102$
                                    112 ;	stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008ACC 1A 0C            [ 1]  113 	or	a, (0x0c, sp)
      008ACE 1E 06            [ 2]  114 	ldw	x, (0x06, sp)
      008AD0 F7               [ 1]  115 	ld	(x), a
      008AD1 20 05            [ 2]  116 	jra	00103$
      008AD3                        117 00102$:
                                    118 ;	stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008AD3 14 03            [ 1]  119 	and	a, (0x03, sp)
      008AD5 1E 06            [ 2]  120 	ldw	x, (0x06, sp)
      008AD7 F7               [ 1]  121 	ld	(x), a
      008AD8                        122 00103$:
                                    123 ;	stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      008AD8 1E 01            [ 2]  124 	ldw	x, (0x01, sp)
      008ADA F6               [ 1]  125 	ld	a, (x)
      008ADB 1A 0C            [ 1]  126 	or	a, (0x0c, sp)
      008ADD 1E 01            [ 2]  127 	ldw	x, (0x01, sp)
      008ADF F7               [ 1]  128 	ld	(x), a
      008AE0 20 08            [ 2]  129 	jra	00106$
      008AE2                        130 00105$:
                                    131 ;	stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008AE2 1E 01            [ 2]  132 	ldw	x, (0x01, sp)
      008AE4 F6               [ 1]  133 	ld	a, (x)
      008AE5 14 03            [ 1]  134 	and	a, (0x03, sp)
      008AE7 1E 01            [ 2]  135 	ldw	x, (0x01, sp)
      008AE9 F7               [ 1]  136 	ld	(x), a
      008AEA                        137 00106$:
                                    138 ;	stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008AEA 1E 06            [ 2]  139 	ldw	x, (0x06, sp)
      008AEC 1C 00 03         [ 2]  140 	addw	x, #0x0003
                                    141 ;	stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008AEF 7B 0D            [ 1]  142 	ld	a, (0x0d, sp)
      008AF1 A5 40            [ 1]  143 	bcp	a, #0x40
      008AF3 27 06            [ 1]  144 	jreq	00108$
                                    145 ;	stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008AF5 F6               [ 1]  146 	ld	a, (x)
      008AF6 1A 0C            [ 1]  147 	or	a, (0x0c, sp)
      008AF8 F7               [ 1]  148 	ld	(x), a
      008AF9 20 04            [ 2]  149 	jra	00109$
      008AFB                        150 00108$:
                                    151 ;	stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008AFB F6               [ 1]  152 	ld	a, (x)
      008AFC 14 03            [ 1]  153 	and	a, (0x03, sp)
      008AFE F7               [ 1]  154 	ld	(x), a
      008AFF                        155 00109$:
                                    156 ;	stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008AFF 7B 0D            [ 1]  157 	ld	a, (0x0d, sp)
      008B01 A5 20            [ 1]  158 	bcp	a, #0x20
      008B03 27 0A            [ 1]  159 	jreq	00111$
                                    160 ;	stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      008B05 1E 04            [ 2]  161 	ldw	x, (0x04, sp)
      008B07 F6               [ 1]  162 	ld	a, (x)
      008B08 1A 0C            [ 1]  163 	or	a, (0x0c, sp)
      008B0A 1E 04            [ 2]  164 	ldw	x, (0x04, sp)
      008B0C F7               [ 1]  165 	ld	(x), a
      008B0D 20 08            [ 2]  166 	jra	00113$
      008B0F                        167 00111$:
                                    168 ;	stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008B0F 1E 04            [ 2]  169 	ldw	x, (0x04, sp)
      008B11 F6               [ 1]  170 	ld	a, (x)
      008B12 14 03            [ 1]  171 	and	a, (0x03, sp)
      008B14 1E 04            [ 2]  172 	ldw	x, (0x04, sp)
      008B16 F7               [ 1]  173 	ld	(x), a
      008B17                        174 00113$:
      008B17 5B 07            [ 2]  175 	addw	sp, #7
      008B19 81               [ 4]  176 	ret
                                    177 ;	stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    178 ;	-----------------------------------------
                                    179 ;	 function GPIO_Write
                                    180 ;	-----------------------------------------
      008B1A                        181 _GPIO_Write:
                                    182 ;	stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      008B1A 1E 03            [ 2]  183 	ldw	x, (0x03, sp)
      008B1C 7B 05            [ 1]  184 	ld	a, (0x05, sp)
      008B1E F7               [ 1]  185 	ld	(x), a
      008B1F 81               [ 4]  186 	ret
                                    187 ;	stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    188 ;	-----------------------------------------
                                    189 ;	 function GPIO_WriteHigh
                                    190 ;	-----------------------------------------
      008B20                        191 _GPIO_WriteHigh:
                                    192 ;	stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008B20 1E 03            [ 2]  193 	ldw	x, (0x03, sp)
      008B22 F6               [ 1]  194 	ld	a, (x)
      008B23 1A 05            [ 1]  195 	or	a, (0x05, sp)
      008B25 F7               [ 1]  196 	ld	(x), a
      008B26 81               [ 4]  197 	ret
                                    198 ;	stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    199 ;	-----------------------------------------
                                    200 ;	 function GPIO_WriteLow
                                    201 ;	-----------------------------------------
      008B27                        202 _GPIO_WriteLow:
      008B27 88               [ 1]  203 	push	a
                                    204 ;	stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      008B28 1E 04            [ 2]  205 	ldw	x, (0x04, sp)
      008B2A F6               [ 1]  206 	ld	a, (x)
      008B2B 6B 01            [ 1]  207 	ld	(0x01, sp), a
      008B2D 7B 06            [ 1]  208 	ld	a, (0x06, sp)
      008B2F 43               [ 1]  209 	cpl	a
      008B30 14 01            [ 1]  210 	and	a, (0x01, sp)
      008B32 F7               [ 1]  211 	ld	(x), a
      008B33 84               [ 1]  212 	pop	a
      008B34 81               [ 4]  213 	ret
                                    214 ;	stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    215 ;	-----------------------------------------
                                    216 ;	 function GPIO_WriteReverse
                                    217 ;	-----------------------------------------
      008B35                        218 _GPIO_WriteReverse:
                                    219 ;	stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      008B35 1E 03            [ 2]  220 	ldw	x, (0x03, sp)
      008B37 F6               [ 1]  221 	ld	a, (x)
      008B38 18 05            [ 1]  222 	xor	a, (0x05, sp)
      008B3A F7               [ 1]  223 	ld	(x), a
      008B3B 81               [ 4]  224 	ret
                                    225 ;	stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    226 ;	-----------------------------------------
                                    227 ;	 function GPIO_ReadOutputData
                                    228 ;	-----------------------------------------
      008B3C                        229 _GPIO_ReadOutputData:
                                    230 ;	stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      008B3C 1E 03            [ 2]  231 	ldw	x, (0x03, sp)
      008B3E F6               [ 1]  232 	ld	a, (x)
      008B3F 81               [ 4]  233 	ret
                                    234 ;	stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    235 ;	-----------------------------------------
                                    236 ;	 function GPIO_ReadInputData
                                    237 ;	-----------------------------------------
      008B40                        238 _GPIO_ReadInputData:
                                    239 ;	stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      008B40 1E 03            [ 2]  240 	ldw	x, (0x03, sp)
      008B42 E6 01            [ 1]  241 	ld	a, (0x1, x)
      008B44 81               [ 4]  242 	ret
                                    243 ;	stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    244 ;	-----------------------------------------
                                    245 ;	 function GPIO_ReadInputPin
                                    246 ;	-----------------------------------------
      008B45                        247 _GPIO_ReadInputPin:
                                    248 ;	stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      008B45 1E 03            [ 2]  249 	ldw	x, (0x03, sp)
      008B47 E6 01            [ 1]  250 	ld	a, (0x1, x)
      008B49 14 05            [ 1]  251 	and	a, (0x05, sp)
      008B4B 81               [ 4]  252 	ret
                                    253 ;	stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    254 ;	-----------------------------------------
                                    255 ;	 function GPIO_ExternalPullUpConfig
                                    256 ;	-----------------------------------------
      008B4C                        257 _GPIO_ExternalPullUpConfig:
      008B4C 88               [ 1]  258 	push	a
                                    259 ;	stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008B4D 1E 04            [ 2]  260 	ldw	x, (0x04, sp)
      008B4F 1C 00 03         [ 2]  261 	addw	x, #0x0003
                                    262 ;	stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      008B52 0D 07            [ 1]  263 	tnz	(0x07, sp)
      008B54 27 06            [ 1]  264 	jreq	00102$
                                    265 ;	stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008B56 F6               [ 1]  266 	ld	a, (x)
      008B57 1A 06            [ 1]  267 	or	a, (0x06, sp)
      008B59 F7               [ 1]  268 	ld	(x), a
      008B5A 20 09            [ 2]  269 	jra	00104$
      008B5C                        270 00102$:
                                    271 ;	stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008B5C F6               [ 1]  272 	ld	a, (x)
      008B5D 6B 01            [ 1]  273 	ld	(0x01, sp), a
      008B5F 7B 06            [ 1]  274 	ld	a, (0x06, sp)
      008B61 43               [ 1]  275 	cpl	a
      008B62 14 01            [ 1]  276 	and	a, (0x01, sp)
      008B64 F7               [ 1]  277 	ld	(x), a
      008B65                        278 00104$:
      008B65 84               [ 1]  279 	pop	a
      008B66 81               [ 4]  280 	ret
                                    281 	.area CODE
                                    282 	.area INITIALIZER
                                    283 	.area CABS (ABS)

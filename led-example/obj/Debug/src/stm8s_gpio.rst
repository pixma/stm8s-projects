                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Thu Apr 09 12:28:40 2015
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
                                     50 ;	src\stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     51 ;	-----------------------------------------
                                     52 ;	 function GPIO_DeInit
                                     53 ;	-----------------------------------------
      0080CC                         54 _GPIO_DeInit:
                                     55 ;	src\stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      0080CC 16 03            [ 2]   56 	ldw	y, (0x03, sp)
      0080CE 90 7F            [ 1]   57 	clr	(y)
                                     58 ;	src\stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      0080D0 93               [ 1]   59 	ldw	x, y
      0080D1 5C               [ 2]   60 	incw	x
      0080D2 5C               [ 2]   61 	incw	x
      0080D3 7F               [ 1]   62 	clr	(x)
                                     63 ;	src\stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      0080D4 93               [ 1]   64 	ldw	x, y
      0080D5 1C 00 03         [ 2]   65 	addw	x, #0x0003
      0080D8 7F               [ 1]   66 	clr	(x)
                                     67 ;	src\stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      0080D9 93               [ 1]   68 	ldw	x, y
      0080DA 1C 00 04         [ 2]   69 	addw	x, #0x0004
      0080DD 7F               [ 1]   70 	clr	(x)
                           000012    71 	C$stm8s_gpio.c$59$1$12 ==.
                           000012    72 	XG$GPIO_DeInit$0$0 ==.
      0080DE 81               [ 4]   73 	ret
                                     74 ;	src\stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     75 ;	-----------------------------------------
                                     76 ;	 function GPIO_Init
                                     77 ;	-----------------------------------------
      0080DF                         78 _GPIO_Init:
      0080DF 52 07            [ 2]   79 	sub	sp, #7
                                     80 ;	src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0080E1 16 0A            [ 2]   81 	ldw	y, (0x0a, sp)
      0080E3 17 06            [ 2]   82 	ldw	(0x06, sp), y
      0080E5 1E 06            [ 2]   83 	ldw	x, (0x06, sp)
      0080E7 1C 00 04         [ 2]   84 	addw	x, #0x0004
      0080EA 1F 04            [ 2]   85 	ldw	(0x04, sp), x
      0080EC 1E 04            [ 2]   86 	ldw	x, (0x04, sp)
      0080EE F6               [ 1]   87 	ld	a, (x)
      0080EF 95               [ 1]   88 	ld	xh, a
      0080F0 7B 0C            [ 1]   89 	ld	a, (0x0c, sp)
      0080F2 43               [ 1]   90 	cpl	a
      0080F3 6B 03            [ 1]   91 	ld	(0x03, sp), a
      0080F5 9E               [ 1]   92 	ld	a, xh
      0080F6 14 03            [ 1]   93 	and	a, (0x03, sp)
      0080F8 1E 04            [ 2]   94 	ldw	x, (0x04, sp)
      0080FA F7               [ 1]   95 	ld	(x), a
                                     96 ;	src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0080FB 1E 06            [ 2]   97 	ldw	x, (0x06, sp)
      0080FD 5C               [ 2]   98 	incw	x
      0080FE 5C               [ 2]   99 	incw	x
      0080FF 1F 01            [ 2]  100 	ldw	(0x01, sp), x
                                    101 ;	src\stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      008101 7B 0D            [ 1]  102 	ld	a, (0x0d, sp)
      008103 48               [ 1]  103 	sll	a
      008104 24 21            [ 1]  104 	jrnc	00105$
                                    105 ;	src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008106 1E 06            [ 2]  106 	ldw	x, (0x06, sp)
      008108 F6               [ 1]  107 	ld	a, (x)
                                    108 ;	src\stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      008109 88               [ 1]  109 	push	a
      00810A 7B 0E            [ 1]  110 	ld	a, (0x0e, sp)
      00810C A5 10            [ 1]  111 	bcp	a, #0x10
      00810E 84               [ 1]  112 	pop	a
      00810F 27 07            [ 1]  113 	jreq	00102$
                                    114 ;	src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      008111 1A 0C            [ 1]  115 	or	a, (0x0c, sp)
      008113 1E 06            [ 2]  116 	ldw	x, (0x06, sp)
      008115 F7               [ 1]  117 	ld	(x), a
      008116 20 05            [ 2]  118 	jra	00103$
      008118                        119 00102$:
                                    120 ;	src\stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      008118 14 03            [ 1]  121 	and	a, (0x03, sp)
      00811A 1E 06            [ 2]  122 	ldw	x, (0x06, sp)
      00811C F7               [ 1]  123 	ld	(x), a
      00811D                        124 00103$:
                                    125 ;	src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      00811D 1E 01            [ 2]  126 	ldw	x, (0x01, sp)
      00811F F6               [ 1]  127 	ld	a, (x)
      008120 1A 0C            [ 1]  128 	or	a, (0x0c, sp)
      008122 1E 01            [ 2]  129 	ldw	x, (0x01, sp)
      008124 F7               [ 1]  130 	ld	(x), a
      008125 20 08            [ 2]  131 	jra	00106$
      008127                        132 00105$:
                                    133 ;	src\stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      008127 1E 01            [ 2]  134 	ldw	x, (0x01, sp)
      008129 F6               [ 1]  135 	ld	a, (x)
      00812A 14 03            [ 1]  136 	and	a, (0x03, sp)
      00812C 1E 01            [ 2]  137 	ldw	x, (0x01, sp)
      00812E F7               [ 1]  138 	ld	(x), a
      00812F                        139 00106$:
                                    140 ;	src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00812F 1E 06            [ 2]  141 	ldw	x, (0x06, sp)
      008131 1C 00 03         [ 2]  142 	addw	x, #0x0003
                                    143 ;	src\stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      008134 7B 0D            [ 1]  144 	ld	a, (0x0d, sp)
      008136 A5 40            [ 1]  145 	bcp	a, #0x40
      008138 27 06            [ 1]  146 	jreq	00108$
                                    147 ;	src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00813A F6               [ 1]  148 	ld	a, (x)
      00813B 1A 0C            [ 1]  149 	or	a, (0x0c, sp)
      00813D F7               [ 1]  150 	ld	(x), a
      00813E 20 04            [ 2]  151 	jra	00109$
      008140                        152 00108$:
                                    153 ;	src\stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008140 F6               [ 1]  154 	ld	a, (x)
      008141 14 03            [ 1]  155 	and	a, (0x03, sp)
      008143 F7               [ 1]  156 	ld	(x), a
      008144                        157 00109$:
                                    158 ;	src\stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      008144 7B 0D            [ 1]  159 	ld	a, (0x0d, sp)
      008146 A5 20            [ 1]  160 	bcp	a, #0x20
      008148 27 0A            [ 1]  161 	jreq	00111$
                                    162 ;	src\stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      00814A 1E 04            [ 2]  163 	ldw	x, (0x04, sp)
      00814C F6               [ 1]  164 	ld	a, (x)
      00814D 1A 0C            [ 1]  165 	or	a, (0x0c, sp)
      00814F 1E 04            [ 2]  166 	ldw	x, (0x04, sp)
      008151 F7               [ 1]  167 	ld	(x), a
      008152 20 08            [ 2]  168 	jra	00113$
      008154                        169 00111$:
                                    170 ;	src\stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008154 1E 04            [ 2]  171 	ldw	x, (0x04, sp)
      008156 F6               [ 1]  172 	ld	a, (x)
      008157 14 03            [ 1]  173 	and	a, (0x03, sp)
      008159 1E 04            [ 2]  174 	ldw	x, (0x04, sp)
      00815B F7               [ 1]  175 	ld	(x), a
      00815C                        176 00113$:
      00815C 5B 07            [ 2]  177 	addw	sp, #7
                           000092   178 	C$stm8s_gpio.c$131$1$14 ==.
                           000092   179 	XG$GPIO_Init$0$0 ==.
      00815E 81               [ 4]  180 	ret
                                    181 ;	src\stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    182 ;	-----------------------------------------
                                    183 ;	 function GPIO_Write
                                    184 ;	-----------------------------------------
      00815F                        185 _GPIO_Write:
                                    186 ;	src\stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      00815F 1E 03            [ 2]  187 	ldw	x, (0x03, sp)
      008161 7B 05            [ 1]  188 	ld	a, (0x05, sp)
      008163 F7               [ 1]  189 	ld	(x), a
                           000098   190 	C$stm8s_gpio.c$144$1$24 ==.
                           000098   191 	XG$GPIO_Write$0$0 ==.
      008164 81               [ 4]  192 	ret
                                    193 ;	src\stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    194 ;	-----------------------------------------
                                    195 ;	 function GPIO_WriteHigh
                                    196 ;	-----------------------------------------
      008165                        197 _GPIO_WriteHigh:
                                    198 ;	src\stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008165 1E 03            [ 2]  199 	ldw	x, (0x03, sp)
      008167 F6               [ 1]  200 	ld	a, (x)
      008168 1A 05            [ 1]  201 	or	a, (0x05, sp)
      00816A F7               [ 1]  202 	ld	(x), a
                           00009F   203 	C$stm8s_gpio.c$157$1$26 ==.
                           00009F   204 	XG$GPIO_WriteHigh$0$0 ==.
      00816B 81               [ 4]  205 	ret
                                    206 ;	src\stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    207 ;	-----------------------------------------
                                    208 ;	 function GPIO_WriteLow
                                    209 ;	-----------------------------------------
      00816C                        210 _GPIO_WriteLow:
      00816C 88               [ 1]  211 	push	a
                                    212 ;	src\stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      00816D 1E 04            [ 2]  213 	ldw	x, (0x04, sp)
      00816F F6               [ 1]  214 	ld	a, (x)
      008170 6B 01            [ 1]  215 	ld	(0x01, sp), a
      008172 7B 06            [ 1]  216 	ld	a, (0x06, sp)
      008174 43               [ 1]  217 	cpl	a
      008175 14 01            [ 1]  218 	and	a, (0x01, sp)
      008177 F7               [ 1]  219 	ld	(x), a
      008178 84               [ 1]  220 	pop	a
                           0000AD   221 	C$stm8s_gpio.c$170$1$28 ==.
                           0000AD   222 	XG$GPIO_WriteLow$0$0 ==.
      008179 81               [ 4]  223 	ret
                                    224 ;	src\stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    225 ;	-----------------------------------------
                                    226 ;	 function GPIO_WriteReverse
                                    227 ;	-----------------------------------------
      00817A                        228 _GPIO_WriteReverse:
                                    229 ;	src\stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      00817A 1E 03            [ 2]  230 	ldw	x, (0x03, sp)
      00817C F6               [ 1]  231 	ld	a, (x)
      00817D 18 05            [ 1]  232 	xor	a, (0x05, sp)
      00817F F7               [ 1]  233 	ld	(x), a
                           0000B4   234 	C$stm8s_gpio.c$183$1$30 ==.
                           0000B4   235 	XG$GPIO_WriteReverse$0$0 ==.
      008180 81               [ 4]  236 	ret
                                    237 ;	src\stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    238 ;	-----------------------------------------
                                    239 ;	 function GPIO_ReadOutputData
                                    240 ;	-----------------------------------------
      008181                        241 _GPIO_ReadOutputData:
                                    242 ;	src\stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      008181 1E 03            [ 2]  243 	ldw	x, (0x03, sp)
      008183 F6               [ 1]  244 	ld	a, (x)
                           0000B8   245 	C$stm8s_gpio.c$194$1$32 ==.
                           0000B8   246 	XG$GPIO_ReadOutputData$0$0 ==.
      008184 81               [ 4]  247 	ret
                                    248 ;	src\stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    249 ;	-----------------------------------------
                                    250 ;	 function GPIO_ReadInputData
                                    251 ;	-----------------------------------------
      008185                        252 _GPIO_ReadInputData:
                                    253 ;	src\stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      008185 1E 03            [ 2]  254 	ldw	x, (0x03, sp)
      008187 E6 01            [ 1]  255 	ld	a, (0x1, x)
                           0000BD   256 	C$stm8s_gpio.c$205$1$34 ==.
                           0000BD   257 	XG$GPIO_ReadInputData$0$0 ==.
      008189 81               [ 4]  258 	ret
                                    259 ;	src\stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    260 ;	-----------------------------------------
                                    261 ;	 function GPIO_ReadInputPin
                                    262 ;	-----------------------------------------
      00818A                        263 _GPIO_ReadInputPin:
                                    264 ;	src\stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      00818A 1E 03            [ 2]  265 	ldw	x, (0x03, sp)
      00818C E6 01            [ 1]  266 	ld	a, (0x1, x)
      00818E 14 05            [ 1]  267 	and	a, (0x05, sp)
                           0000C4   268 	C$stm8s_gpio.c$216$1$36 ==.
                           0000C4   269 	XG$GPIO_ReadInputPin$0$0 ==.
      008190 81               [ 4]  270 	ret
                                    271 ;	src\stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    272 ;	-----------------------------------------
                                    273 ;	 function GPIO_ExternalPullUpConfig
                                    274 ;	-----------------------------------------
      008191                        275 _GPIO_ExternalPullUpConfig:
      008191 88               [ 1]  276 	push	a
                                    277 ;	src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008192 1E 04            [ 2]  278 	ldw	x, (0x04, sp)
      008194 1C 00 03         [ 2]  279 	addw	x, #0x0003
                                    280 ;	src\stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      008197 0D 07            [ 1]  281 	tnz	(0x07, sp)
      008199 27 06            [ 1]  282 	jreq	00102$
                                    283 ;	src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      00819B F6               [ 1]  284 	ld	a, (x)
      00819C 1A 06            [ 1]  285 	or	a, (0x06, sp)
      00819E F7               [ 1]  286 	ld	(x), a
      00819F 20 09            [ 2]  287 	jra	00104$
      0081A1                        288 00102$:
                                    289 ;	src\stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0081A1 F6               [ 1]  290 	ld	a, (x)
      0081A2 6B 01            [ 1]  291 	ld	(0x01, sp), a
      0081A4 7B 06            [ 1]  292 	ld	a, (0x06, sp)
      0081A6 43               [ 1]  293 	cpl	a
      0081A7 14 01            [ 1]  294 	and	a, (0x01, sp)
      0081A9 F7               [ 1]  295 	ld	(x), a
      0081AA                        296 00104$:
      0081AA 84               [ 1]  297 	pop	a
                           0000DF   298 	C$stm8s_gpio.c$238$1$38 ==.
                           0000DF   299 	XG$GPIO_ExternalPullUpConfig$0$0 ==.
      0081AB 81               [ 4]  300 	ret
                                    301 	.area CODE
                                    302 	.area INITIALIZER
                                    303 	.area CABS (ABS)

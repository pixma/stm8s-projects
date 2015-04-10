                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Fri Apr 10 13:48:28 2015
                                      5 ;--------------------------------------------------------
                                      6 	.module stdafx
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _SPI_GetFlagStatus
                                     13 	.globl _SPI_SendData
                                     14 	.globl _SPI_Cmd
                                     15 	.globl _SPI_Init
                                     16 	.globl _CLK_PeripheralClockConfig
                                     17 	.globl _GPIO_ExternalPullUpConfig
                                     18 	.globl _GPIO_WriteHigh
                                     19 	.globl _GPIO_Init
                                     20 	.globl _init_spi
                                     21 	.globl _spi_write_data_8t
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
                                     50 ;	src\stdafx.c: 4: void init_spi(void){
                                     51 ;	-----------------------------------------
                                     52 ;	 function init_spi
                                     53 ;	-----------------------------------------
      0080EB                         54 _init_spi:
                                     55 ;	src\stdafx.c: 6: CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, ENABLE);
      0080EB 4B 01            [ 1]   56 	push	#0x01
      0080ED 4B 01            [ 1]   57 	push	#0x01
      0080EF CD 82 23         [ 4]   58 	call	_CLK_PeripheralClockConfig
      0080F2 5B 02            [ 2]   59 	addw	sp, #2
                                     60 ;	src\stdafx.c: 9: GPIO_ExternalPullUpConfig(GPIOC, (GPIO_Pin_TypeDef)(GPIO_PIN_7|GPIO_PIN_6|GPIO_PIN_5),ENABLE);
      0080F4 4B 01            [ 1]   61 	push	#0x01
      0080F6 4B E0            [ 1]   62 	push	#0xe0
      0080F8 4B 0A            [ 1]   63 	push	#0x0a
      0080FA 4B 50            [ 1]   64 	push	#0x50
      0080FC CD 85 D2         [ 4]   65 	call	_GPIO_ExternalPullUpConfig
      0080FF 5B 04            [ 2]   66 	addw	sp, #4
                                     67 ;	src\stdafx.c: 12: SPI_Init(SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_8, SPI_MODE_MASTER, SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE,SPI_DATADIRECTION_2LINES_FULLDUPLEX, SPI_NSS_SOFT,0x07);
      008101 4B 07            [ 1]   68 	push	#0x07
      008103 4B 02            [ 1]   69 	push	#0x02
      008105 4B 00            [ 1]   70 	push	#0x00
      008107 4B 01            [ 1]   71 	push	#0x01
      008109 4B 02            [ 1]   72 	push	#0x02
      00810B 4B 04            [ 1]   73 	push	#0x04
      00810D 4B 10            [ 1]   74 	push	#0x10
      00810F 4B 00            [ 1]   75 	push	#0x00
      008111 CD 86 06         [ 4]   76 	call	_SPI_Init
      008114 5B 08            [ 2]   77 	addw	sp, #8
                                     78 ;	src\stdafx.c: 15: SPI_Cmd(ENABLE);
      008116 4B 01            [ 1]   79 	push	#0x01
      008118 CD 86 44         [ 4]   80 	call	_SPI_Cmd
      00811B 84               [ 1]   81 	pop	a
                                     82 ;	src\stdafx.c: 18: GPIO_Init(GPIOE, GPIO_PIN_5, GPIO_MODE_OUT_PP_HIGH_SLOW);
      00811C 4B D0            [ 1]   83 	push	#0xd0
      00811E 4B 20            [ 1]   84 	push	#0x20
      008120 4B 14            [ 1]   85 	push	#0x14
      008122 4B 50            [ 1]   86 	push	#0x50
      008124 CD 85 20         [ 4]   87 	call	_GPIO_Init
      008127 5B 04            [ 2]   88 	addw	sp, #4
      008129 81               [ 4]   89 	ret
                                     90 ;	src\stdafx.c: 21: void spi_write_data_8t( uint8_t *pBuffer, uint8_t WriterAddr){
                                     91 ;	-----------------------------------------
                                     92 ;	 function spi_write_data_8t
                                     93 ;	-----------------------------------------
      00812A                         94 _spi_write_data_8t:
                                     95 ;	src\stdafx.c: 23: GPIO_WriteHigh(GPIOE, GPIO_PIN_5);
      00812A 4B 20            [ 1]   96 	push	#0x20
      00812C 4B 14            [ 1]   97 	push	#0x14
      00812E 4B 50            [ 1]   98 	push	#0x50
      008130 CD 85 A6         [ 4]   99 	call	_GPIO_WriteHigh
      008133 5B 03            [ 2]  100 	addw	sp, #3
                                    101 ;	src\stdafx.c: 26: while (SPI_GetFlagStatus(SPI_FLAG_TXE) == RESET){}
      008135                        102 00101$:
      008135 4B 02            [ 1]  103 	push	#0x02
      008137 CD 87 00         [ 4]  104 	call	_SPI_GetFlagStatus
      00813A 5B 01            [ 2]  105 	addw	sp, #1
      00813C 4D               [ 1]  106 	tnz	a
      00813D 27 F6            [ 1]  107 	jreq	00101$
                                    108 ;	src\stdafx.c: 29: SPI_SendData( WriterAddr );
      00813F 7B 05            [ 1]  109 	ld	a, (0x05, sp)
      008141 88               [ 1]  110 	push	a
      008142 CD 86 8F         [ 4]  111 	call	_SPI_SendData
      008145 84               [ 1]  112 	pop	a
                                    113 ;	src\stdafx.c: 31: while( *pBuffer )
      008146 1E 03            [ 2]  114 	ldw	x, (0x03, sp)
      008148                        115 00104$:
      008148 F6               [ 1]  116 	ld	a, (x)
      008149 4D               [ 1]  117 	tnz	a
      00814A 27 0A            [ 1]  118 	jreq	00107$
                                    119 ;	src\stdafx.c: 32: SPI_SendData( *pBuffer++ );
      00814C 5C               [ 2]  120 	incw	x
      00814D 89               [ 2]  121 	pushw	x
      00814E 88               [ 1]  122 	push	a
      00814F CD 86 8F         [ 4]  123 	call	_SPI_SendData
      008152 84               [ 1]  124 	pop	a
      008153 85               [ 2]  125 	popw	x
      008154 20 F2            [ 2]  126 	jra	00104$
      008156                        127 00107$:
      008156 81               [ 4]  128 	ret
                                    129 	.area CODE
                                    130 	.area INITIALIZER
                                    131 	.area CABS (ABS)

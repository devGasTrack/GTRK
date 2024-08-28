                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module utils
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UIF_BUS_RST
                                     12 	.globl _UIF_TRANSFER
                                     13 	.globl _UIF_SUSPEND
                                     14 	.globl _UIF_FIFO_OV
                                     15 	.globl _U_SIE_FREE
                                     16 	.globl _U_TOG_OK
                                     17 	.globl _U_IS_NAK
                                     18 	.globl _ADC_CHAN0
                                     19 	.globl _ADC_CHAN1
                                     20 	.globl _CMP_CHAN
                                     21 	.globl _ADC_START
                                     22 	.globl _ADC_IF
                                     23 	.globl _CMP_IF
                                     24 	.globl _CMPO
                                     25 	.globl _U1RI
                                     26 	.globl _U1TI
                                     27 	.globl _U1RB8
                                     28 	.globl _U1TB8
                                     29 	.globl _U1REN
                                     30 	.globl _U1SMOD
                                     31 	.globl _U1SM0
                                     32 	.globl _S0_R_FIFO
                                     33 	.globl _S0_T_FIFO
                                     34 	.globl _S0_FREE
                                     35 	.globl _S0_IF_BYTE
                                     36 	.globl _S0_IF_FIRST
                                     37 	.globl _S0_IF_OV
                                     38 	.globl _S0_FST_ACT
                                     39 	.globl _CP_RL2
                                     40 	.globl _C_T2
                                     41 	.globl _TR2
                                     42 	.globl _EXEN2
                                     43 	.globl _TCLK
                                     44 	.globl _RCLK
                                     45 	.globl _EXF2
                                     46 	.globl _CAP1F
                                     47 	.globl _TF2
                                     48 	.globl _RI
                                     49 	.globl _TI
                                     50 	.globl _RB8
                                     51 	.globl _TB8
                                     52 	.globl _REN
                                     53 	.globl _SM2
                                     54 	.globl _SM1
                                     55 	.globl _SM0
                                     56 	.globl _IT0
                                     57 	.globl _IE0
                                     58 	.globl _IT1
                                     59 	.globl _IE1
                                     60 	.globl _TR0
                                     61 	.globl _TF0
                                     62 	.globl _TR1
                                     63 	.globl _TF1
                                     64 	.globl _RXD
                                     65 	.globl _PWM1_
                                     66 	.globl _TXD
                                     67 	.globl _PWM2_
                                     68 	.globl _AIN3
                                     69 	.globl _VBUS1
                                     70 	.globl _INT0
                                     71 	.globl _TXD1_
                                     72 	.globl _INT1
                                     73 	.globl _T0
                                     74 	.globl _RXD1_
                                     75 	.globl _PWM2
                                     76 	.globl _T1
                                     77 	.globl _UDP
                                     78 	.globl _UDM
                                     79 	.globl _TIN0
                                     80 	.globl _CAP1
                                     81 	.globl _T2
                                     82 	.globl _AIN0
                                     83 	.globl _VBUS2
                                     84 	.globl _TIN1
                                     85 	.globl _CAP2
                                     86 	.globl _T2EX
                                     87 	.globl _RXD_
                                     88 	.globl _TXD_
                                     89 	.globl _AIN1
                                     90 	.globl _UCC1
                                     91 	.globl _TIN2
                                     92 	.globl _SCS
                                     93 	.globl _CAP1_
                                     94 	.globl _T2_
                                     95 	.globl _AIN2
                                     96 	.globl _UCC2
                                     97 	.globl _TIN3
                                     98 	.globl _PWM1
                                     99 	.globl _MOSI
                                    100 	.globl _TIN4
                                    101 	.globl _RXD1
                                    102 	.globl _MISO
                                    103 	.globl _TIN5
                                    104 	.globl _TXD1
                                    105 	.globl _SCK
                                    106 	.globl _IE_SPI0
                                    107 	.globl _IE_TKEY
                                    108 	.globl _IE_USB
                                    109 	.globl _IE_ADC
                                    110 	.globl _IE_UART1
                                    111 	.globl _IE_PWMX
                                    112 	.globl _IE_GPIO
                                    113 	.globl _IE_WDOG
                                    114 	.globl _PX0
                                    115 	.globl _PT0
                                    116 	.globl _PX1
                                    117 	.globl _PT1
                                    118 	.globl _PS
                                    119 	.globl _PT2
                                    120 	.globl _PL_FLAG
                                    121 	.globl _PH_FLAG
                                    122 	.globl _EX0
                                    123 	.globl _ET0
                                    124 	.globl _EX1
                                    125 	.globl _ET1
                                    126 	.globl _ES
                                    127 	.globl _ET2
                                    128 	.globl _E_DIS
                                    129 	.globl _EA
                                    130 	.globl _P
                                    131 	.globl _F1
                                    132 	.globl _OV
                                    133 	.globl _RS0
                                    134 	.globl _RS1
                                    135 	.globl _F0
                                    136 	.globl _AC
                                    137 	.globl _CY
                                    138 	.globl _UEP1_DMA_H
                                    139 	.globl _UEP1_DMA_L
                                    140 	.globl _UEP1_DMA
                                    141 	.globl _UEP0_DMA_H
                                    142 	.globl _UEP0_DMA_L
                                    143 	.globl _UEP0_DMA
                                    144 	.globl _UEP2_3_MOD
                                    145 	.globl _UEP4_1_MOD
                                    146 	.globl _UEP3_DMA_H
                                    147 	.globl _UEP3_DMA_L
                                    148 	.globl _UEP3_DMA
                                    149 	.globl _UEP2_DMA_H
                                    150 	.globl _UEP2_DMA_L
                                    151 	.globl _UEP2_DMA
                                    152 	.globl _USB_DEV_AD
                                    153 	.globl _USB_CTRL
                                    154 	.globl _USB_INT_EN
                                    155 	.globl _UEP4_T_LEN
                                    156 	.globl _UEP4_CTRL
                                    157 	.globl _UEP0_T_LEN
                                    158 	.globl _UEP0_CTRL
                                    159 	.globl _USB_RX_LEN
                                    160 	.globl _USB_MIS_ST
                                    161 	.globl _USB_INT_ST
                                    162 	.globl _USB_INT_FG
                                    163 	.globl _UEP3_T_LEN
                                    164 	.globl _UEP3_CTRL
                                    165 	.globl _UEP2_T_LEN
                                    166 	.globl _UEP2_CTRL
                                    167 	.globl _UEP1_T_LEN
                                    168 	.globl _UEP1_CTRL
                                    169 	.globl _UDEV_CTRL
                                    170 	.globl _USB_C_CTRL
                                    171 	.globl _TKEY_DATH
                                    172 	.globl _TKEY_DATL
                                    173 	.globl _TKEY_DAT
                                    174 	.globl _TKEY_CTRL
                                    175 	.globl _ADC_DATA
                                    176 	.globl _ADC_CFG
                                    177 	.globl _ADC_CTRL
                                    178 	.globl _SBAUD1
                                    179 	.globl _SBUF1
                                    180 	.globl _SCON1
                                    181 	.globl _SPI0_SETUP
                                    182 	.globl _SPI0_CK_SE
                                    183 	.globl _SPI0_CTRL
                                    184 	.globl _SPI0_DATA
                                    185 	.globl _SPI0_STAT
                                    186 	.globl _PWM_CK_SE
                                    187 	.globl _PWM_CTRL
                                    188 	.globl _PWM_DATA1
                                    189 	.globl _PWM_DATA2
                                    190 	.globl _T2CAP1H
                                    191 	.globl _T2CAP1L
                                    192 	.globl _T2CAP1
                                    193 	.globl _TH2
                                    194 	.globl _TL2
                                    195 	.globl _T2COUNT
                                    196 	.globl _RCAP2H
                                    197 	.globl _RCAP2L
                                    198 	.globl _RCAP2
                                    199 	.globl _T2MOD
                                    200 	.globl _T2CON
                                    201 	.globl _SBUF
                                    202 	.globl _SCON
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _XBUS_AUX
                                    210 	.globl _PIN_FUNC
                                    211 	.globl _P3_DIR_PU
                                    212 	.globl _P3_MOD_OC
                                    213 	.globl _P3
                                    214 	.globl _P2
                                    215 	.globl _P1_DIR_PU
                                    216 	.globl _P1_MOD_OC
                                    217 	.globl _P1
                                    218 	.globl _ROM_CTRL
                                    219 	.globl _ROM_DATA_H
                                    220 	.globl _ROM_DATA_L
                                    221 	.globl _ROM_DATA
                                    222 	.globl _ROM_ADDR_H
                                    223 	.globl _ROM_ADDR_L
                                    224 	.globl _ROM_ADDR
                                    225 	.globl _GPIO_IE
                                    226 	.globl _IP_EX
                                    227 	.globl _IE_EX
                                    228 	.globl _IP
                                    229 	.globl _IE
                                    230 	.globl _WDOG_COUNT
                                    231 	.globl _RESET_KEEP
                                    232 	.globl _WAKE_CTRL
                                    233 	.globl _CLOCK_CFG
                                    234 	.globl _PCON
                                    235 	.globl _GLOBAL_CFG
                                    236 	.globl _SAFE_MOD
                                    237 	.globl _DPH
                                    238 	.globl _DPL
                                    239 	.globl _SP
                                    240 	.globl _B
                                    241 	.globl _ACC
                                    242 	.globl _PSW
                                    243 	.globl _delay
                                    244 ;--------------------------------------------------------
                                    245 ; special function registers
                                    246 ;--------------------------------------------------------
                                    247 	.area RSEG    (ABS,DATA)
      000000                        248 	.org 0x0000
                           0000D0   249 _PSW	=	0x00d0
                           0000E0   250 _ACC	=	0x00e0
                           0000F0   251 _B	=	0x00f0
                           000081   252 _SP	=	0x0081
                           000082   253 _DPL	=	0x0082
                           000083   254 _DPH	=	0x0083
                           0000A1   255 _SAFE_MOD	=	0x00a1
                           0000B1   256 _GLOBAL_CFG	=	0x00b1
                           000087   257 _PCON	=	0x0087
                           0000B9   258 _CLOCK_CFG	=	0x00b9
                           0000A9   259 _WAKE_CTRL	=	0x00a9
                           0000FE   260 _RESET_KEEP	=	0x00fe
                           0000FF   261 _WDOG_COUNT	=	0x00ff
                           0000A8   262 _IE	=	0x00a8
                           0000B8   263 _IP	=	0x00b8
                           0000E8   264 _IE_EX	=	0x00e8
                           0000E9   265 _IP_EX	=	0x00e9
                           0000C7   266 _GPIO_IE	=	0x00c7
                           008584   267 _ROM_ADDR	=	0x8584
                           000084   268 _ROM_ADDR_L	=	0x0084
                           000085   269 _ROM_ADDR_H	=	0x0085
                           008F8E   270 _ROM_DATA	=	0x8f8e
                           00008E   271 _ROM_DATA_L	=	0x008e
                           00008F   272 _ROM_DATA_H	=	0x008f
                           000086   273 _ROM_CTRL	=	0x0086
                           000090   274 _P1	=	0x0090
                           000092   275 _P1_MOD_OC	=	0x0092
                           000093   276 _P1_DIR_PU	=	0x0093
                           0000A0   277 _P2	=	0x00a0
                           0000B0   278 _P3	=	0x00b0
                           000096   279 _P3_MOD_OC	=	0x0096
                           000097   280 _P3_DIR_PU	=	0x0097
                           0000C6   281 _PIN_FUNC	=	0x00c6
                           0000A2   282 _XBUS_AUX	=	0x00a2
                           000088   283 _TCON	=	0x0088
                           000089   284 _TMOD	=	0x0089
                           00008A   285 _TL0	=	0x008a
                           00008B   286 _TL1	=	0x008b
                           00008C   287 _TH0	=	0x008c
                           00008D   288 _TH1	=	0x008d
                           000098   289 _SCON	=	0x0098
                           000099   290 _SBUF	=	0x0099
                           0000C8   291 _T2CON	=	0x00c8
                           0000C9   292 _T2MOD	=	0x00c9
                           00CBCA   293 _RCAP2	=	0xcbca
                           0000CA   294 _RCAP2L	=	0x00ca
                           0000CB   295 _RCAP2H	=	0x00cb
                           00CDCC   296 _T2COUNT	=	0xcdcc
                           0000CC   297 _TL2	=	0x00cc
                           0000CD   298 _TH2	=	0x00cd
                           00CFCE   299 _T2CAP1	=	0xcfce
                           0000CE   300 _T2CAP1L	=	0x00ce
                           0000CF   301 _T2CAP1H	=	0x00cf
                           00009B   302 _PWM_DATA2	=	0x009b
                           00009C   303 _PWM_DATA1	=	0x009c
                           00009D   304 _PWM_CTRL	=	0x009d
                           00009E   305 _PWM_CK_SE	=	0x009e
                           0000F8   306 _SPI0_STAT	=	0x00f8
                           0000F9   307 _SPI0_DATA	=	0x00f9
                           0000FA   308 _SPI0_CTRL	=	0x00fa
                           0000FB   309 _SPI0_CK_SE	=	0x00fb
                           0000FC   310 _SPI0_SETUP	=	0x00fc
                           0000C0   311 _SCON1	=	0x00c0
                           0000C1   312 _SBUF1	=	0x00c1
                           0000C2   313 _SBAUD1	=	0x00c2
                           000080   314 _ADC_CTRL	=	0x0080
                           00009A   315 _ADC_CFG	=	0x009a
                           00009F   316 _ADC_DATA	=	0x009f
                           0000C3   317 _TKEY_CTRL	=	0x00c3
                           00C5C4   318 _TKEY_DAT	=	0xc5c4
                           0000C4   319 _TKEY_DATL	=	0x00c4
                           0000C5   320 _TKEY_DATH	=	0x00c5
                           000091   321 _USB_C_CTRL	=	0x0091
                           0000D1   322 _UDEV_CTRL	=	0x00d1
                           0000D2   323 _UEP1_CTRL	=	0x00d2
                           0000D3   324 _UEP1_T_LEN	=	0x00d3
                           0000D4   325 _UEP2_CTRL	=	0x00d4
                           0000D5   326 _UEP2_T_LEN	=	0x00d5
                           0000D6   327 _UEP3_CTRL	=	0x00d6
                           0000D7   328 _UEP3_T_LEN	=	0x00d7
                           0000D8   329 _USB_INT_FG	=	0x00d8
                           0000D9   330 _USB_INT_ST	=	0x00d9
                           0000DA   331 _USB_MIS_ST	=	0x00da
                           0000DB   332 _USB_RX_LEN	=	0x00db
                           0000DC   333 _UEP0_CTRL	=	0x00dc
                           0000DD   334 _UEP0_T_LEN	=	0x00dd
                           0000DE   335 _UEP4_CTRL	=	0x00de
                           0000DF   336 _UEP4_T_LEN	=	0x00df
                           0000E1   337 _USB_INT_EN	=	0x00e1
                           0000E2   338 _USB_CTRL	=	0x00e2
                           0000E3   339 _USB_DEV_AD	=	0x00e3
                           00E5E4   340 _UEP2_DMA	=	0xe5e4
                           0000E4   341 _UEP2_DMA_L	=	0x00e4
                           0000E5   342 _UEP2_DMA_H	=	0x00e5
                           00E7E6   343 _UEP3_DMA	=	0xe7e6
                           0000E6   344 _UEP3_DMA_L	=	0x00e6
                           0000E7   345 _UEP3_DMA_H	=	0x00e7
                           0000EA   346 _UEP4_1_MOD	=	0x00ea
                           0000EB   347 _UEP2_3_MOD	=	0x00eb
                           00EDEC   348 _UEP0_DMA	=	0xedec
                           0000EC   349 _UEP0_DMA_L	=	0x00ec
                           0000ED   350 _UEP0_DMA_H	=	0x00ed
                           00EFEE   351 _UEP1_DMA	=	0xefee
                           0000EE   352 _UEP1_DMA_L	=	0x00ee
                           0000EF   353 _UEP1_DMA_H	=	0x00ef
                                    354 ;--------------------------------------------------------
                                    355 ; special function bits
                                    356 ;--------------------------------------------------------
                                    357 	.area RSEG    (ABS,DATA)
      000000                        358 	.org 0x0000
                           0000D7   359 _CY	=	0x00d7
                           0000D6   360 _AC	=	0x00d6
                           0000D5   361 _F0	=	0x00d5
                           0000D4   362 _RS1	=	0x00d4
                           0000D3   363 _RS0	=	0x00d3
                           0000D2   364 _OV	=	0x00d2
                           0000D1   365 _F1	=	0x00d1
                           0000D0   366 _P	=	0x00d0
                           0000AF   367 _EA	=	0x00af
                           0000AE   368 _E_DIS	=	0x00ae
                           0000AD   369 _ET2	=	0x00ad
                           0000AC   370 _ES	=	0x00ac
                           0000AB   371 _ET1	=	0x00ab
                           0000AA   372 _EX1	=	0x00aa
                           0000A9   373 _ET0	=	0x00a9
                           0000A8   374 _EX0	=	0x00a8
                           0000BF   375 _PH_FLAG	=	0x00bf
                           0000BE   376 _PL_FLAG	=	0x00be
                           0000BD   377 _PT2	=	0x00bd
                           0000BC   378 _PS	=	0x00bc
                           0000BB   379 _PT1	=	0x00bb
                           0000BA   380 _PX1	=	0x00ba
                           0000B9   381 _PT0	=	0x00b9
                           0000B8   382 _PX0	=	0x00b8
                           0000EF   383 _IE_WDOG	=	0x00ef
                           0000EE   384 _IE_GPIO	=	0x00ee
                           0000ED   385 _IE_PWMX	=	0x00ed
                           0000EC   386 _IE_UART1	=	0x00ec
                           0000EB   387 _IE_ADC	=	0x00eb
                           0000EA   388 _IE_USB	=	0x00ea
                           0000E9   389 _IE_TKEY	=	0x00e9
                           0000E8   390 _IE_SPI0	=	0x00e8
                           000097   391 _SCK	=	0x0097
                           000097   392 _TXD1	=	0x0097
                           000097   393 _TIN5	=	0x0097
                           000096   394 _MISO	=	0x0096
                           000096   395 _RXD1	=	0x0096
                           000096   396 _TIN4	=	0x0096
                           000095   397 _MOSI	=	0x0095
                           000095   398 _PWM1	=	0x0095
                           000095   399 _TIN3	=	0x0095
                           000095   400 _UCC2	=	0x0095
                           000095   401 _AIN2	=	0x0095
                           000094   402 _T2_	=	0x0094
                           000094   403 _CAP1_	=	0x0094
                           000094   404 _SCS	=	0x0094
                           000094   405 _TIN2	=	0x0094
                           000094   406 _UCC1	=	0x0094
                           000094   407 _AIN1	=	0x0094
                           000093   408 _TXD_	=	0x0093
                           000092   409 _RXD_	=	0x0092
                           000091   410 _T2EX	=	0x0091
                           000091   411 _CAP2	=	0x0091
                           000091   412 _TIN1	=	0x0091
                           000091   413 _VBUS2	=	0x0091
                           000091   414 _AIN0	=	0x0091
                           000090   415 _T2	=	0x0090
                           000090   416 _CAP1	=	0x0090
                           000090   417 _TIN0	=	0x0090
                           0000B7   418 _UDM	=	0x00b7
                           0000B6   419 _UDP	=	0x00b6
                           0000B5   420 _T1	=	0x00b5
                           0000B4   421 _PWM2	=	0x00b4
                           0000B4   422 _RXD1_	=	0x00b4
                           0000B4   423 _T0	=	0x00b4
                           0000B3   424 _INT1	=	0x00b3
                           0000B2   425 _TXD1_	=	0x00b2
                           0000B2   426 _INT0	=	0x00b2
                           0000B2   427 _VBUS1	=	0x00b2
                           0000B2   428 _AIN3	=	0x00b2
                           0000B1   429 _PWM2_	=	0x00b1
                           0000B1   430 _TXD	=	0x00b1
                           0000B0   431 _PWM1_	=	0x00b0
                           0000B0   432 _RXD	=	0x00b0
                           00008F   433 _TF1	=	0x008f
                           00008E   434 _TR1	=	0x008e
                           00008D   435 _TF0	=	0x008d
                           00008C   436 _TR0	=	0x008c
                           00008B   437 _IE1	=	0x008b
                           00008A   438 _IT1	=	0x008a
                           000089   439 _IE0	=	0x0089
                           000088   440 _IT0	=	0x0088
                           00009F   441 _SM0	=	0x009f
                           00009E   442 _SM1	=	0x009e
                           00009D   443 _SM2	=	0x009d
                           00009C   444 _REN	=	0x009c
                           00009B   445 _TB8	=	0x009b
                           00009A   446 _RB8	=	0x009a
                           000099   447 _TI	=	0x0099
                           000098   448 _RI	=	0x0098
                           0000CF   449 _TF2	=	0x00cf
                           0000CF   450 _CAP1F	=	0x00cf
                           0000CE   451 _EXF2	=	0x00ce
                           0000CD   452 _RCLK	=	0x00cd
                           0000CC   453 _TCLK	=	0x00cc
                           0000CB   454 _EXEN2	=	0x00cb
                           0000CA   455 _TR2	=	0x00ca
                           0000C9   456 _C_T2	=	0x00c9
                           0000C8   457 _CP_RL2	=	0x00c8
                           0000FF   458 _S0_FST_ACT	=	0x00ff
                           0000FE   459 _S0_IF_OV	=	0x00fe
                           0000FD   460 _S0_IF_FIRST	=	0x00fd
                           0000FC   461 _S0_IF_BYTE	=	0x00fc
                           0000FB   462 _S0_FREE	=	0x00fb
                           0000FA   463 _S0_T_FIFO	=	0x00fa
                           0000F8   464 _S0_R_FIFO	=	0x00f8
                           0000C7   465 _U1SM0	=	0x00c7
                           0000C5   466 _U1SMOD	=	0x00c5
                           0000C4   467 _U1REN	=	0x00c4
                           0000C3   468 _U1TB8	=	0x00c3
                           0000C2   469 _U1RB8	=	0x00c2
                           0000C1   470 _U1TI	=	0x00c1
                           0000C0   471 _U1RI	=	0x00c0
                           000087   472 _CMPO	=	0x0087
                           000086   473 _CMP_IF	=	0x0086
                           000085   474 _ADC_IF	=	0x0085
                           000084   475 _ADC_START	=	0x0084
                           000083   476 _CMP_CHAN	=	0x0083
                           000081   477 _ADC_CHAN1	=	0x0081
                           000080   478 _ADC_CHAN0	=	0x0080
                           0000DF   479 _U_IS_NAK	=	0x00df
                           0000DE   480 _U_TOG_OK	=	0x00de
                           0000DD   481 _U_SIE_FREE	=	0x00dd
                           0000DC   482 _UIF_FIFO_OV	=	0x00dc
                           0000DA   483 _UIF_SUSPEND	=	0x00da
                           0000D9   484 _UIF_TRANSFER	=	0x00d9
                           0000D8   485 _UIF_BUS_RST	=	0x00d8
                                    486 ;--------------------------------------------------------
                                    487 ; overlayable register banks
                                    488 ;--------------------------------------------------------
                                    489 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        490 	.ds 8
                                    491 ;--------------------------------------------------------
                                    492 ; internal ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area DSEG    (DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; overlayable items in internal ram
                                    497 ;--------------------------------------------------------
                                    498 	.area	OSEG    (OVR,DATA)
                                    499 ;--------------------------------------------------------
                                    500 ; indirectly addressable internal ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area ISEG    (DATA)
                                    503 ;--------------------------------------------------------
                                    504 ; absolute internal ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area IABS    (ABS,DATA)
                                    507 	.area IABS    (ABS,DATA)
                                    508 ;--------------------------------------------------------
                                    509 ; bit data
                                    510 ;--------------------------------------------------------
                                    511 	.area BSEG    (BIT)
                                    512 ;--------------------------------------------------------
                                    513 ; paged external ram data
                                    514 ;--------------------------------------------------------
                                    515 	.area PSEG    (PAG,XDATA)
                                    516 ;--------------------------------------------------------
                                    517 ; uninitialized external ram data
                                    518 ;--------------------------------------------------------
                                    519 	.area XSEG    (XDATA)
                                    520 ;--------------------------------------------------------
                                    521 ; absolute external ram data
                                    522 ;--------------------------------------------------------
                                    523 	.area XABS    (ABS,XDATA)
                                    524 ;--------------------------------------------------------
                                    525 ; initialized external ram data
                                    526 ;--------------------------------------------------------
                                    527 	.area XISEG   (XDATA)
                                    528 	.area HOME    (CODE)
                                    529 	.area GSINIT0 (CODE)
                                    530 	.area GSINIT1 (CODE)
                                    531 	.area GSINIT2 (CODE)
                                    532 	.area GSINIT3 (CODE)
                                    533 	.area GSINIT4 (CODE)
                                    534 	.area GSINIT5 (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.area GSFINAL (CODE)
                                    537 	.area CSEG    (CODE)
                                    538 ;--------------------------------------------------------
                                    539 ; global & static initialisations
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT  (CODE)
                                    543 	.area GSFINAL (CODE)
                                    544 	.area GSINIT  (CODE)
                                    545 ;--------------------------------------------------------
                                    546 ; Home
                                    547 ;--------------------------------------------------------
                                    548 	.area HOME    (CODE)
                                    549 	.area HOME    (CODE)
                                    550 ;--------------------------------------------------------
                                    551 ; code
                                    552 ;--------------------------------------------------------
                                    553 	.area CSEG    (CODE)
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'delay'
                                    556 ;------------------------------------------------------------
                                    557 ;ms                        Allocated to registers r6 r7 
                                    558 ;i                         Allocated to registers r4 r5 
                                    559 ;j                         Allocated to registers r2 r3 
                                    560 ;------------------------------------------------------------
                                    561 ;	../Firmware/src/utils.c:3: void delay(unsigned int ms) {
                                    562 ;	-----------------------------------------
                                    563 ;	 function delay
                                    564 ;	-----------------------------------------
      000068                        565 _delay:
                           000007   566 	ar7 = 0x07
                           000006   567 	ar6 = 0x06
                           000005   568 	ar5 = 0x05
                           000004   569 	ar4 = 0x04
                           000003   570 	ar3 = 0x03
                           000002   571 	ar2 = 0x02
                           000001   572 	ar1 = 0x01
                           000000   573 	ar0 = 0x00
      000068 AE 82            [24]  574 	mov	r6, dpl
      00006A AF 83            [24]  575 	mov	r7, dph
                                    576 ;	../Firmware/src/utils.c:5: for (i = 0; i < ms; i++) {
      00006C 7C 00            [12]  577 	mov	r4,#0x00
      00006E 7D 00            [12]  578 	mov	r5,#0x00
      000070                        579 00107$:
      000070 C3               [12]  580 	clr	c
      000071 EC               [12]  581 	mov	a,r4
      000072 9E               [12]  582 	subb	a,r6
      000073 ED               [12]  583 	mov	a,r5
      000074 9F               [12]  584 	subb	a,r7
      000075 50 14            [24]  585 	jnc	00109$
                                    586 ;	../Firmware/src/utils.c:6: for (j = 0; j < 123; j++) {
      000077 7A 7B            [12]  587 	mov	r2,#0x7b
      000079 7B 00            [12]  588 	mov	r3,#0x00
      00007B                        589 00105$:
      00007B 1A               [12]  590 	dec	r2
      00007C BA FF 01         [24]  591 	cjne	r2,#0xff,00138$
      00007F 1B               [12]  592 	dec	r3
      000080                        593 00138$:
      000080 EA               [12]  594 	mov	a,r2
      000081 4B               [12]  595 	orl	a,r3
      000082 70 F7            [24]  596 	jnz	00105$
                                    597 ;	../Firmware/src/utils.c:5: for (i = 0; i < ms; i++) {
      000084 0C               [12]  598 	inc	r4
      000085 BC 00 E8         [24]  599 	cjne	r4,#0x00,00107$
      000088 0D               [12]  600 	inc	r5
      000089 80 E5            [24]  601 	sjmp	00107$
      00008B                        602 00109$:
                                    603 ;	../Firmware/src/utils.c:9: }
      00008B 22               [24]  604 	ret
                                    605 	.area CSEG    (CODE)
                                    606 	.area CONST   (CODE)
                                    607 	.area XINIT   (CODE)
                                    608 	.area CABS    (ABS,CODE)

                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _delay
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _UIF_BUS_RST
                                     89 	.globl _UIF_TRANSFER
                                     90 	.globl _UIF_SUSPEND
                                     91 	.globl _UIF_FIFO_OV
                                     92 	.globl _U_SIE_FREE
                                     93 	.globl _U_TOG_OK
                                     94 	.globl _U_IS_NAK
                                     95 	.globl _ADC_CHAN0
                                     96 	.globl _ADC_CHAN1
                                     97 	.globl _CMP_CHAN
                                     98 	.globl _ADC_START
                                     99 	.globl _ADC_IF
                                    100 	.globl _CMP_IF
                                    101 	.globl _CMPO
                                    102 	.globl _U1RI
                                    103 	.globl _U1TI
                                    104 	.globl _U1RB8
                                    105 	.globl _U1TB8
                                    106 	.globl _U1REN
                                    107 	.globl _U1SMOD
                                    108 	.globl _U1SM0
                                    109 	.globl _S0_R_FIFO
                                    110 	.globl _S0_T_FIFO
                                    111 	.globl _S0_FREE
                                    112 	.globl _S0_IF_BYTE
                                    113 	.globl _S0_IF_FIRST
                                    114 	.globl _S0_IF_OV
                                    115 	.globl _S0_FST_ACT
                                    116 	.globl _CP_RL2
                                    117 	.globl _C_T2
                                    118 	.globl _TR2
                                    119 	.globl _EXEN2
                                    120 	.globl _TCLK
                                    121 	.globl _RCLK
                                    122 	.globl _EXF2
                                    123 	.globl _CAP1F
                                    124 	.globl _TF2
                                    125 	.globl _PWM1_
                                    126 	.globl _PWM2_
                                    127 	.globl _AIN3
                                    128 	.globl _VBUS1
                                    129 	.globl _TXD1_
                                    130 	.globl _RXD1_
                                    131 	.globl _PWM2
                                    132 	.globl _UDP
                                    133 	.globl _UDM
                                    134 	.globl _TIN0
                                    135 	.globl _CAP1
                                    136 	.globl _T2
                                    137 	.globl _AIN0
                                    138 	.globl _VBUS2
                                    139 	.globl _TIN1
                                    140 	.globl _CAP2
                                    141 	.globl _T2EX
                                    142 	.globl _RXD_
                                    143 	.globl _TXD_
                                    144 	.globl _AIN1
                                    145 	.globl _UCC1
                                    146 	.globl _TIN2
                                    147 	.globl _SCS
                                    148 	.globl _CAP1_
                                    149 	.globl _T2_
                                    150 	.globl _AIN2
                                    151 	.globl _UCC2
                                    152 	.globl _TIN3
                                    153 	.globl _PWM1
                                    154 	.globl _MOSI
                                    155 	.globl _TIN4
                                    156 	.globl _RXD1
                                    157 	.globl _MISO
                                    158 	.globl _TIN5
                                    159 	.globl _TXD1
                                    160 	.globl _SCK
                                    161 	.globl _IE_SPI0
                                    162 	.globl _IE_TKEY
                                    163 	.globl _IE_USB
                                    164 	.globl _IE_ADC
                                    165 	.globl _IE_UART1
                                    166 	.globl _IE_PWMX
                                    167 	.globl _IE_GPIO
                                    168 	.globl _IE_WDOG
                                    169 	.globl _PT2
                                    170 	.globl _PL_FLAG
                                    171 	.globl _PH_FLAG
                                    172 	.globl _ET2
                                    173 	.globl _E_DIS
                                    174 	.globl _B
                                    175 	.globl _ACC
                                    176 	.globl _PSW
                                    177 	.globl _IP
                                    178 	.globl _P3
                                    179 	.globl _IE
                                    180 	.globl _P2
                                    181 	.globl _SBUF
                                    182 	.globl _SCON
                                    183 	.globl _P1
                                    184 	.globl _TH1
                                    185 	.globl _TH0
                                    186 	.globl _TL1
                                    187 	.globl _TL0
                                    188 	.globl _TMOD
                                    189 	.globl _TCON
                                    190 	.globl _PCON
                                    191 	.globl _DPH
                                    192 	.globl _DPL
                                    193 	.globl _SP
                                    194 	.globl _P0
                                    195 	.globl _UEP1_DMA_H
                                    196 	.globl _UEP1_DMA_L
                                    197 	.globl _UEP1_DMA
                                    198 	.globl _UEP0_DMA_H
                                    199 	.globl _UEP0_DMA_L
                                    200 	.globl _UEP0_DMA
                                    201 	.globl _UEP2_3_MOD
                                    202 	.globl _UEP4_1_MOD
                                    203 	.globl _UEP3_DMA_H
                                    204 	.globl _UEP3_DMA_L
                                    205 	.globl _UEP3_DMA
                                    206 	.globl _UEP2_DMA_H
                                    207 	.globl _UEP2_DMA_L
                                    208 	.globl _UEP2_DMA
                                    209 	.globl _USB_DEV_AD
                                    210 	.globl _USB_CTRL
                                    211 	.globl _USB_INT_EN
                                    212 	.globl _UEP4_T_LEN
                                    213 	.globl _UEP4_CTRL
                                    214 	.globl _UEP0_T_LEN
                                    215 	.globl _UEP0_CTRL
                                    216 	.globl _USB_RX_LEN
                                    217 	.globl _USB_MIS_ST
                                    218 	.globl _USB_INT_ST
                                    219 	.globl _USB_INT_FG
                                    220 	.globl _UEP3_T_LEN
                                    221 	.globl _UEP3_CTRL
                                    222 	.globl _UEP2_T_LEN
                                    223 	.globl _UEP2_CTRL
                                    224 	.globl _UEP1_T_LEN
                                    225 	.globl _UEP1_CTRL
                                    226 	.globl _UDEV_CTRL
                                    227 	.globl _USB_C_CTRL
                                    228 	.globl _TKEY_DATH
                                    229 	.globl _TKEY_DATL
                                    230 	.globl _TKEY_DAT
                                    231 	.globl _TKEY_CTRL
                                    232 	.globl _ADC_DATA
                                    233 	.globl _ADC_CFG
                                    234 	.globl _ADC_CTRL
                                    235 	.globl _SBAUD1
                                    236 	.globl _SBUF1
                                    237 	.globl _SCON1
                                    238 	.globl _SPI0_SETUP
                                    239 	.globl _SPI0_CK_SE
                                    240 	.globl _SPI0_CTRL
                                    241 	.globl _SPI0_DATA
                                    242 	.globl _SPI0_STAT
                                    243 	.globl _PWM_CK_SE
                                    244 	.globl _PWM_CTRL
                                    245 	.globl _PWM_DATA1
                                    246 	.globl _PWM_DATA2
                                    247 	.globl _T2CAP1H
                                    248 	.globl _T2CAP1L
                                    249 	.globl _T2CAP1
                                    250 	.globl _TH2
                                    251 	.globl _TL2
                                    252 	.globl _T2COUNT
                                    253 	.globl _RCAP2H
                                    254 	.globl _RCAP2L
                                    255 	.globl _RCAP2
                                    256 	.globl _T2MOD
                                    257 	.globl _T2CON
                                    258 	.globl _XBUS_AUX
                                    259 	.globl _PIN_FUNC
                                    260 	.globl _P3_DIR_PU
                                    261 	.globl _P3_MOD_OC
                                    262 	.globl _P1_DIR_PU
                                    263 	.globl _P1_MOD_OC
                                    264 	.globl _ROM_CTRL
                                    265 	.globl _ROM_DATA_H
                                    266 	.globl _ROM_DATA_L
                                    267 	.globl _ROM_DATA
                                    268 	.globl _ROM_ADDR_H
                                    269 	.globl _ROM_ADDR_L
                                    270 	.globl _ROM_ADDR
                                    271 	.globl _GPIO_IE
                                    272 	.globl _IP_EX
                                    273 	.globl _IE_EX
                                    274 	.globl _WDOG_COUNT
                                    275 	.globl _RESET_KEEP
                                    276 	.globl _WAKE_CTRL
                                    277 	.globl _CLOCK_CFG
                                    278 	.globl _GLOBAL_CFG
                                    279 	.globl _SAFE_MOD
                                    280 ;--------------------------------------------------------
                                    281 ; special function registers
                                    282 ;--------------------------------------------------------
                                    283 	.area RSEG    (ABS,DATA)
      000000                        284 	.org 0x0000
                           0000A1   285 _SAFE_MOD	=	0x00a1
                           0000B1   286 _GLOBAL_CFG	=	0x00b1
                           0000B9   287 _CLOCK_CFG	=	0x00b9
                           0000A9   288 _WAKE_CTRL	=	0x00a9
                           0000FE   289 _RESET_KEEP	=	0x00fe
                           0000FF   290 _WDOG_COUNT	=	0x00ff
                           0000E8   291 _IE_EX	=	0x00e8
                           0000E9   292 _IP_EX	=	0x00e9
                           0000C7   293 _GPIO_IE	=	0x00c7
                           008584   294 _ROM_ADDR	=	0x8584
                           000084   295 _ROM_ADDR_L	=	0x0084
                           000085   296 _ROM_ADDR_H	=	0x0085
                           008F8E   297 _ROM_DATA	=	0x8f8e
                           00008E   298 _ROM_DATA_L	=	0x008e
                           00008F   299 _ROM_DATA_H	=	0x008f
                           000086   300 _ROM_CTRL	=	0x0086
                           000092   301 _P1_MOD_OC	=	0x0092
                           000093   302 _P1_DIR_PU	=	0x0093
                           000096   303 _P3_MOD_OC	=	0x0096
                           000097   304 _P3_DIR_PU	=	0x0097
                           0000C6   305 _PIN_FUNC	=	0x00c6
                           0000A2   306 _XBUS_AUX	=	0x00a2
                           0000C8   307 _T2CON	=	0x00c8
                           0000C9   308 _T2MOD	=	0x00c9
                           00CBCA   309 _RCAP2	=	0xcbca
                           0000CA   310 _RCAP2L	=	0x00ca
                           0000CB   311 _RCAP2H	=	0x00cb
                           00CDCC   312 _T2COUNT	=	0xcdcc
                           0000CC   313 _TL2	=	0x00cc
                           0000CD   314 _TH2	=	0x00cd
                           00CFCE   315 _T2CAP1	=	0xcfce
                           0000CE   316 _T2CAP1L	=	0x00ce
                           0000CF   317 _T2CAP1H	=	0x00cf
                           00009B   318 _PWM_DATA2	=	0x009b
                           00009C   319 _PWM_DATA1	=	0x009c
                           00009D   320 _PWM_CTRL	=	0x009d
                           00009E   321 _PWM_CK_SE	=	0x009e
                           0000F8   322 _SPI0_STAT	=	0x00f8
                           0000F9   323 _SPI0_DATA	=	0x00f9
                           0000FA   324 _SPI0_CTRL	=	0x00fa
                           0000FB   325 _SPI0_CK_SE	=	0x00fb
                           0000FC   326 _SPI0_SETUP	=	0x00fc
                           0000C0   327 _SCON1	=	0x00c0
                           0000C1   328 _SBUF1	=	0x00c1
                           0000C2   329 _SBAUD1	=	0x00c2
                           000080   330 _ADC_CTRL	=	0x0080
                           00009A   331 _ADC_CFG	=	0x009a
                           00009F   332 _ADC_DATA	=	0x009f
                           0000C3   333 _TKEY_CTRL	=	0x00c3
                           00C5C4   334 _TKEY_DAT	=	0xc5c4
                           0000C4   335 _TKEY_DATL	=	0x00c4
                           0000C5   336 _TKEY_DATH	=	0x00c5
                           000091   337 _USB_C_CTRL	=	0x0091
                           0000D1   338 _UDEV_CTRL	=	0x00d1
                           0000D2   339 _UEP1_CTRL	=	0x00d2
                           0000D3   340 _UEP1_T_LEN	=	0x00d3
                           0000D4   341 _UEP2_CTRL	=	0x00d4
                           0000D5   342 _UEP2_T_LEN	=	0x00d5
                           0000D6   343 _UEP3_CTRL	=	0x00d6
                           0000D7   344 _UEP3_T_LEN	=	0x00d7
                           0000D8   345 _USB_INT_FG	=	0x00d8
                           0000D9   346 _USB_INT_ST	=	0x00d9
                           0000DA   347 _USB_MIS_ST	=	0x00da
                           0000DB   348 _USB_RX_LEN	=	0x00db
                           0000DC   349 _UEP0_CTRL	=	0x00dc
                           0000DD   350 _UEP0_T_LEN	=	0x00dd
                           0000DE   351 _UEP4_CTRL	=	0x00de
                           0000DF   352 _UEP4_T_LEN	=	0x00df
                           0000E1   353 _USB_INT_EN	=	0x00e1
                           0000E2   354 _USB_CTRL	=	0x00e2
                           0000E3   355 _USB_DEV_AD	=	0x00e3
                           00E5E4   356 _UEP2_DMA	=	0xe5e4
                           0000E4   357 _UEP2_DMA_L	=	0x00e4
                           0000E5   358 _UEP2_DMA_H	=	0x00e5
                           00E7E6   359 _UEP3_DMA	=	0xe7e6
                           0000E6   360 _UEP3_DMA_L	=	0x00e6
                           0000E7   361 _UEP3_DMA_H	=	0x00e7
                           0000EA   362 _UEP4_1_MOD	=	0x00ea
                           0000EB   363 _UEP2_3_MOD	=	0x00eb
                           00EDEC   364 _UEP0_DMA	=	0xedec
                           0000EC   365 _UEP0_DMA_L	=	0x00ec
                           0000ED   366 _UEP0_DMA_H	=	0x00ed
                           00EFEE   367 _UEP1_DMA	=	0xefee
                           0000EE   368 _UEP1_DMA_L	=	0x00ee
                           0000EF   369 _UEP1_DMA_H	=	0x00ef
                           000080   370 _P0	=	0x0080
                           000081   371 _SP	=	0x0081
                           000082   372 _DPL	=	0x0082
                           000083   373 _DPH	=	0x0083
                           000087   374 _PCON	=	0x0087
                           000088   375 _TCON	=	0x0088
                           000089   376 _TMOD	=	0x0089
                           00008A   377 _TL0	=	0x008a
                           00008B   378 _TL1	=	0x008b
                           00008C   379 _TH0	=	0x008c
                           00008D   380 _TH1	=	0x008d
                           000090   381 _P1	=	0x0090
                           000098   382 _SCON	=	0x0098
                           000099   383 _SBUF	=	0x0099
                           0000A0   384 _P2	=	0x00a0
                           0000A8   385 _IE	=	0x00a8
                           0000B0   386 _P3	=	0x00b0
                           0000B8   387 _IP	=	0x00b8
                           0000D0   388 _PSW	=	0x00d0
                           0000E0   389 _ACC	=	0x00e0
                           0000F0   390 _B	=	0x00f0
                                    391 ;--------------------------------------------------------
                                    392 ; special function bits
                                    393 ;--------------------------------------------------------
                                    394 	.area RSEG    (ABS,DATA)
      000000                        395 	.org 0x0000
                           0000AE   396 _E_DIS	=	0x00ae
                           0000AD   397 _ET2	=	0x00ad
                           0000BF   398 _PH_FLAG	=	0x00bf
                           0000BE   399 _PL_FLAG	=	0x00be
                           0000BD   400 _PT2	=	0x00bd
                           0000EF   401 _IE_WDOG	=	0x00ef
                           0000EE   402 _IE_GPIO	=	0x00ee
                           0000ED   403 _IE_PWMX	=	0x00ed
                           0000EC   404 _IE_UART1	=	0x00ec
                           0000EB   405 _IE_ADC	=	0x00eb
                           0000EA   406 _IE_USB	=	0x00ea
                           0000E9   407 _IE_TKEY	=	0x00e9
                           0000E8   408 _IE_SPI0	=	0x00e8
                           000097   409 _SCK	=	0x0097
                           000097   410 _TXD1	=	0x0097
                           000097   411 _TIN5	=	0x0097
                           000096   412 _MISO	=	0x0096
                           000096   413 _RXD1	=	0x0096
                           000096   414 _TIN4	=	0x0096
                           000095   415 _MOSI	=	0x0095
                           000095   416 _PWM1	=	0x0095
                           000095   417 _TIN3	=	0x0095
                           000095   418 _UCC2	=	0x0095
                           000095   419 _AIN2	=	0x0095
                           000094   420 _T2_	=	0x0094
                           000094   421 _CAP1_	=	0x0094
                           000094   422 _SCS	=	0x0094
                           000094   423 _TIN2	=	0x0094
                           000094   424 _UCC1	=	0x0094
                           000094   425 _AIN1	=	0x0094
                           000093   426 _TXD_	=	0x0093
                           000092   427 _RXD_	=	0x0092
                           000091   428 _T2EX	=	0x0091
                           000091   429 _CAP2	=	0x0091
                           000091   430 _TIN1	=	0x0091
                           000091   431 _VBUS2	=	0x0091
                           000091   432 _AIN0	=	0x0091
                           000090   433 _T2	=	0x0090
                           000090   434 _CAP1	=	0x0090
                           000090   435 _TIN0	=	0x0090
                           0000B7   436 _UDM	=	0x00b7
                           0000B6   437 _UDP	=	0x00b6
                           0000B4   438 _PWM2	=	0x00b4
                           0000B4   439 _RXD1_	=	0x00b4
                           0000B2   440 _TXD1_	=	0x00b2
                           0000B2   441 _VBUS1	=	0x00b2
                           0000B2   442 _AIN3	=	0x00b2
                           0000B1   443 _PWM2_	=	0x00b1
                           0000B0   444 _PWM1_	=	0x00b0
                           0000CF   445 _TF2	=	0x00cf
                           0000CF   446 _CAP1F	=	0x00cf
                           0000CE   447 _EXF2	=	0x00ce
                           0000CD   448 _RCLK	=	0x00cd
                           0000CC   449 _TCLK	=	0x00cc
                           0000CB   450 _EXEN2	=	0x00cb
                           0000CA   451 _TR2	=	0x00ca
                           0000C9   452 _C_T2	=	0x00c9
                           0000C8   453 _CP_RL2	=	0x00c8
                           0000FF   454 _S0_FST_ACT	=	0x00ff
                           0000FE   455 _S0_IF_OV	=	0x00fe
                           0000FD   456 _S0_IF_FIRST	=	0x00fd
                           0000FC   457 _S0_IF_BYTE	=	0x00fc
                           0000FB   458 _S0_FREE	=	0x00fb
                           0000FA   459 _S0_T_FIFO	=	0x00fa
                           0000F8   460 _S0_R_FIFO	=	0x00f8
                           0000C7   461 _U1SM0	=	0x00c7
                           0000C5   462 _U1SMOD	=	0x00c5
                           0000C4   463 _U1REN	=	0x00c4
                           0000C3   464 _U1TB8	=	0x00c3
                           0000C2   465 _U1RB8	=	0x00c2
                           0000C1   466 _U1TI	=	0x00c1
                           0000C0   467 _U1RI	=	0x00c0
                           000087   468 _CMPO	=	0x0087
                           000086   469 _CMP_IF	=	0x0086
                           000085   470 _ADC_IF	=	0x0085
                           000084   471 _ADC_START	=	0x0084
                           000083   472 _CMP_CHAN	=	0x0083
                           000081   473 _ADC_CHAN1	=	0x0081
                           000080   474 _ADC_CHAN0	=	0x0080
                           0000DF   475 _U_IS_NAK	=	0x00df
                           0000DE   476 _U_TOG_OK	=	0x00de
                           0000DD   477 _U_SIE_FREE	=	0x00dd
                           0000DC   478 _UIF_FIFO_OV	=	0x00dc
                           0000DA   479 _UIF_SUSPEND	=	0x00da
                           0000D9   480 _UIF_TRANSFER	=	0x00d9
                           0000D8   481 _UIF_BUS_RST	=	0x00d8
                           000080   482 _P0_0	=	0x0080
                           000081   483 _P0_1	=	0x0081
                           000082   484 _P0_2	=	0x0082
                           000083   485 _P0_3	=	0x0083
                           000084   486 _P0_4	=	0x0084
                           000085   487 _P0_5	=	0x0085
                           000086   488 _P0_6	=	0x0086
                           000087   489 _P0_7	=	0x0087
                           000088   490 _IT0	=	0x0088
                           000089   491 _IE0	=	0x0089
                           00008A   492 _IT1	=	0x008a
                           00008B   493 _IE1	=	0x008b
                           00008C   494 _TR0	=	0x008c
                           00008D   495 _TF0	=	0x008d
                           00008E   496 _TR1	=	0x008e
                           00008F   497 _TF1	=	0x008f
                           000090   498 _P1_0	=	0x0090
                           000091   499 _P1_1	=	0x0091
                           000092   500 _P1_2	=	0x0092
                           000093   501 _P1_3	=	0x0093
                           000094   502 _P1_4	=	0x0094
                           000095   503 _P1_5	=	0x0095
                           000096   504 _P1_6	=	0x0096
                           000097   505 _P1_7	=	0x0097
                           000098   506 _RI	=	0x0098
                           000099   507 _TI	=	0x0099
                           00009A   508 _RB8	=	0x009a
                           00009B   509 _TB8	=	0x009b
                           00009C   510 _REN	=	0x009c
                           00009D   511 _SM2	=	0x009d
                           00009E   512 _SM1	=	0x009e
                           00009F   513 _SM0	=	0x009f
                           0000A0   514 _P2_0	=	0x00a0
                           0000A1   515 _P2_1	=	0x00a1
                           0000A2   516 _P2_2	=	0x00a2
                           0000A3   517 _P2_3	=	0x00a3
                           0000A4   518 _P2_4	=	0x00a4
                           0000A5   519 _P2_5	=	0x00a5
                           0000A6   520 _P2_6	=	0x00a6
                           0000A7   521 _P2_7	=	0x00a7
                           0000A8   522 _EX0	=	0x00a8
                           0000A9   523 _ET0	=	0x00a9
                           0000AA   524 _EX1	=	0x00aa
                           0000AB   525 _ET1	=	0x00ab
                           0000AC   526 _ES	=	0x00ac
                           0000AF   527 _EA	=	0x00af
                           0000B0   528 _P3_0	=	0x00b0
                           0000B1   529 _P3_1	=	0x00b1
                           0000B2   530 _P3_2	=	0x00b2
                           0000B3   531 _P3_3	=	0x00b3
                           0000B4   532 _P3_4	=	0x00b4
                           0000B5   533 _P3_5	=	0x00b5
                           0000B6   534 _P3_6	=	0x00b6
                           0000B7   535 _P3_7	=	0x00b7
                           0000B0   536 _RXD	=	0x00b0
                           0000B1   537 _TXD	=	0x00b1
                           0000B2   538 _INT0	=	0x00b2
                           0000B3   539 _INT1	=	0x00b3
                           0000B4   540 _T0	=	0x00b4
                           0000B5   541 _T1	=	0x00b5
                           0000B6   542 _WR	=	0x00b6
                           0000B7   543 _RD	=	0x00b7
                           0000B8   544 _PX0	=	0x00b8
                           0000B9   545 _PT0	=	0x00b9
                           0000BA   546 _PX1	=	0x00ba
                           0000BB   547 _PT1	=	0x00bb
                           0000BC   548 _PS	=	0x00bc
                           0000D0   549 _P	=	0x00d0
                           0000D1   550 _F1	=	0x00d1
                           0000D2   551 _OV	=	0x00d2
                           0000D3   552 _RS0	=	0x00d3
                           0000D4   553 _RS1	=	0x00d4
                           0000D5   554 _F0	=	0x00d5
                           0000D6   555 _AC	=	0x00d6
                           0000D7   556 _CY	=	0x00d7
                                    557 ;--------------------------------------------------------
                                    558 ; overlayable register banks
                                    559 ;--------------------------------------------------------
                                    560 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        561 	.ds 8
                                    562 ;--------------------------------------------------------
                                    563 ; internal ram data
                                    564 ;--------------------------------------------------------
                                    565 	.area DSEG    (DATA)
                                    566 ;--------------------------------------------------------
                                    567 ; overlayable items in internal ram
                                    568 ;--------------------------------------------------------
                                    569 ;--------------------------------------------------------
                                    570 ; Stack segment in internal ram
                                    571 ;--------------------------------------------------------
                                    572 	.area SSEG
      000008                        573 __start__stack:
      000008                        574 	.ds	1
                                    575 
                                    576 ;--------------------------------------------------------
                                    577 ; indirectly addressable internal ram data
                                    578 ;--------------------------------------------------------
                                    579 	.area ISEG    (DATA)
                                    580 ;--------------------------------------------------------
                                    581 ; absolute internal ram data
                                    582 ;--------------------------------------------------------
                                    583 	.area IABS    (ABS,DATA)
                                    584 	.area IABS    (ABS,DATA)
                                    585 ;--------------------------------------------------------
                                    586 ; bit data
                                    587 ;--------------------------------------------------------
                                    588 	.area BSEG    (BIT)
                                    589 ;--------------------------------------------------------
                                    590 ; paged external ram data
                                    591 ;--------------------------------------------------------
                                    592 	.area PSEG    (PAG,XDATA)
                                    593 ;--------------------------------------------------------
                                    594 ; uninitialized external ram data
                                    595 ;--------------------------------------------------------
                                    596 	.area XSEG    (XDATA)
                                    597 ;--------------------------------------------------------
                                    598 ; absolute external ram data
                                    599 ;--------------------------------------------------------
                                    600 	.area XABS    (ABS,XDATA)
                                    601 ;--------------------------------------------------------
                                    602 ; initialized external ram data
                                    603 ;--------------------------------------------------------
                                    604 	.area XISEG   (XDATA)
                                    605 	.area HOME    (CODE)
                                    606 	.area GSINIT0 (CODE)
                                    607 	.area GSINIT1 (CODE)
                                    608 	.area GSINIT2 (CODE)
                                    609 	.area GSINIT3 (CODE)
                                    610 	.area GSINIT4 (CODE)
                                    611 	.area GSINIT5 (CODE)
                                    612 	.area GSINIT  (CODE)
                                    613 	.area GSFINAL (CODE)
                                    614 	.area CSEG    (CODE)
                                    615 ;--------------------------------------------------------
                                    616 ; interrupt vector
                                    617 ;--------------------------------------------------------
                                    618 	.area HOME    (CODE)
      000000                        619 __interrupt_vect:
      000000 02 00 06         [24]  620 	ljmp	__sdcc_gsinit_startup
                                    621 ;--------------------------------------------------------
                                    622 ; global & static initialisations
                                    623 ;--------------------------------------------------------
                                    624 	.area HOME    (CODE)
                                    625 	.area GSINIT  (CODE)
                                    626 	.area GSFINAL (CODE)
                                    627 	.area GSINIT  (CODE)
                                    628 	.globl __sdcc_gsinit_startup
                                    629 	.globl __sdcc_program_startup
                                    630 	.globl __start__stack
                                    631 	.globl __mcs51_genXINIT
                                    632 	.globl __mcs51_genXRAMCLEAR
                                    633 	.globl __mcs51_genRAMCLEAR
                                    634 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  635 	ljmp	__sdcc_program_startup
                                    636 ;--------------------------------------------------------
                                    637 ; Home
                                    638 ;--------------------------------------------------------
                                    639 	.area HOME    (CODE)
                                    640 	.area HOME    (CODE)
      000003                        641 __sdcc_program_startup:
      000003 02 00 62         [24]  642 	ljmp	_main
                                    643 ;	return from main will return to caller
                                    644 ;--------------------------------------------------------
                                    645 ; code
                                    646 ;--------------------------------------------------------
                                    647 	.area CSEG    (CODE)
                                    648 ;------------------------------------------------------------
                                    649 ;Allocation info for local variables in function 'main'
                                    650 ;------------------------------------------------------------
                                    651 ;	../Firmware/src/main.c:5: void main(void) {
                                    652 ;	-----------------------------------------
                                    653 ;	 function main
                                    654 ;	-----------------------------------------
      000062                        655 _main:
                           000007   656 	ar7 = 0x07
                           000006   657 	ar6 = 0x06
                           000005   658 	ar5 = 0x05
                           000004   659 	ar4 = 0x04
                           000003   660 	ar3 = 0x03
                           000002   661 	ar2 = 0x02
                           000001   662 	ar1 = 0x01
                           000000   663 	ar0 = 0x00
                                    664 ;	../Firmware/src/main.c:6: delay(10);
      000062 90 00 0A         [24]  665 	mov	dptr,#0x000a
                                    666 ;	../Firmware/src/main.c:7: }
      000065 02 00 68         [24]  667 	ljmp	_delay
                                    668 	.area CSEG    (CODE)
                                    669 	.area CONST   (CODE)
                                    670 	.area XINIT   (CODE)
                                    671 	.area CABS    (ABS,CODE)

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
                                     11 	.globl _timer_interrupt_PARM_2
                                     12 	.globl _update_timer_reg_PARM_2
                                     13 	.globl _select_tmr_clk_src_PARM_2
                                     14 	.globl _select_timer_clk_PARM_2
                                     15 	.globl _set_timer_mode_PARM_2
                                     16 	.globl _set_port_value_PARM_2
                                     17 	.globl _set_port_dir_PARM_2
                                     18 	.globl _set_output_mode_PARM_2
                                     19 	.globl _is_adc_done
                                     20 	.globl _start_adc
                                     21 	.globl _strlen
                                     22 	.globl _strcat
                                     23 	.globl _strcpy
                                     24 	.globl _DeviceSerialNumber
                                     25 	.globl _UIF_BUS_RST
                                     26 	.globl _UIF_TRANSFER
                                     27 	.globl _UIF_SUSPEND
                                     28 	.globl _UIF_FIFO_OV
                                     29 	.globl _U_SIE_FREE
                                     30 	.globl _U_TOG_OK
                                     31 	.globl _U_IS_NAK
                                     32 	.globl _ADC_CHAN0
                                     33 	.globl _ADC_CHAN1
                                     34 	.globl _CMP_CHAN
                                     35 	.globl _ADC_START
                                     36 	.globl _ADC_IF
                                     37 	.globl _CMP_IF
                                     38 	.globl _CMPO
                                     39 	.globl _U1RI
                                     40 	.globl _U1TI
                                     41 	.globl _U1RB8
                                     42 	.globl _U1TB8
                                     43 	.globl _U1REN
                                     44 	.globl _U1SMOD
                                     45 	.globl _U1SM0
                                     46 	.globl _S0_R_FIFO
                                     47 	.globl _S0_T_FIFO
                                     48 	.globl _S0_FREE
                                     49 	.globl _S0_IF_BYTE
                                     50 	.globl _S0_IF_FIRST
                                     51 	.globl _S0_IF_OV
                                     52 	.globl _S0_FST_ACT
                                     53 	.globl _CP_RL2
                                     54 	.globl _C_T2
                                     55 	.globl _TR2
                                     56 	.globl _EXEN2
                                     57 	.globl _TCLK
                                     58 	.globl _RCLK
                                     59 	.globl _EXF2
                                     60 	.globl _CAP1F
                                     61 	.globl _TF2
                                     62 	.globl _RI
                                     63 	.globl _TI
                                     64 	.globl _RB8
                                     65 	.globl _TB8
                                     66 	.globl _REN
                                     67 	.globl _SM2
                                     68 	.globl _SM1
                                     69 	.globl _SM0
                                     70 	.globl _IT0
                                     71 	.globl _IE0
                                     72 	.globl _IT1
                                     73 	.globl _IE1
                                     74 	.globl _TR0
                                     75 	.globl _TF0
                                     76 	.globl _TR1
                                     77 	.globl _TF1
                                     78 	.globl _RXD
                                     79 	.globl _PWM1_
                                     80 	.globl _TXD
                                     81 	.globl _PWM2_
                                     82 	.globl _AIN3
                                     83 	.globl _VBUS1
                                     84 	.globl _INT0
                                     85 	.globl _TXD1_
                                     86 	.globl _INT1
                                     87 	.globl _T0
                                     88 	.globl _RXD1_
                                     89 	.globl _PWM2
                                     90 	.globl _T1
                                     91 	.globl _UDP
                                     92 	.globl _UDM
                                     93 	.globl _TIN0
                                     94 	.globl _CAP1
                                     95 	.globl _T2
                                     96 	.globl _AIN0
                                     97 	.globl _VBUS2
                                     98 	.globl _TIN1
                                     99 	.globl _CAP2
                                    100 	.globl _T2EX
                                    101 	.globl _RXD_
                                    102 	.globl _TXD_
                                    103 	.globl _AIN1
                                    104 	.globl _UCC1
                                    105 	.globl _TIN2
                                    106 	.globl _SCS
                                    107 	.globl _CAP1_
                                    108 	.globl _T2_
                                    109 	.globl _AIN2
                                    110 	.globl _UCC2
                                    111 	.globl _TIN3
                                    112 	.globl _PWM1
                                    113 	.globl _MOSI
                                    114 	.globl _TIN4
                                    115 	.globl _RXD1
                                    116 	.globl _MISO
                                    117 	.globl _TIN5
                                    118 	.globl _TXD1
                                    119 	.globl _SCK
                                    120 	.globl _IE_SPI0
                                    121 	.globl _IE_TKEY
                                    122 	.globl _IE_USB
                                    123 	.globl _IE_ADC
                                    124 	.globl _IE_UART1
                                    125 	.globl _IE_PWMX
                                    126 	.globl _IE_GPIO
                                    127 	.globl _IE_WDOG
                                    128 	.globl _PX0
                                    129 	.globl _PT0
                                    130 	.globl _PX1
                                    131 	.globl _PT1
                                    132 	.globl _PS
                                    133 	.globl _PT2
                                    134 	.globl _PL_FLAG
                                    135 	.globl _PH_FLAG
                                    136 	.globl _EX0
                                    137 	.globl _ET0
                                    138 	.globl _EX1
                                    139 	.globl _ET1
                                    140 	.globl _ES
                                    141 	.globl _ET2
                                    142 	.globl _E_DIS
                                    143 	.globl _EA
                                    144 	.globl _P
                                    145 	.globl _F1
                                    146 	.globl _OV
                                    147 	.globl _RS0
                                    148 	.globl _RS1
                                    149 	.globl _F0
                                    150 	.globl _AC
                                    151 	.globl _CY
                                    152 	.globl _UEP1_DMA_H
                                    153 	.globl _UEP1_DMA_L
                                    154 	.globl _UEP1_DMA
                                    155 	.globl _UEP0_DMA_H
                                    156 	.globl _UEP0_DMA_L
                                    157 	.globl _UEP0_DMA
                                    158 	.globl _UEP2_3_MOD
                                    159 	.globl _UEP4_1_MOD
                                    160 	.globl _UEP3_DMA_H
                                    161 	.globl _UEP3_DMA_L
                                    162 	.globl _UEP3_DMA
                                    163 	.globl _UEP2_DMA_H
                                    164 	.globl _UEP2_DMA_L
                                    165 	.globl _UEP2_DMA
                                    166 	.globl _USB_DEV_AD
                                    167 	.globl _USB_CTRL
                                    168 	.globl _USB_INT_EN
                                    169 	.globl _UEP4_T_LEN
                                    170 	.globl _UEP4_CTRL
                                    171 	.globl _UEP0_T_LEN
                                    172 	.globl _UEP0_CTRL
                                    173 	.globl _USB_RX_LEN
                                    174 	.globl _USB_MIS_ST
                                    175 	.globl _USB_INT_ST
                                    176 	.globl _USB_INT_FG
                                    177 	.globl _UEP3_T_LEN
                                    178 	.globl _UEP3_CTRL
                                    179 	.globl _UEP2_T_LEN
                                    180 	.globl _UEP2_CTRL
                                    181 	.globl _UEP1_T_LEN
                                    182 	.globl _UEP1_CTRL
                                    183 	.globl _UDEV_CTRL
                                    184 	.globl _USB_C_CTRL
                                    185 	.globl _TKEY_DATH
                                    186 	.globl _TKEY_DATL
                                    187 	.globl _TKEY_DAT
                                    188 	.globl _TKEY_CTRL
                                    189 	.globl _ADC_DATA
                                    190 	.globl _ADC_CFG
                                    191 	.globl _ADC_CTRL
                                    192 	.globl _SBAUD1
                                    193 	.globl _SBUF1
                                    194 	.globl _SCON1
                                    195 	.globl _SPI0_SETUP
                                    196 	.globl _SPI0_CK_SE
                                    197 	.globl _SPI0_CTRL
                                    198 	.globl _SPI0_DATA
                                    199 	.globl _SPI0_STAT
                                    200 	.globl _PWM_CK_SE
                                    201 	.globl _PWM_CTRL
                                    202 	.globl _PWM_DATA1
                                    203 	.globl _PWM_DATA2
                                    204 	.globl _T2CAP1H
                                    205 	.globl _T2CAP1L
                                    206 	.globl _T2CAP1
                                    207 	.globl _TH2
                                    208 	.globl _TL2
                                    209 	.globl _T2COUNT
                                    210 	.globl _RCAP2H
                                    211 	.globl _RCAP2L
                                    212 	.globl _RCAP2
                                    213 	.globl _T2MOD
                                    214 	.globl _T2CON
                                    215 	.globl _SBUF
                                    216 	.globl _SCON
                                    217 	.globl _TH1
                                    218 	.globl _TH0
                                    219 	.globl _TL1
                                    220 	.globl _TL0
                                    221 	.globl _TMOD
                                    222 	.globl _TCON
                                    223 	.globl _XBUS_AUX
                                    224 	.globl _PIN_FUNC
                                    225 	.globl _P3_DIR_PU
                                    226 	.globl _P3_MOD_OC
                                    227 	.globl _P3
                                    228 	.globl _P2
                                    229 	.globl _P1_DIR_PU
                                    230 	.globl _P1_MOD_OC
                                    231 	.globl _P1
                                    232 	.globl _ROM_CTRL
                                    233 	.globl _ROM_DATA_H
                                    234 	.globl _ROM_DATA_L
                                    235 	.globl _ROM_DATA
                                    236 	.globl _ROM_ADDR_H
                                    237 	.globl _ROM_ADDR_L
                                    238 	.globl _ROM_ADDR
                                    239 	.globl _GPIO_IE
                                    240 	.globl _IP_EX
                                    241 	.globl _IE_EX
                                    242 	.globl _IP
                                    243 	.globl _IE
                                    244 	.globl _WDOG_COUNT
                                    245 	.globl _RESET_KEEP
                                    246 	.globl _WAKE_CTRL
                                    247 	.globl _CLOCK_CFG
                                    248 	.globl _PCON
                                    249 	.globl _GLOBAL_CFG
                                    250 	.globl _SAFE_MOD
                                    251 	.globl _DPH
                                    252 	.globl _DPL
                                    253 	.globl _SP
                                    254 	.globl _B
                                    255 	.globl _ACC
                                    256 	.globl _PSW
                                    257 	.globl _pwd
                                    258 	.globl _ssid
                                    259 	.globl _instruction
                                    260 	.globl _getURL_PARM_4
                                    261 	.globl _getURL_PARM_3
                                    262 	.globl _getURL_PARM_2
                                    263 	.globl _convert_PARM_2
                                    264 	.globl _search_str_PARM_2
                                    265 	.globl _uart0_read_string_until_PARM_4
                                    266 	.globl _uart0_read_string_until_PARM_3
                                    267 	.globl _uart0_read_string_until_PARM_2
                                    268 	.globl _uart0_read_bytes_PARM_3
                                    269 	.globl _uart0_read_bytes_PARM_2
                                    270 	.globl _uart0_receive_byte_PARM_2
                                    271 	.globl _uart_begin_PARM_2
                                    272 	.globl _configure_port_PARM_2
                                    273 	.globl _delay
                                    274 	.globl _set_output_mode
                                    275 	.globl _read_output_mode
                                    276 	.globl _set_port_dir
                                    277 	.globl _read_port_dir
                                    278 	.globl _set_port_value
                                    279 	.globl _read_port_value
                                    280 	.globl _configure_port
                                    281 	.globl _ADC_Enable
                                    282 	.globl _set_ADC_speed
                                    283 	.globl _set_ADC_channel
                                    284 	.globl _analog_read
                                    285 	.globl _bit_bang_uart_begin
                                    286 	.globl _bit_bang_uart_tx
                                    287 	.globl _print
                                    288 	.globl _println
                                    289 	.globl _get_system_freq
                                    290 	.globl _set_timer_mode
                                    291 	.globl _select_timer_clk
                                    292 	.globl _select_tmr_clk_src
                                    293 	.globl _update_timer_reg
                                    294 	.globl _timer_interrupt
                                    295 	.globl _start_timer
                                    296 	.globl _stop_timer
                                    297 	.globl _uart_begin
                                    298 	.globl _uart0_write
                                    299 	.globl _uart0_print
                                    300 	.globl _uart0_println
                                    301 	.globl _uart0_receive_byte
                                    302 	.globl _uart0_read_bytes
                                    303 	.globl _uart0_read_string_until
                                    304 	.globl _search_str
                                    305 	.globl _convert_to_percentage
                                    306 	.globl _convert
                                    307 	.globl _getURL
                                    308 ;--------------------------------------------------------
                                    309 ; special function registers
                                    310 ;--------------------------------------------------------
                                    311 	.area RSEG    (ABS,DATA)
      000000                        312 	.org 0x0000
                           0000D0   313 _PSW	=	0x00d0
                           0000E0   314 _ACC	=	0x00e0
                           0000F0   315 _B	=	0x00f0
                           000081   316 _SP	=	0x0081
                           000082   317 _DPL	=	0x0082
                           000083   318 _DPH	=	0x0083
                           0000A1   319 _SAFE_MOD	=	0x00a1
                           0000B1   320 _GLOBAL_CFG	=	0x00b1
                           000087   321 _PCON	=	0x0087
                           0000B9   322 _CLOCK_CFG	=	0x00b9
                           0000A9   323 _WAKE_CTRL	=	0x00a9
                           0000FE   324 _RESET_KEEP	=	0x00fe
                           0000FF   325 _WDOG_COUNT	=	0x00ff
                           0000A8   326 _IE	=	0x00a8
                           0000B8   327 _IP	=	0x00b8
                           0000E8   328 _IE_EX	=	0x00e8
                           0000E9   329 _IP_EX	=	0x00e9
                           0000C7   330 _GPIO_IE	=	0x00c7
                           008584   331 _ROM_ADDR	=	0x8584
                           000084   332 _ROM_ADDR_L	=	0x0084
                           000085   333 _ROM_ADDR_H	=	0x0085
                           008F8E   334 _ROM_DATA	=	0x8f8e
                           00008E   335 _ROM_DATA_L	=	0x008e
                           00008F   336 _ROM_DATA_H	=	0x008f
                           000086   337 _ROM_CTRL	=	0x0086
                           000090   338 _P1	=	0x0090
                           000092   339 _P1_MOD_OC	=	0x0092
                           000093   340 _P1_DIR_PU	=	0x0093
                           0000A0   341 _P2	=	0x00a0
                           0000B0   342 _P3	=	0x00b0
                           000096   343 _P3_MOD_OC	=	0x0096
                           000097   344 _P3_DIR_PU	=	0x0097
                           0000C6   345 _PIN_FUNC	=	0x00c6
                           0000A2   346 _XBUS_AUX	=	0x00a2
                           000088   347 _TCON	=	0x0088
                           000089   348 _TMOD	=	0x0089
                           00008A   349 _TL0	=	0x008a
                           00008B   350 _TL1	=	0x008b
                           00008C   351 _TH0	=	0x008c
                           00008D   352 _TH1	=	0x008d
                           000098   353 _SCON	=	0x0098
                           000099   354 _SBUF	=	0x0099
                           0000C8   355 _T2CON	=	0x00c8
                           0000C9   356 _T2MOD	=	0x00c9
                           00CBCA   357 _RCAP2	=	0xcbca
                           0000CA   358 _RCAP2L	=	0x00ca
                           0000CB   359 _RCAP2H	=	0x00cb
                           00CDCC   360 _T2COUNT	=	0xcdcc
                           0000CC   361 _TL2	=	0x00cc
                           0000CD   362 _TH2	=	0x00cd
                           00CFCE   363 _T2CAP1	=	0xcfce
                           0000CE   364 _T2CAP1L	=	0x00ce
                           0000CF   365 _T2CAP1H	=	0x00cf
                           00009B   366 _PWM_DATA2	=	0x009b
                           00009C   367 _PWM_DATA1	=	0x009c
                           00009D   368 _PWM_CTRL	=	0x009d
                           00009E   369 _PWM_CK_SE	=	0x009e
                           0000F8   370 _SPI0_STAT	=	0x00f8
                           0000F9   371 _SPI0_DATA	=	0x00f9
                           0000FA   372 _SPI0_CTRL	=	0x00fa
                           0000FB   373 _SPI0_CK_SE	=	0x00fb
                           0000FC   374 _SPI0_SETUP	=	0x00fc
                           0000C0   375 _SCON1	=	0x00c0
                           0000C1   376 _SBUF1	=	0x00c1
                           0000C2   377 _SBAUD1	=	0x00c2
                           000080   378 _ADC_CTRL	=	0x0080
                           00009A   379 _ADC_CFG	=	0x009a
                           00009F   380 _ADC_DATA	=	0x009f
                           0000C3   381 _TKEY_CTRL	=	0x00c3
                           00C5C4   382 _TKEY_DAT	=	0xc5c4
                           0000C4   383 _TKEY_DATL	=	0x00c4
                           0000C5   384 _TKEY_DATH	=	0x00c5
                           000091   385 _USB_C_CTRL	=	0x0091
                           0000D1   386 _UDEV_CTRL	=	0x00d1
                           0000D2   387 _UEP1_CTRL	=	0x00d2
                           0000D3   388 _UEP1_T_LEN	=	0x00d3
                           0000D4   389 _UEP2_CTRL	=	0x00d4
                           0000D5   390 _UEP2_T_LEN	=	0x00d5
                           0000D6   391 _UEP3_CTRL	=	0x00d6
                           0000D7   392 _UEP3_T_LEN	=	0x00d7
                           0000D8   393 _USB_INT_FG	=	0x00d8
                           0000D9   394 _USB_INT_ST	=	0x00d9
                           0000DA   395 _USB_MIS_ST	=	0x00da
                           0000DB   396 _USB_RX_LEN	=	0x00db
                           0000DC   397 _UEP0_CTRL	=	0x00dc
                           0000DD   398 _UEP0_T_LEN	=	0x00dd
                           0000DE   399 _UEP4_CTRL	=	0x00de
                           0000DF   400 _UEP4_T_LEN	=	0x00df
                           0000E1   401 _USB_INT_EN	=	0x00e1
                           0000E2   402 _USB_CTRL	=	0x00e2
                           0000E3   403 _USB_DEV_AD	=	0x00e3
                           00E5E4   404 _UEP2_DMA	=	0xe5e4
                           0000E4   405 _UEP2_DMA_L	=	0x00e4
                           0000E5   406 _UEP2_DMA_H	=	0x00e5
                           00E7E6   407 _UEP3_DMA	=	0xe7e6
                           0000E6   408 _UEP3_DMA_L	=	0x00e6
                           0000E7   409 _UEP3_DMA_H	=	0x00e7
                           0000EA   410 _UEP4_1_MOD	=	0x00ea
                           0000EB   411 _UEP2_3_MOD	=	0x00eb
                           00EDEC   412 _UEP0_DMA	=	0xedec
                           0000EC   413 _UEP0_DMA_L	=	0x00ec
                           0000ED   414 _UEP0_DMA_H	=	0x00ed
                           00EFEE   415 _UEP1_DMA	=	0xefee
                           0000EE   416 _UEP1_DMA_L	=	0x00ee
                           0000EF   417 _UEP1_DMA_H	=	0x00ef
                                    418 ;--------------------------------------------------------
                                    419 ; special function bits
                                    420 ;--------------------------------------------------------
                                    421 	.area RSEG    (ABS,DATA)
      000000                        422 	.org 0x0000
                           0000D7   423 _CY	=	0x00d7
                           0000D6   424 _AC	=	0x00d6
                           0000D5   425 _F0	=	0x00d5
                           0000D4   426 _RS1	=	0x00d4
                           0000D3   427 _RS0	=	0x00d3
                           0000D2   428 _OV	=	0x00d2
                           0000D1   429 _F1	=	0x00d1
                           0000D0   430 _P	=	0x00d0
                           0000AF   431 _EA	=	0x00af
                           0000AE   432 _E_DIS	=	0x00ae
                           0000AD   433 _ET2	=	0x00ad
                           0000AC   434 _ES	=	0x00ac
                           0000AB   435 _ET1	=	0x00ab
                           0000AA   436 _EX1	=	0x00aa
                           0000A9   437 _ET0	=	0x00a9
                           0000A8   438 _EX0	=	0x00a8
                           0000BF   439 _PH_FLAG	=	0x00bf
                           0000BE   440 _PL_FLAG	=	0x00be
                           0000BD   441 _PT2	=	0x00bd
                           0000BC   442 _PS	=	0x00bc
                           0000BB   443 _PT1	=	0x00bb
                           0000BA   444 _PX1	=	0x00ba
                           0000B9   445 _PT0	=	0x00b9
                           0000B8   446 _PX0	=	0x00b8
                           0000EF   447 _IE_WDOG	=	0x00ef
                           0000EE   448 _IE_GPIO	=	0x00ee
                           0000ED   449 _IE_PWMX	=	0x00ed
                           0000EC   450 _IE_UART1	=	0x00ec
                           0000EB   451 _IE_ADC	=	0x00eb
                           0000EA   452 _IE_USB	=	0x00ea
                           0000E9   453 _IE_TKEY	=	0x00e9
                           0000E8   454 _IE_SPI0	=	0x00e8
                           000097   455 _SCK	=	0x0097
                           000097   456 _TXD1	=	0x0097
                           000097   457 _TIN5	=	0x0097
                           000096   458 _MISO	=	0x0096
                           000096   459 _RXD1	=	0x0096
                           000096   460 _TIN4	=	0x0096
                           000095   461 _MOSI	=	0x0095
                           000095   462 _PWM1	=	0x0095
                           000095   463 _TIN3	=	0x0095
                           000095   464 _UCC2	=	0x0095
                           000095   465 _AIN2	=	0x0095
                           000094   466 _T2_	=	0x0094
                           000094   467 _CAP1_	=	0x0094
                           000094   468 _SCS	=	0x0094
                           000094   469 _TIN2	=	0x0094
                           000094   470 _UCC1	=	0x0094
                           000094   471 _AIN1	=	0x0094
                           000093   472 _TXD_	=	0x0093
                           000092   473 _RXD_	=	0x0092
                           000091   474 _T2EX	=	0x0091
                           000091   475 _CAP2	=	0x0091
                           000091   476 _TIN1	=	0x0091
                           000091   477 _VBUS2	=	0x0091
                           000091   478 _AIN0	=	0x0091
                           000090   479 _T2	=	0x0090
                           000090   480 _CAP1	=	0x0090
                           000090   481 _TIN0	=	0x0090
                           0000B7   482 _UDM	=	0x00b7
                           0000B6   483 _UDP	=	0x00b6
                           0000B5   484 _T1	=	0x00b5
                           0000B4   485 _PWM2	=	0x00b4
                           0000B4   486 _RXD1_	=	0x00b4
                           0000B4   487 _T0	=	0x00b4
                           0000B3   488 _INT1	=	0x00b3
                           0000B2   489 _TXD1_	=	0x00b2
                           0000B2   490 _INT0	=	0x00b2
                           0000B2   491 _VBUS1	=	0x00b2
                           0000B2   492 _AIN3	=	0x00b2
                           0000B1   493 _PWM2_	=	0x00b1
                           0000B1   494 _TXD	=	0x00b1
                           0000B0   495 _PWM1_	=	0x00b0
                           0000B0   496 _RXD	=	0x00b0
                           00008F   497 _TF1	=	0x008f
                           00008E   498 _TR1	=	0x008e
                           00008D   499 _TF0	=	0x008d
                           00008C   500 _TR0	=	0x008c
                           00008B   501 _IE1	=	0x008b
                           00008A   502 _IT1	=	0x008a
                           000089   503 _IE0	=	0x0089
                           000088   504 _IT0	=	0x0088
                           00009F   505 _SM0	=	0x009f
                           00009E   506 _SM1	=	0x009e
                           00009D   507 _SM2	=	0x009d
                           00009C   508 _REN	=	0x009c
                           00009B   509 _TB8	=	0x009b
                           00009A   510 _RB8	=	0x009a
                           000099   511 _TI	=	0x0099
                           000098   512 _RI	=	0x0098
                           0000CF   513 _TF2	=	0x00cf
                           0000CF   514 _CAP1F	=	0x00cf
                           0000CE   515 _EXF2	=	0x00ce
                           0000CD   516 _RCLK	=	0x00cd
                           0000CC   517 _TCLK	=	0x00cc
                           0000CB   518 _EXEN2	=	0x00cb
                           0000CA   519 _TR2	=	0x00ca
                           0000C9   520 _C_T2	=	0x00c9
                           0000C8   521 _CP_RL2	=	0x00c8
                           0000FF   522 _S0_FST_ACT	=	0x00ff
                           0000FE   523 _S0_IF_OV	=	0x00fe
                           0000FD   524 _S0_IF_FIRST	=	0x00fd
                           0000FC   525 _S0_IF_BYTE	=	0x00fc
                           0000FB   526 _S0_FREE	=	0x00fb
                           0000FA   527 _S0_T_FIFO	=	0x00fa
                           0000F8   528 _S0_R_FIFO	=	0x00f8
                           0000C7   529 _U1SM0	=	0x00c7
                           0000C5   530 _U1SMOD	=	0x00c5
                           0000C4   531 _U1REN	=	0x00c4
                           0000C3   532 _U1TB8	=	0x00c3
                           0000C2   533 _U1RB8	=	0x00c2
                           0000C1   534 _U1TI	=	0x00c1
                           0000C0   535 _U1RI	=	0x00c0
                           000087   536 _CMPO	=	0x0087
                           000086   537 _CMP_IF	=	0x0086
                           000085   538 _ADC_IF	=	0x0085
                           000084   539 _ADC_START	=	0x0084
                           000083   540 _CMP_CHAN	=	0x0083
                           000081   541 _ADC_CHAN1	=	0x0081
                           000080   542 _ADC_CHAN0	=	0x0080
                           0000DF   543 _U_IS_NAK	=	0x00df
                           0000DE   544 _U_TOG_OK	=	0x00de
                           0000DD   545 _U_SIE_FREE	=	0x00dd
                           0000DC   546 _UIF_FIFO_OV	=	0x00dc
                           0000DA   547 _UIF_SUSPEND	=	0x00da
                           0000D9   548 _UIF_TRANSFER	=	0x00d9
                           0000D8   549 _UIF_BUS_RST	=	0x00d8
                                    550 ;--------------------------------------------------------
                                    551 ; overlayable register banks
                                    552 ;--------------------------------------------------------
                                    553 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        554 	.ds 8
                                    555 ;--------------------------------------------------------
                                    556 ; internal ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area DSEG    (DATA)
      000008                        559 _configure_port_PARM_2:
      000008                        560 	.ds 1
      000009                        561 _uart_begin_PARM_2:
      000009                        562 	.ds 4
      00000D                        563 _uart0_receive_byte_PARM_2:
      00000D                        564 	.ds 1
      00000E                        565 _uart0_read_bytes_PARM_2:
      00000E                        566 	.ds 2
      000010                        567 _uart0_read_bytes_PARM_3:
      000010                        568 	.ds 1
      000011                        569 _uart0_read_bytes_received_bytes_10000_205:
      000011                        570 	.ds 3
      000014                        571 _uart0_read_bytes_current_recv_10000_206:
      000014                        572 	.ds 1
      000015                        573 _uart0_read_string_until_PARM_2:
      000015                        574 	.ds 2
      000017                        575 _uart0_read_string_until_PARM_3:
      000017                        576 	.ds 1
      000018                        577 _uart0_read_string_until_PARM_4:
      000018                        578 	.ds 1
      000019                        579 _uart0_read_string_until_current_recv_10000_210:
      000019                        580 	.ds 1
      00001A                        581 _search_str_PARM_2:
      00001A                        582 	.ds 3
      00001D                        583 _search_str_base_10000_213:
      00001D                        584 	.ds 3
      000020                        585 _search_str_base_len_10001_215:
      000020                        586 	.ds 2
      000022                        587 _search_str_str_len_10001_215:
      000022                        588 	.ds 2
      000024                        589 _search_str_i_20001_216:
      000024                        590 	.ds 2
      000026                        591 _search_str_sloc0_1_0:
      000026                        592 	.ds 2
      000028                        593 _convert_PARM_2:
      000028                        594 	.ds 1
      000029                        595 _convert_num_10000_221:
      000029                        596 	.ds 3
      00002C                        597 _convert_i_10001_223:
      00002C                        598 	.ds 1
      00002D                        599 _convert_temp_10001_223:
      00002D                        600 	.ds 4
      000031                        601 _getURL_PARM_2:
      000031                        602 	.ds 3
      000034                        603 _getURL_PARM_3:
      000034                        604 	.ds 3
      000037                        605 _getURL_PARM_4:
      000037                        606 	.ds 3
                                    607 ;--------------------------------------------------------
                                    608 ; overlayable items in internal ram
                                    609 ;--------------------------------------------------------
                                    610 	.area	OSEG    (OVR,DATA)
                                    611 	.area	OSEG    (OVR,DATA)
      000041                        612 _set_output_mode_PARM_2:
      000041                        613 	.ds 1
                                    614 	.area	OSEG    (OVR,DATA)
                                    615 	.area	OSEG    (OVR,DATA)
      000041                        616 _set_port_dir_PARM_2:
      000041                        617 	.ds 1
                                    618 	.area	OSEG    (OVR,DATA)
                                    619 	.area	OSEG    (OVR,DATA)
      000041                        620 _set_port_value_PARM_2:
      000041                        621 	.ds 1
                                    622 	.area	OSEG    (OVR,DATA)
                                    623 	.area	OSEG    (OVR,DATA)
                                    624 	.area	OSEG    (OVR,DATA)
                                    625 	.area	OSEG    (OVR,DATA)
                                    626 	.area	OSEG    (OVR,DATA)
                                    627 	.area	OSEG    (OVR,DATA)
      000041                        628 _set_timer_mode_PARM_2:
      000041                        629 	.ds 1
                                    630 	.area	OSEG    (OVR,DATA)
      000041                        631 _select_timer_clk_PARM_2:
      000041                        632 	.ds 1
                                    633 	.area	OSEG    (OVR,DATA)
      000041                        634 _select_tmr_clk_src_PARM_2:
      000041                        635 	.ds 1
                                    636 	.area	OSEG    (OVR,DATA)
      000041                        637 _update_timer_reg_PARM_2:
      000041                        638 	.ds 2
                                    639 	.area	OSEG    (OVR,DATA)
      000041                        640 _timer_interrupt_PARM_2:
      000041                        641 	.ds 1
                                    642 	.area	OSEG    (OVR,DATA)
                                    643 	.area	OSEG    (OVR,DATA)
                                    644 	.area	OSEG    (OVR,DATA)
                                    645 ;--------------------------------------------------------
                                    646 ; indirectly addressable internal ram data
                                    647 ;--------------------------------------------------------
                                    648 	.area ISEG    (DATA)
                                    649 ;--------------------------------------------------------
                                    650 ; absolute internal ram data
                                    651 ;--------------------------------------------------------
                                    652 	.area IABS    (ABS,DATA)
                                    653 	.area IABS    (ABS,DATA)
                                    654 ;--------------------------------------------------------
                                    655 ; bit data
                                    656 ;--------------------------------------------------------
                                    657 	.area BSEG    (BIT)
                                    658 ;--------------------------------------------------------
                                    659 ; paged external ram data
                                    660 ;--------------------------------------------------------
                                    661 	.area PSEG    (PAG,XDATA)
                                    662 ;--------------------------------------------------------
                                    663 ; uninitialized external ram data
                                    664 ;--------------------------------------------------------
                                    665 	.area XSEG    (XDATA)
      000109                        666 _instruction::
      000109                        667 	.ds 50
      00013B                        668 _ssid::
      00013B                        669 	.ds 15
      00014A                        670 _pwd::
      00014A                        671 	.ds 15
      000159                        672 _uart0_println_t_10000_199:
      000159                        673 	.ds 256
      000259                        674 _getURL_id_10000_229:
      000259                        675 	.ds 15
                                    676 ;--------------------------------------------------------
                                    677 ; absolute external ram data
                                    678 ;--------------------------------------------------------
                                    679 	.area XABS    (ABS,XDATA)
                                    680 ;--------------------------------------------------------
                                    681 ; initialized external ram data
                                    682 ;--------------------------------------------------------
                                    683 	.area XISEG   (XDATA)
                                    684 	.area HOME    (CODE)
                                    685 	.area GSINIT0 (CODE)
                                    686 	.area GSINIT1 (CODE)
                                    687 	.area GSINIT2 (CODE)
                                    688 	.area GSINIT3 (CODE)
                                    689 	.area GSINIT4 (CODE)
                                    690 	.area GSINIT5 (CODE)
                                    691 	.area GSINIT  (CODE)
                                    692 	.area GSFINAL (CODE)
                                    693 	.area CSEG    (CODE)
                                    694 ;--------------------------------------------------------
                                    695 ; global & static initialisations
                                    696 ;--------------------------------------------------------
                                    697 	.area HOME    (CODE)
                                    698 	.area GSINIT  (CODE)
                                    699 	.area GSFINAL (CODE)
                                    700 	.area GSINIT  (CODE)
                                    701 ;--------------------------------------------------------
                                    702 ; Home
                                    703 ;--------------------------------------------------------
                                    704 	.area HOME    (CODE)
                                    705 	.area HOME    (CODE)
                                    706 ;--------------------------------------------------------
                                    707 ; code
                                    708 ;--------------------------------------------------------
                                    709 	.area CSEG    (CODE)
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'delay'
                                    712 ;------------------------------------------------------------
                                    713 ;ms                        Allocated to registers r6 r7 
                                    714 ;i                         Allocated to registers r4 r5 
                                    715 ;j                         Allocated to registers r2 r3 
                                    716 ;------------------------------------------------------------
                                    717 ;	../Firmware/src/utils.c:4: void delay(unsigned int ms) {
                                    718 ;	-----------------------------------------
                                    719 ;	 function delay
                                    720 ;	-----------------------------------------
      000415                        721 _delay:
                           000007   722 	ar7 = 0x07
                           000006   723 	ar6 = 0x06
                           000005   724 	ar5 = 0x05
                           000004   725 	ar4 = 0x04
                           000003   726 	ar3 = 0x03
                           000002   727 	ar2 = 0x02
                           000001   728 	ar1 = 0x01
                           000000   729 	ar0 = 0x00
      000415 AE 82            [24]  730 	mov	r6, dpl
      000417 AF 83            [24]  731 	mov	r7, dph
                                    732 ;	../Firmware/src/utils.c:6: for (i = 0; i < ms; i++) {
      000419 7C 00            [12]  733 	mov	r4,#0x00
      00041B 7D 00            [12]  734 	mov	r5,#0x00
      00041D                        735 00107$:
      00041D C3               [12]  736 	clr	c
      00041E EC               [12]  737 	mov	a,r4
      00041F 9E               [12]  738 	subb	a,r6
      000420 ED               [12]  739 	mov	a,r5
      000421 9F               [12]  740 	subb	a,r7
      000422 50 14            [24]  741 	jnc	00109$
                                    742 ;	../Firmware/src/utils.c:7: for (j = 0; j < 456; j++) {
      000424 7A C8            [12]  743 	mov	r2,#0xc8
      000426 7B 01            [12]  744 	mov	r3,#0x01
      000428                        745 00105$:
      000428 1A               [12]  746 	dec	r2
      000429 BA FF 01         [24]  747 	cjne	r2,#0xff,00138$
      00042C 1B               [12]  748 	dec	r3
      00042D                        749 00138$:
      00042D EA               [12]  750 	mov	a,r2
      00042E 4B               [12]  751 	orl	a,r3
      00042F 70 F7            [24]  752 	jnz	00105$
                                    753 ;	../Firmware/src/utils.c:6: for (i = 0; i < ms; i++) {
      000431 0C               [12]  754 	inc	r4
      000432 BC 00 E8         [24]  755 	cjne	r4,#0x00,00107$
      000435 0D               [12]  756 	inc	r5
      000436 80 E5            [24]  757 	sjmp	00107$
      000438                        758 00109$:
                                    759 ;	../Firmware/src/utils.c:10: }
      000438 22               [24]  760 	ret
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'set_output_mode'
                                    763 ;------------------------------------------------------------
                                    764 ;value                     Allocated with name '_set_output_mode_PARM_2'
                                    765 ;port                      Allocated to registers r7 
                                    766 ;------------------------------------------------------------
                                    767 ;	../Firmware/src/utils.c:15: void set_output_mode(enum PORT port, UINT8 value){
                                    768 ;	-----------------------------------------
                                    769 ;	 function set_output_mode
                                    770 ;	-----------------------------------------
      000439                        771 _set_output_mode:
                                    772 ;	../Firmware/src/utils.c:16: if(port == PORT1){
      000439 E5 82            [12]  773 	mov	a,dpl
      00043B FF               [12]  774 	mov	r7,a
      00043C 70 04            [24]  775 	jnz	00107$
                                    776 ;	../Firmware/src/utils.c:17: P1_MOD_OC = value;
      00043E 85 41 92         [24]  777 	mov	_P1_MOD_OC,_set_output_mode_PARM_2
      000441 22               [24]  778 	ret
      000442                        779 00107$:
                                    780 ;	../Firmware/src/utils.c:19: else if(port == PORT2){
      000442 BF 01 01         [24]  781 	cjne	r7,#0x01,00130$
      000445 22               [24]  782 	ret
      000446                        783 00130$:
                                    784 ;	../Firmware/src/utils.c:22: else if(port == PORT3){
      000446 BF 02 03         [24]  785 	cjne	r7,#0x02,00109$
                                    786 ;	../Firmware/src/utils.c:23: P3_MOD_OC = value;
      000449 85 41 96         [24]  787 	mov	_P3_MOD_OC,_set_output_mode_PARM_2
      00044C                        788 00109$:
                                    789 ;	../Firmware/src/utils.c:25: }
      00044C 22               [24]  790 	ret
                                    791 ;------------------------------------------------------------
                                    792 ;Allocation info for local variables in function 'read_output_mode'
                                    793 ;------------------------------------------------------------
                                    794 ;port                      Allocated to registers r7 
                                    795 ;ret                       Allocated to registers r6 
                                    796 ;------------------------------------------------------------
                                    797 ;	../Firmware/src/utils.c:30: UINT8 read_output_mode (enum PORT port){
                                    798 ;	-----------------------------------------
                                    799 ;	 function read_output_mode
                                    800 ;	-----------------------------------------
      00044D                        801 _read_output_mode:
      00044D AF 82            [24]  802 	mov	r7, dpl
                                    803 ;	../Firmware/src/utils.c:31: UINT8 ret = 0;
      00044F 7E 00            [12]  804 	mov	r6,#0x00
                                    805 ;	../Firmware/src/utils.c:32: if(port == PORT1){
      000451 EF               [12]  806 	mov	a,r7
      000452 70 04            [24]  807 	jnz	00107$
                                    808 ;	../Firmware/src/utils.c:33: ret = P1_MOD_OC;
      000454 AE 92            [24]  809 	mov	r6,_P1_MOD_OC
      000456 80 0C            [24]  810 	sjmp	00108$
      000458                        811 00107$:
                                    812 ;	../Firmware/src/utils.c:35: else if(port == PORT2){
      000458 BF 01 04         [24]  813 	cjne	r7,#0x01,00104$
                                    814 ;	../Firmware/src/utils.c:36: ret = 0;
      00045B 7E 00            [12]  815 	mov	r6,#0x00
      00045D 80 05            [24]  816 	sjmp	00108$
      00045F                        817 00104$:
                                    818 ;	../Firmware/src/utils.c:38: else if(port == PORT3){
      00045F BF 02 02         [24]  819 	cjne	r7,#0x02,00108$
                                    820 ;	../Firmware/src/utils.c:39: ret = P3_MOD_OC;
      000462 AE 96            [24]  821 	mov	r6,_P3_MOD_OC
      000464                        822 00108$:
                                    823 ;	../Firmware/src/utils.c:41: return ret;
      000464 8E 82            [24]  824 	mov	dpl, r6
                                    825 ;	../Firmware/src/utils.c:42: }
      000466 22               [24]  826 	ret
                                    827 ;------------------------------------------------------------
                                    828 ;Allocation info for local variables in function 'set_port_dir'
                                    829 ;------------------------------------------------------------
                                    830 ;dir                       Allocated with name '_set_port_dir_PARM_2'
                                    831 ;port                      Allocated to registers r7 
                                    832 ;------------------------------------------------------------
                                    833 ;	../Firmware/src/utils.c:47: void set_port_dir(enum PORT port, UINT8 dir){
                                    834 ;	-----------------------------------------
                                    835 ;	 function set_port_dir
                                    836 ;	-----------------------------------------
      000467                        837 _set_port_dir:
                                    838 ;	../Firmware/src/utils.c:48: if(port == PORT1){
      000467 E5 82            [12]  839 	mov	a,dpl
      000469 FF               [12]  840 	mov	r7,a
      00046A 70 04            [24]  841 	jnz	00107$
                                    842 ;	../Firmware/src/utils.c:49: P1_DIR_PU = dir;
      00046C 85 41 93         [24]  843 	mov	_P1_DIR_PU,_set_port_dir_PARM_2
      00046F 22               [24]  844 	ret
      000470                        845 00107$:
                                    846 ;	../Firmware/src/utils.c:51: else if(port == PORT2){
      000470 BF 01 01         [24]  847 	cjne	r7,#0x01,00130$
      000473 22               [24]  848 	ret
      000474                        849 00130$:
                                    850 ;	../Firmware/src/utils.c:54: else if(port == PORT3){
      000474 BF 02 03         [24]  851 	cjne	r7,#0x02,00109$
                                    852 ;	../Firmware/src/utils.c:55: P3_DIR_PU = dir;
      000477 85 41 97         [24]  853 	mov	_P3_DIR_PU,_set_port_dir_PARM_2
      00047A                        854 00109$:
                                    855 ;	../Firmware/src/utils.c:57: }
      00047A 22               [24]  856 	ret
                                    857 ;------------------------------------------------------------
                                    858 ;Allocation info for local variables in function 'read_port_dir'
                                    859 ;------------------------------------------------------------
                                    860 ;port                      Allocated to registers r7 
                                    861 ;ret                       Allocated to registers r6 
                                    862 ;------------------------------------------------------------
                                    863 ;	../Firmware/src/utils.c:61: UINT8 read_port_dir (enum PORT port){
                                    864 ;	-----------------------------------------
                                    865 ;	 function read_port_dir
                                    866 ;	-----------------------------------------
      00047B                        867 _read_port_dir:
      00047B AF 82            [24]  868 	mov	r7, dpl
                                    869 ;	../Firmware/src/utils.c:62: UINT8 ret = 0;
      00047D 7E 00            [12]  870 	mov	r6,#0x00
                                    871 ;	../Firmware/src/utils.c:63: if(port == PORT1){
      00047F EF               [12]  872 	mov	a,r7
      000480 70 04            [24]  873 	jnz	00107$
                                    874 ;	../Firmware/src/utils.c:64: ret = P1_DIR_PU;
      000482 AE 93            [24]  875 	mov	r6,_P1_DIR_PU
      000484 80 0C            [24]  876 	sjmp	00108$
      000486                        877 00107$:
                                    878 ;	../Firmware/src/utils.c:66: else if(port == PORT2){
      000486 BF 01 04         [24]  879 	cjne	r7,#0x01,00104$
                                    880 ;	../Firmware/src/utils.c:67: ret = 0;
      000489 7E 00            [12]  881 	mov	r6,#0x00
      00048B 80 05            [24]  882 	sjmp	00108$
      00048D                        883 00104$:
                                    884 ;	../Firmware/src/utils.c:69: else if(port == PORT3){
      00048D BF 02 02         [24]  885 	cjne	r7,#0x02,00108$
                                    886 ;	../Firmware/src/utils.c:70: ret = P3_DIR_PU;
      000490 AE 97            [24]  887 	mov	r6,_P3_DIR_PU
      000492                        888 00108$:
                                    889 ;	../Firmware/src/utils.c:72: return ret;
      000492 8E 82            [24]  890 	mov	dpl, r6
                                    891 ;	../Firmware/src/utils.c:73: }
      000494 22               [24]  892 	ret
                                    893 ;------------------------------------------------------------
                                    894 ;Allocation info for local variables in function 'set_port_value'
                                    895 ;------------------------------------------------------------
                                    896 ;value                     Allocated with name '_set_port_value_PARM_2'
                                    897 ;port                      Allocated to registers r7 
                                    898 ;------------------------------------------------------------
                                    899 ;	../Firmware/src/utils.c:78: void set_port_value(enum PORT port, UINT8 value){
                                    900 ;	-----------------------------------------
                                    901 ;	 function set_port_value
                                    902 ;	-----------------------------------------
      000495                        903 _set_port_value:
                                    904 ;	../Firmware/src/utils.c:79: if(port == PORT1){
      000495 E5 82            [12]  905 	mov	a,dpl
      000497 FF               [12]  906 	mov	r7,a
      000498 70 04            [24]  907 	jnz	00107$
                                    908 ;	../Firmware/src/utils.c:80: P1 = value;
      00049A 85 41 90         [24]  909 	mov	_P1,_set_port_value_PARM_2
      00049D 22               [24]  910 	ret
      00049E                        911 00107$:
                                    912 ;	../Firmware/src/utils.c:82: else if(port == PORT2){
      00049E BF 01 04         [24]  913 	cjne	r7,#0x01,00104$
                                    914 ;	../Firmware/src/utils.c:83: P2 = value;
      0004A1 85 41 A0         [24]  915 	mov	_P2,_set_port_value_PARM_2
      0004A4 22               [24]  916 	ret
      0004A5                        917 00104$:
                                    918 ;	../Firmware/src/utils.c:85: else if(port == PORT3){
      0004A5 BF 02 03         [24]  919 	cjne	r7,#0x02,00109$
                                    920 ;	../Firmware/src/utils.c:86: P3 = value;
      0004A8 85 41 B0         [24]  921 	mov	_P3,_set_port_value_PARM_2
      0004AB                        922 00109$:
                                    923 ;	../Firmware/src/utils.c:88: }
      0004AB 22               [24]  924 	ret
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'read_port_value'
                                    927 ;------------------------------------------------------------
                                    928 ;port                      Allocated to registers r7 
                                    929 ;ret                       Allocated to registers r6 
                                    930 ;------------------------------------------------------------
                                    931 ;	../Firmware/src/utils.c:93: UINT8 read_port_value (enum PORT port){
                                    932 ;	-----------------------------------------
                                    933 ;	 function read_port_value
                                    934 ;	-----------------------------------------
      0004AC                        935 _read_port_value:
      0004AC AF 82            [24]  936 	mov	r7, dpl
                                    937 ;	../Firmware/src/utils.c:94: UINT8 ret = 0;
      0004AE 7E 00            [12]  938 	mov	r6,#0x00
                                    939 ;	../Firmware/src/utils.c:95: if(port == PORT1){
      0004B0 EF               [12]  940 	mov	a,r7
      0004B1 70 04            [24]  941 	jnz	00107$
                                    942 ;	../Firmware/src/utils.c:96: ret = P1;
      0004B3 AE 90            [24]  943 	mov	r6,_P1
      0004B5 80 0C            [24]  944 	sjmp	00108$
      0004B7                        945 00107$:
                                    946 ;	../Firmware/src/utils.c:98: else if(port == PORT2){
      0004B7 BF 01 04         [24]  947 	cjne	r7,#0x01,00104$
                                    948 ;	../Firmware/src/utils.c:99: ret = P2;
      0004BA AE A0            [24]  949 	mov	r6,_P2
      0004BC 80 05            [24]  950 	sjmp	00108$
      0004BE                        951 00104$:
                                    952 ;	../Firmware/src/utils.c:101: else if(port == PORT3){
      0004BE BF 02 02         [24]  953 	cjne	r7,#0x02,00108$
                                    954 ;	../Firmware/src/utils.c:102: ret = P3;
      0004C1 AE B0            [24]  955 	mov	r6,_P3
      0004C3                        956 00108$:
                                    957 ;	../Firmware/src/utils.c:104: return ret;
      0004C3 8E 82            [24]  958 	mov	dpl, r6
                                    959 ;	../Firmware/src/utils.c:105: }
      0004C5 22               [24]  960 	ret
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'configure_port'
                                    963 ;------------------------------------------------------------
                                    964 ;mode                      Allocated with name '_configure_port_PARM_2'
                                    965 ;port                      Allocated to registers r7 
                                    966 ;------------------------------------------------------------
                                    967 ;	../Firmware/src/utils.c:109: void configure_port(enum PORT port, enum PORT_MODE mode){
                                    968 ;	-----------------------------------------
                                    969 ;	 function configure_port
                                    970 ;	-----------------------------------------
      0004C6                        971 _configure_port:
      0004C6 AF 82            [24]  972 	mov	r7, dpl
                                    973 ;	../Firmware/src/utils.c:110: if(mode == HIGH_IMPEDANCE){
      0004C8 E5 08            [12]  974 	mov	a,_configure_port_PARM_2
                                    975 ;	../Firmware/src/utils.c:111: set_output_mode(port,0x00);
      0004CA 70 13            [24]  976 	jnz	00110$
      0004CC F5 41            [12]  977 	mov	_set_output_mode_PARM_2,a
      0004CE 8F 82            [24]  978 	mov	dpl, r7
      0004D0 C0 07            [24]  979 	push	ar7
      0004D2 12 04 39         [24]  980 	lcall	_set_output_mode
      0004D5 D0 07            [24]  981 	pop	ar7
                                    982 ;	../Firmware/src/utils.c:112: set_port_dir(port, 0x00);
      0004D7 75 41 00         [24]  983 	mov	_set_port_dir_PARM_2,#0x00
      0004DA 8F 82            [24]  984 	mov	dpl, r7
      0004DC 02 04 67         [24]  985 	ljmp	_set_port_dir
      0004DF                        986 00110$:
                                    987 ;	../Firmware/src/utils.c:114: else if(mode == PP_OUT){
      0004DF 74 01            [12]  988 	mov	a,#0x01
      0004E1 B5 08 14         [24]  989 	cjne	a,_configure_port_PARM_2,00107$
                                    990 ;	../Firmware/src/utils.c:115: set_output_mode(port,0x00);
      0004E4 75 41 00         [24]  991 	mov	_set_output_mode_PARM_2,#0x00
      0004E7 8F 82            [24]  992 	mov	dpl, r7
      0004E9 C0 07            [24]  993 	push	ar7
      0004EB 12 04 39         [24]  994 	lcall	_set_output_mode
      0004EE D0 07            [24]  995 	pop	ar7
                                    996 ;	../Firmware/src/utils.c:116: set_port_dir(port, 0xFF);
      0004F0 75 41 FF         [24]  997 	mov	_set_port_dir_PARM_2,#0xff
      0004F3 8F 82            [24]  998 	mov	dpl, r7
      0004F5 02 04 67         [24]  999 	ljmp	_set_port_dir
      0004F8                       1000 00107$:
                                   1001 ;	../Firmware/src/utils.c:118: else if(mode == OD_OUT){
      0004F8 74 02            [12] 1002 	mov	a,#0x02
      0004FA B5 08 14         [24] 1003 	cjne	a,_configure_port_PARM_2,00104$
                                   1004 ;	../Firmware/src/utils.c:119: set_output_mode(port,0xFF);
      0004FD 75 41 FF         [24] 1005 	mov	_set_output_mode_PARM_2,#0xff
      000500 8F 82            [24] 1006 	mov	dpl, r7
      000502 C0 07            [24] 1007 	push	ar7
      000504 12 04 39         [24] 1008 	lcall	_set_output_mode
      000507 D0 07            [24] 1009 	pop	ar7
                                   1010 ;	../Firmware/src/utils.c:120: set_port_dir(port, 0x00);
      000509 75 41 00         [24] 1011 	mov	_set_port_dir_PARM_2,#0x00
      00050C 8F 82            [24] 1012 	mov	dpl, r7
      00050E 02 04 67         [24] 1013 	ljmp	_set_port_dir
      000511                       1014 00104$:
                                   1015 ;	../Firmware/src/utils.c:122: else if(mode == QUASI_BI){
      000511 74 03            [12] 1016 	mov	a,#0x03
      000513 B5 08 14         [24] 1017 	cjne	a,_configure_port_PARM_2,00112$
                                   1018 ;	../Firmware/src/utils.c:123: set_output_mode(port,0xFF);
      000516 75 41 FF         [24] 1019 	mov	_set_output_mode_PARM_2,#0xff
      000519 8F 82            [24] 1020 	mov	dpl, r7
      00051B C0 07            [24] 1021 	push	ar7
      00051D 12 04 39         [24] 1022 	lcall	_set_output_mode
      000520 D0 07            [24] 1023 	pop	ar7
                                   1024 ;	../Firmware/src/utils.c:124: set_port_dir(port, 0xFF);
      000522 75 41 FF         [24] 1025 	mov	_set_port_dir_PARM_2,#0xff
      000525 8F 82            [24] 1026 	mov	dpl, r7
                                   1027 ;	../Firmware/src/utils.c:127: }
      000527 02 04 67         [24] 1028 	ljmp	_set_port_dir
      00052A                       1029 00112$:
      00052A 22               [24] 1030 	ret
                                   1031 ;------------------------------------------------------------
                                   1032 ;Allocation info for local variables in function 'start_adc'
                                   1033 ;------------------------------------------------------------
                                   1034 ;	../Firmware/src/utils.c:130: void start_adc(void){
                                   1035 ;	-----------------------------------------
                                   1036 ;	 function start_adc
                                   1037 ;	-----------------------------------------
      00052B                       1038 _start_adc:
                                   1039 ;	../Firmware/src/utils.c:131: ADC_CTRL |= 1 << 4;
      00052B 43 80 10         [24] 1040 	orl	_ADC_CTRL,#0x10
                                   1041 ;	../Firmware/src/utils.c:132: }
      00052E 22               [24] 1042 	ret
                                   1043 ;------------------------------------------------------------
                                   1044 ;Allocation info for local variables in function 'is_adc_done'
                                   1045 ;------------------------------------------------------------
                                   1046 ;data                      Allocated to registers 
                                   1047 ;------------------------------------------------------------
                                   1048 ;	../Firmware/src/utils.c:136: UINT8 is_adc_done(void){
                                   1049 ;	-----------------------------------------
                                   1050 ;	 function is_adc_done
                                   1051 ;	-----------------------------------------
      00052F                       1052 _is_adc_done:
                                   1053 ;	../Firmware/src/utils.c:137: UINT8 data = ADC_CTRL >> 4;
      00052F E5 80            [12] 1054 	mov	a,_ADC_CTRL
      000531 C4               [12] 1055 	swap	a
      000532 54 0F            [12] 1056 	anl	a,#0x0f
      000534 FF               [12] 1057 	mov	r7,a
                                   1058 ;	../Firmware/src/utils.c:138: data &= 0x01;
      000535 74 01            [12] 1059 	mov	a,#0x01
      000537 5F               [12] 1060 	anl	a,r7
      000538 F5 82            [12] 1061 	mov	dpl,a
                                   1062 ;	../Firmware/src/utils.c:139: return data;
                                   1063 ;	../Firmware/src/utils.c:140: }
      00053A 22               [24] 1064 	ret
                                   1065 ;------------------------------------------------------------
                                   1066 ;Allocation info for local variables in function 'ADC_Enable'
                                   1067 ;------------------------------------------------------------
                                   1068 ;state                     Allocated to registers r7 
                                   1069 ;_data                     Allocated to registers 
                                   1070 ;------------------------------------------------------------
                                   1071 ;	../Firmware/src/utils.c:144: void ADC_Enable(UINT8 state){
                                   1072 ;	-----------------------------------------
                                   1073 ;	 function ADC_Enable
                                   1074 ;	-----------------------------------------
      00053B                       1075 _ADC_Enable:
                                   1076 ;	../Firmware/src/utils.c:145: if(state > 0)
      00053B E5 82            [12] 1077 	mov	a,dpl
      00053D 60 04            [24] 1078 	jz	00102$
                                   1079 ;	../Firmware/src/utils.c:146: ADC_CFG |= 1 << 3;
      00053F 43 9A 08         [24] 1080 	orl	_ADC_CFG,#0x08
      000542 22               [24] 1081 	ret
      000543                       1082 00102$:
                                   1083 ;	../Firmware/src/utils.c:149: ADC_CFG &= _data;
      000543 53 9A F7         [24] 1084 	anl	_ADC_CFG,#0xf7
                                   1085 ;	../Firmware/src/utils.c:151: }
      000546 22               [24] 1086 	ret
                                   1087 ;------------------------------------------------------------
                                   1088 ;Allocation info for local variables in function 'set_ADC_speed'
                                   1089 ;------------------------------------------------------------
                                   1090 ;speed                     Allocated to registers r7 
                                   1091 ;_data                     Allocated to registers 
                                   1092 ;------------------------------------------------------------
                                   1093 ;	../Firmware/src/utils.c:154: void set_ADC_speed(UINT8 speed){
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function set_ADC_speed
                                   1096 ;	-----------------------------------------
      000547                       1097 _set_ADC_speed:
                                   1098 ;	../Firmware/src/utils.c:155: if(speed > 0)
      000547 E5 82            [12] 1099 	mov	a,dpl
      000549 60 04            [24] 1100 	jz	00102$
                                   1101 ;	../Firmware/src/utils.c:156: ADC_CFG |= 1;
      00054B 43 9A 01         [24] 1102 	orl	_ADC_CFG,#0x01
      00054E 22               [24] 1103 	ret
      00054F                       1104 00102$:
                                   1105 ;	../Firmware/src/utils.c:159: ADC_CFG &= _data;
      00054F 53 9A FE         [24] 1106 	anl	_ADC_CFG,#0xfe
                                   1107 ;	../Firmware/src/utils.c:161: }
      000552 22               [24] 1108 	ret
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'set_ADC_channel'
                                   1111 ;------------------------------------------------------------
                                   1112 ;channel                   Allocated to registers r7 
                                   1113 ;------------------------------------------------------------
                                   1114 ;	../Firmware/src/utils.c:164: void set_ADC_channel(UINT8 channel){
                                   1115 ;	-----------------------------------------
                                   1116 ;	 function set_ADC_channel
                                   1117 ;	-----------------------------------------
      000553                       1118 _set_ADC_channel:
      000553 AF 82            [24] 1119 	mov	r7, dpl
                                   1120 ;	../Firmware/src/utils.c:165: ADC_CTRL &= 0xFC;
      000555 53 80 FC         [24] 1121 	anl	_ADC_CTRL,#0xfc
                                   1122 ;	../Firmware/src/utils.c:166: ADC_CTRL |= channel & 0x03;
      000558 53 07 03         [24] 1123 	anl	ar7,#0x03
      00055B EF               [12] 1124 	mov	a,r7
      00055C 42 80            [12] 1125 	orl	_ADC_CTRL,a
                                   1126 ;	../Firmware/src/utils.c:167: }
      00055E 22               [24] 1127 	ret
                                   1128 ;------------------------------------------------------------
                                   1129 ;Allocation info for local variables in function 'analog_read'
                                   1130 ;------------------------------------------------------------
                                   1131 ;channel                   Allocated to registers 
                                   1132 ;------------------------------------------------------------
                                   1133 ;	../Firmware/src/utils.c:171: UINT8 analog_read(int channel){
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function analog_read
                                   1136 ;	-----------------------------------------
      00055F                       1137 _analog_read:
                                   1138 ;	../Firmware/src/utils.c:172: ADC_Enable(1);
      00055F 75 82 01         [24] 1139 	mov	dpl, #0x01
      000562 12 05 3B         [24] 1140 	lcall	_ADC_Enable
                                   1141 ;	../Firmware/src/utils.c:173: set_ADC_speed(1);
      000565 75 82 01         [24] 1142 	mov	dpl, #0x01
      000568 12 05 47         [24] 1143 	lcall	_set_ADC_speed
                                   1144 ;	../Firmware/src/utils.c:174: set_ADC_channel(3);
      00056B 75 82 03         [24] 1145 	mov	dpl, #0x03
      00056E 12 05 53         [24] 1146 	lcall	_set_ADC_channel
                                   1147 ;	../Firmware/src/utils.c:175: start_adc();
      000571 12 05 2B         [24] 1148 	lcall	_start_adc
                                   1149 ;	../Firmware/src/utils.c:176: delay(500);
      000574 90 01 F4         [24] 1150 	mov	dptr,#0x01f4
      000577 12 04 15         [24] 1151 	lcall	_delay
                                   1152 ;	../Firmware/src/utils.c:178: return ADC_DATA;
      00057A 85 9F 82         [24] 1153 	mov	dpl, _ADC_DATA
                                   1154 ;	../Firmware/src/utils.c:179: }
      00057D 22               [24] 1155 	ret
                                   1156 ;------------------------------------------------------------
                                   1157 ;Allocation info for local variables in function 'bit_bang_uart_begin'
                                   1158 ;------------------------------------------------------------
                                   1159 ;	../Firmware/src/utils.c:183: void bit_bang_uart_begin(void){
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function bit_bang_uart_begin
                                   1162 ;	-----------------------------------------
      00057E                       1163 _bit_bang_uart_begin:
                                   1164 ;	../Firmware/src/utils.c:184: configure_port(PORT3, PP_OUT);
      00057E 75 08 01         [24] 1165 	mov	_configure_port_PARM_2,#0x01
      000581 75 82 02         [24] 1166 	mov	dpl, #0x02
      000584 12 04 C6         [24] 1167 	lcall	_configure_port
                                   1168 ;	../Firmware/src/utils.c:185: set_port_value(PORT3, 0xFF);
      000587 75 41 FF         [24] 1169 	mov	_set_port_value_PARM_2,#0xff
      00058A 75 82 02         [24] 1170 	mov	dpl, #0x02
      00058D 12 04 95         [24] 1171 	lcall	_set_port_value
                                   1172 ;	../Firmware/src/utils.c:186: delay(500);
      000590 90 01 F4         [24] 1173 	mov	dptr,#0x01f4
                                   1174 ;	../Firmware/src/utils.c:187: }
      000593 02 04 15         [24] 1175 	ljmp	_delay
                                   1176 ;------------------------------------------------------------
                                   1177 ;Allocation info for local variables in function 'bit_bang_uart_tx'
                                   1178 ;------------------------------------------------------------
                                   1179 ;data                      Allocated to registers r7 
                                   1180 ;i                         Allocated to registers r6 
                                   1181 ;------------------------------------------------------------
                                   1182 ;	../Firmware/src/utils.c:191: void bit_bang_uart_tx(UINT8 data){
                                   1183 ;	-----------------------------------------
                                   1184 ;	 function bit_bang_uart_tx
                                   1185 ;	-----------------------------------------
      000596                       1186 _bit_bang_uart_tx:
      000596 AF 82            [24] 1187 	mov	r7, dpl
                                   1188 ;	../Firmware/src/utils.c:192: PIN_FUNC = 0;
      000598 75 C6 00         [24] 1189 	mov	_PIN_FUNC,#0x00
                                   1190 ;	../Firmware/src/utils.c:193: set_port_value(PORT3, 0x00);
      00059B 75 41 00         [24] 1191 	mov	_set_port_value_PARM_2,#0x00
      00059E 75 82 02         [24] 1192 	mov	dpl, #0x02
      0005A1 C0 07            [24] 1193 	push	ar7
      0005A3 12 04 95         [24] 1194 	lcall	_set_port_value
                                   1195 ;	../Firmware/src/utils.c:194: delay(1);
      0005A6 90 00 01         [24] 1196 	mov	dptr,#0x0001
      0005A9 12 04 15         [24] 1197 	lcall	_delay
      0005AC D0 07            [24] 1198 	pop	ar7
                                   1199 ;	../Firmware/src/utils.c:195: for (int i = 0; i < 8; i++) {
      0005AE 7E 00            [12] 1200 	mov	r6,#0x00
      0005B0                       1201 00106$:
      0005B0 BE 08 00         [24] 1202 	cjne	r6,#0x08,00129$
      0005B3                       1203 00129$:
      0005B3 50 56            [24] 1204 	jnc	00104$
                                   1205 ;	../Firmware/src/utils.c:196: if (data & (1 << i)) {
      0005B5 8E F0            [24] 1206 	mov	b,r6
      0005B7 05 F0            [12] 1207 	inc	b
      0005B9 7C 01            [12] 1208 	mov	r4,#0x01
      0005BB 7D 00            [12] 1209 	mov	r5,#0x00
      0005BD 80 06            [24] 1210 	sjmp	00132$
      0005BF                       1211 00131$:
      0005BF EC               [12] 1212 	mov	a,r4
      0005C0 2C               [12] 1213 	add	a,r4
      0005C1 FC               [12] 1214 	mov	r4,a
      0005C2 ED               [12] 1215 	mov	a,r5
      0005C3 33               [12] 1216 	rlc	a
      0005C4 FD               [12] 1217 	mov	r5,a
      0005C5                       1218 00132$:
      0005C5 D5 F0 F7         [24] 1219 	djnz	b,00131$
      0005C8 8F 02            [24] 1220 	mov	ar2,r7
      0005CA 7B 00            [12] 1221 	mov	r3,#0x00
      0005CC EA               [12] 1222 	mov	a,r2
      0005CD 52 04            [12] 1223 	anl	ar4,a
      0005CF EB               [12] 1224 	mov	a,r3
      0005D0 52 05            [12] 1225 	anl	ar5,a
      0005D2 EC               [12] 1226 	mov	a,r4
      0005D3 4D               [12] 1227 	orl	a,r5
      0005D4 60 13            [24] 1228 	jz	00102$
                                   1229 ;	../Firmware/src/utils.c:197: set_port_value(PORT3, 0xFF);
      0005D6 75 41 FF         [24] 1230 	mov	_set_port_value_PARM_2,#0xff
      0005D9 75 82 02         [24] 1231 	mov	dpl, #0x02
      0005DC C0 07            [24] 1232 	push	ar7
      0005DE C0 06            [24] 1233 	push	ar6
      0005E0 12 04 95         [24] 1234 	lcall	_set_port_value
      0005E3 D0 06            [24] 1235 	pop	ar6
      0005E5 D0 07            [24] 1236 	pop	ar7
      0005E7 80 11            [24] 1237 	sjmp	00103$
      0005E9                       1238 00102$:
                                   1239 ;	../Firmware/src/utils.c:199: set_port_value(PORT3, 0x00);
      0005E9 75 41 00         [24] 1240 	mov	_set_port_value_PARM_2,#0x00
      0005EC 75 82 02         [24] 1241 	mov	dpl, #0x02
      0005EF C0 07            [24] 1242 	push	ar7
      0005F1 C0 06            [24] 1243 	push	ar6
      0005F3 12 04 95         [24] 1244 	lcall	_set_port_value
      0005F6 D0 06            [24] 1245 	pop	ar6
      0005F8 D0 07            [24] 1246 	pop	ar7
      0005FA                       1247 00103$:
                                   1248 ;	../Firmware/src/utils.c:201: delay(1);
      0005FA 90 00 01         [24] 1249 	mov	dptr,#0x0001
      0005FD C0 07            [24] 1250 	push	ar7
      0005FF C0 06            [24] 1251 	push	ar6
      000601 12 04 15         [24] 1252 	lcall	_delay
      000604 D0 06            [24] 1253 	pop	ar6
      000606 D0 07            [24] 1254 	pop	ar7
                                   1255 ;	../Firmware/src/utils.c:195: for (int i = 0; i < 8; i++) {
      000608 0E               [12] 1256 	inc	r6
      000609 80 A5            [24] 1257 	sjmp	00106$
      00060B                       1258 00104$:
                                   1259 ;	../Firmware/src/utils.c:203: set_port_value(PORT3, 0xFF); 
      00060B 75 41 FF         [24] 1260 	mov	_set_port_value_PARM_2,#0xff
      00060E 75 82 02         [24] 1261 	mov	dpl, #0x02
      000611 12 04 95         [24] 1262 	lcall	_set_port_value
                                   1263 ;	../Firmware/src/utils.c:204: delay(1);
      000614 90 00 01         [24] 1264 	mov	dptr,#0x0001
                                   1265 ;	../Firmware/src/utils.c:205: }
      000617 02 04 15         [24] 1266 	ljmp	_delay
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'print'
                                   1269 ;------------------------------------------------------------
                                   1270 ;str                       Allocated to registers r5 r6 r7 
                                   1271 ;index                     Allocated to registers r3 r4 
                                   1272 ;------------------------------------------------------------
                                   1273 ;	../Firmware/src/utils.c:209: void print(char * str){
                                   1274 ;	-----------------------------------------
                                   1275 ;	 function print
                                   1276 ;	-----------------------------------------
      00061A                       1277 _print:
      00061A AD 82            [24] 1278 	mov	r5, dpl
      00061C AE 83            [24] 1279 	mov	r6, dph
      00061E AF F0            [24] 1280 	mov	r7, b
                                   1281 ;	../Firmware/src/utils.c:211: while(str[index] != '\0'){
      000620 7B 00            [12] 1282 	mov	r3,#0x00
      000622 7C 00            [12] 1283 	mov	r4,#0x00
      000624                       1284 00101$:
      000624 EB               [12] 1285 	mov	a,r3
      000625 2D               [12] 1286 	add	a, r5
      000626 F8               [12] 1287 	mov	r0,a
      000627 EC               [12] 1288 	mov	a,r4
      000628 3E               [12] 1289 	addc	a, r6
      000629 F9               [12] 1290 	mov	r1,a
      00062A 8F 02            [24] 1291 	mov	ar2,r7
      00062C 88 82            [24] 1292 	mov	dpl,r0
      00062E 89 83            [24] 1293 	mov	dph,r1
      000630 8A F0            [24] 1294 	mov	b,r2
      000632 12 18 9D         [24] 1295 	lcall	__gptrget
      000635 60 31            [24] 1296 	jz	00104$
                                   1297 ;	../Firmware/src/utils.c:212: bit_bang_uart_tx(str[index++]);
      000637 EB               [12] 1298 	mov	a,r3
      000638 2D               [12] 1299 	add	a, r5
      000639 F8               [12] 1300 	mov	r0,a
      00063A EC               [12] 1301 	mov	a,r4
      00063B 3E               [12] 1302 	addc	a, r6
      00063C F9               [12] 1303 	mov	r1,a
      00063D 8F 02            [24] 1304 	mov	ar2,r7
      00063F 0B               [12] 1305 	inc	r3
      000640 BB 00 01         [24] 1306 	cjne	r3,#0x00,00120$
      000643 0C               [12] 1307 	inc	r4
      000644                       1308 00120$:
      000644 88 82            [24] 1309 	mov	dpl,r0
      000646 89 83            [24] 1310 	mov	dph,r1
      000648 8A F0            [24] 1311 	mov	b,r2
      00064A 12 18 9D         [24] 1312 	lcall	__gptrget
      00064D F5 82            [12] 1313 	mov	dpl,a
      00064F C0 07            [24] 1314 	push	ar7
      000651 C0 06            [24] 1315 	push	ar6
      000653 C0 05            [24] 1316 	push	ar5
      000655 C0 04            [24] 1317 	push	ar4
      000657 C0 03            [24] 1318 	push	ar3
      000659 12 05 96         [24] 1319 	lcall	_bit_bang_uart_tx
      00065C D0 03            [24] 1320 	pop	ar3
      00065E D0 04            [24] 1321 	pop	ar4
      000660 D0 05            [24] 1322 	pop	ar5
      000662 D0 06            [24] 1323 	pop	ar6
      000664 D0 07            [24] 1324 	pop	ar7
      000666 80 BC            [24] 1325 	sjmp	00101$
      000668                       1326 00104$:
                                   1327 ;	../Firmware/src/utils.c:214: }
      000668 22               [24] 1328 	ret
                                   1329 ;------------------------------------------------------------
                                   1330 ;Allocation info for local variables in function 'println'
                                   1331 ;------------------------------------------------------------
                                   1332 ;str                       Allocated to registers r5 r6 r7 
                                   1333 ;------------------------------------------------------------
                                   1334 ;	../Firmware/src/utils.c:218: void println(char * str){
                                   1335 ;	-----------------------------------------
                                   1336 ;	 function println
                                   1337 ;	-----------------------------------------
      000669                       1338 _println:
                                   1339 ;	../Firmware/src/utils.c:219: print(str);
      000669 12 06 1A         [24] 1340 	lcall	_print
                                   1341 ;	../Firmware/src/utils.c:220: bit_bang_uart_tx('\r');
      00066C 75 82 0D         [24] 1342 	mov	dpl, #0x0d
      00066F 12 05 96         [24] 1343 	lcall	_bit_bang_uart_tx
                                   1344 ;	../Firmware/src/utils.c:221: bit_bang_uart_tx('\n');
      000672 75 82 0A         [24] 1345 	mov	dpl, #0x0a
                                   1346 ;	../Firmware/src/utils.c:222: }
      000675 02 05 96         [24] 1347 	ljmp	_bit_bang_uart_tx
                                   1348 ;------------------------------------------------------------
                                   1349 ;Allocation info for local variables in function 'get_system_freq'
                                   1350 ;------------------------------------------------------------
                                   1351 ;	../Firmware/src/utils.c:227: UINT8 get_system_freq(void){
                                   1352 ;	-----------------------------------------
                                   1353 ;	 function get_system_freq
                                   1354 ;	-----------------------------------------
      000678                       1355 _get_system_freq:
                                   1356 ;	../Firmware/src/utils.c:228: return CLOCK_CFG & 0x07;
      000678 E5 B9            [12] 1357 	mov	a,_CLOCK_CFG
      00067A 54 07            [12] 1358 	anl	a,#0x07
      00067C F5 82            [12] 1359 	mov	dpl,a
                                   1360 ;	../Firmware/src/utils.c:229: }
      00067E 22               [24] 1361 	ret
                                   1362 ;------------------------------------------------------------
                                   1363 ;Allocation info for local variables in function 'set_timer_mode'
                                   1364 ;------------------------------------------------------------
                                   1365 ;_mode                     Allocated with name '_set_timer_mode_PARM_2'
                                   1366 ;_t                        Allocated to registers r7 
                                   1367 ;------------------------------------------------------------
                                   1368 ;	../Firmware/src/utils.c:234: void set_timer_mode(enum TIMER _t, enum TIMER_MODE _mode){
                                   1369 ;	-----------------------------------------
                                   1370 ;	 function set_timer_mode
                                   1371 ;	-----------------------------------------
      00067F                       1372 _set_timer_mode:
                                   1373 ;	../Firmware/src/utils.c:235: if(_t == TIMER0){
      00067F E5 82            [12] 1374 	mov	a,dpl
      000681 FF               [12] 1375 	mov	r7,a
      000682 70 2B            [24] 1376 	jnz	00119$
                                   1377 ;	../Firmware/src/utils.c:236: TMOD &= 0xFC;
      000684 53 89 FC         [24] 1378 	anl	_TMOD,#0xfc
                                   1379 ;	../Firmware/src/utils.c:237: switch (_mode){
      000687 E5 41            [12] 1380 	mov	a,_set_timer_mode_PARM_2
      000689 24 FC            [12] 1381 	add	a,#0xff - 0x03
      00068B 40 56            [24] 1382 	jc	00121$
      00068D E5 41            [12] 1383 	mov	a,_set_timer_mode_PARM_2
      00068F 75 F0 03         [24] 1384 	mov	b,#0x03
      000692 A4               [48] 1385 	mul	ab
      000693 90 06 97         [24] 1386 	mov	dptr,#00157$
      000696 73               [24] 1387 	jmp	@a+dptr
      000697                       1388 00157$:
      000697 02 06 E3         [24] 1389 	ljmp	00121$
      00069A 02 06 A3         [24] 1390 	ljmp	00102$
      00069D 02 06 A7         [24] 1391 	ljmp	00103$
      0006A0 02 06 AB         [24] 1392 	ljmp	00104$
                                   1393 ;	../Firmware/src/utils.c:239: case TMR_MODE_1:    TMOD |= 0x01;
      0006A3                       1394 00102$:
      0006A3 43 89 01         [24] 1395 	orl	_TMOD,#0x01
                                   1396 ;	../Firmware/src/utils.c:240: break;
                                   1397 ;	../Firmware/src/utils.c:241: case TMR_MODE_2:    TMOD |= 0x02;
      0006A6 22               [24] 1398 	ret
      0006A7                       1399 00103$:
      0006A7 43 89 02         [24] 1400 	orl	_TMOD,#0x02
                                   1401 ;	../Firmware/src/utils.c:242: break;
                                   1402 ;	../Firmware/src/utils.c:243: case TMR_MODE_3:    TMOD |= 0x03;
      0006AA 22               [24] 1403 	ret
      0006AB                       1404 00104$:
      0006AB 43 89 03         [24] 1405 	orl	_TMOD,#0x03
                                   1406 ;	../Firmware/src/utils.c:245: }
      0006AE 22               [24] 1407 	ret
      0006AF                       1408 00119$:
                                   1409 ;	../Firmware/src/utils.c:247: else if(_t == TIMER1){
      0006AF BF 01 2B         [24] 1410 	cjne	r7,#0x01,00116$
                                   1411 ;	../Firmware/src/utils.c:248: TMOD &= 0xCF;
      0006B2 53 89 CF         [24] 1412 	anl	_TMOD,#0xcf
                                   1413 ;	../Firmware/src/utils.c:249: switch (_mode){
      0006B5 E5 41            [12] 1414 	mov	a,_set_timer_mode_PARM_2
      0006B7 24 FC            [12] 1415 	add	a,#0xff - 0x03
      0006B9 40 28            [24] 1416 	jc	00121$
      0006BB E5 41            [12] 1417 	mov	a,_set_timer_mode_PARM_2
      0006BD 75 F0 03         [24] 1418 	mov	b,#0x03
      0006C0 A4               [48] 1419 	mul	ab
      0006C1 90 06 C5         [24] 1420 	mov	dptr,#00161$
      0006C4 73               [24] 1421 	jmp	@a+dptr
      0006C5                       1422 00161$:
      0006C5 02 06 E3         [24] 1423 	ljmp	00121$
      0006C8 02 06 D1         [24] 1424 	ljmp	00107$
      0006CB 02 06 D5         [24] 1425 	ljmp	00108$
      0006CE 02 06 D9         [24] 1426 	ljmp	00109$
                                   1427 ;	../Firmware/src/utils.c:251: case TMR_MODE_1:    TMOD |= 0x10;
      0006D1                       1428 00107$:
      0006D1 43 89 10         [24] 1429 	orl	_TMOD,#0x10
                                   1430 ;	../Firmware/src/utils.c:252: break;
                                   1431 ;	../Firmware/src/utils.c:253: case TMR_MODE_2:    TMOD |= 0x20;
      0006D4 22               [24] 1432 	ret
      0006D5                       1433 00108$:
      0006D5 43 89 20         [24] 1434 	orl	_TMOD,#0x20
                                   1435 ;	../Firmware/src/utils.c:254: break;
                                   1436 ;	../Firmware/src/utils.c:255: case TMR_MODE_3:    TMOD |= 0x30;
      0006D8 22               [24] 1437 	ret
      0006D9                       1438 00109$:
      0006D9 43 89 30         [24] 1439 	orl	_TMOD,#0x30
                                   1440 ;	../Firmware/src/utils.c:257: }
      0006DC 22               [24] 1441 	ret
      0006DD                       1442 00116$:
                                   1443 ;	../Firmware/src/utils.c:259: else if(_t == TIMER2){
      0006DD BF 02 03         [24] 1444 	cjne	r7,#0x02,00121$
                                   1445 ;	../Firmware/src/utils.c:260: T2CON &= 0xCD;
      0006E0 53 C8 CD         [24] 1446 	anl	_T2CON,#0xcd
                                   1447 ;	../Firmware/src/utils.c:264: }
      0006E3                       1448 00121$:
                                   1449 ;	../Firmware/src/utils.c:267: }
      0006E3 22               [24] 1450 	ret
                                   1451 ;------------------------------------------------------------
                                   1452 ;Allocation info for local variables in function 'select_timer_clk'
                                   1453 ;------------------------------------------------------------
                                   1454 ;_clk                      Allocated with name '_select_timer_clk_PARM_2'
                                   1455 ;_t                        Allocated to registers r7 
                                   1456 ;------------------------------------------------------------
                                   1457 ;	../Firmware/src/utils.c:271: void select_timer_clk(enum TIMER _t, enum TIMER_CLK _clk){
                                   1458 ;	-----------------------------------------
                                   1459 ;	 function select_timer_clk
                                   1460 ;	-----------------------------------------
      0006E4                       1461 _select_timer_clk:
                                   1462 ;	../Firmware/src/utils.c:272: if(_t == TIMER0){
      0006E4 E5 82            [12] 1463 	mov	a,dpl
      0006E6 FF               [12] 1464 	mov	r7,a
      0006E7 70 14            [24] 1465 	jnz	00122$
                                   1466 ;	../Firmware/src/utils.c:273: T2MOD &= 0x6F;
      0006E9 53 C9 6F         [24] 1467 	anl	_T2MOD,#0x6f
                                   1468 ;	../Firmware/src/utils.c:275: if(_clk == DIV_4) T2MOD |= 0x10;
      0006EC 74 01            [12] 1469 	mov	a,#0x01
      0006EE B5 41 03         [24] 1470 	cjne	a,_select_timer_clk_PARM_2,00102$
      0006F1 43 C9 10         [24] 1471 	orl	_T2MOD,#0x10
      0006F4                       1472 00102$:
                                   1473 ;	../Firmware/src/utils.c:276: if (_clk == F_SYS) T2MOD |= 0x90;
      0006F4 74 03            [12] 1474 	mov	a,#0x03
      0006F6 B5 41 3F         [24] 1475 	cjne	a,_select_timer_clk_PARM_2,00124$
      0006F9 43 C9 90         [24] 1476 	orl	_T2MOD,#0x90
      0006FC 22               [24] 1477 	ret
      0006FD                       1478 00122$:
                                   1479 ;	../Firmware/src/utils.c:278: else if(_t == TIMER1){
      0006FD BF 01 14         [24] 1480 	cjne	r7,#0x01,00119$
                                   1481 ;	../Firmware/src/utils.c:279: T2MOD &= 0x5F;
      000700 53 C9 5F         [24] 1482 	anl	_T2MOD,#0x5f
                                   1483 ;	../Firmware/src/utils.c:281: if(_clk == DIV_4) T2MOD |= 0x20;
      000703 74 01            [12] 1484 	mov	a,#0x01
      000705 B5 41 03         [24] 1485 	cjne	a,_select_timer_clk_PARM_2,00106$
      000708 43 C9 20         [24] 1486 	orl	_T2MOD,#0x20
      00070B                       1487 00106$:
                                   1488 ;	../Firmware/src/utils.c:282: if(_clk == F_SYS) T2MOD |= 0xA0;
      00070B 74 03            [12] 1489 	mov	a,#0x03
      00070D B5 41 28         [24] 1490 	cjne	a,_select_timer_clk_PARM_2,00124$
      000710 43 C9 A0         [24] 1491 	orl	_T2MOD,#0xa0
      000713 22               [24] 1492 	ret
      000714                       1493 00119$:
                                   1494 ;	../Firmware/src/utils.c:284: else if(_t == TIMER2){
      000714 BF 02 21         [24] 1495 	cjne	r7,#0x02,00124$
                                   1496 ;	../Firmware/src/utils.c:285: T2MOD &= 0x3F;
      000717 53 C9 3F         [24] 1497 	anl	_T2MOD,#0x3f
                                   1498 ;	../Firmware/src/utils.c:286: if(_clk == DIV_12) T2MOD |= 0x10;
      00071A E5 41            [12] 1499 	mov	a,_select_timer_clk_PARM_2
      00071C 70 03            [24] 1500 	jnz	00110$
      00071E 43 C9 10         [24] 1501 	orl	_T2MOD,#0x10
      000721                       1502 00110$:
                                   1503 ;	../Firmware/src/utils.c:287: if(_clk == DIV_4 || _clk == DIV_2) T2MOD |= 0x40;
      000721 74 01            [12] 1504 	mov	a,#0x01
      000723 B5 41 02         [24] 1505 	cjne	a,_select_timer_clk_PARM_2,00200$
      000726 80 05            [24] 1506 	sjmp	00111$
      000728                       1507 00200$:
      000728 74 02            [12] 1508 	mov	a,#0x02
      00072A B5 41 03         [24] 1509 	cjne	a,_select_timer_clk_PARM_2,00112$
      00072D                       1510 00111$:
      00072D 43 C9 40         [24] 1511 	orl	_T2MOD,#0x40
      000730                       1512 00112$:
                                   1513 ;	../Firmware/src/utils.c:288: if(_clk == F_SYS) T2MOD |= 0xC0;
      000730 74 03            [12] 1514 	mov	a,#0x03
      000732 B5 41 03         [24] 1515 	cjne	a,_select_timer_clk_PARM_2,00124$
      000735 43 C9 C0         [24] 1516 	orl	_T2MOD,#0xc0
      000738                       1517 00124$:
                                   1518 ;	../Firmware/src/utils.c:291: }
      000738 22               [24] 1519 	ret
                                   1520 ;------------------------------------------------------------
                                   1521 ;Allocation info for local variables in function 'select_tmr_clk_src'
                                   1522 ;------------------------------------------------------------
                                   1523 ;source                    Allocated with name '_select_tmr_clk_src_PARM_2'
                                   1524 ;_t                        Allocated to registers r7 
                                   1525 ;------------------------------------------------------------
                                   1526 ;	../Firmware/src/utils.c:296: void select_tmr_clk_src(enum TIMER _t, UINT8 source){
                                   1527 ;	-----------------------------------------
                                   1528 ;	 function select_tmr_clk_src
                                   1529 ;	-----------------------------------------
      000739                       1530 _select_tmr_clk_src:
                                   1531 ;	../Firmware/src/utils.c:297: if(_t == TIMER0 && source == 0){
      000739 E5 82            [12] 1532 	mov	a,dpl
      00073B FF               [12] 1533 	mov	r7,a
      00073C 70 08            [24] 1534 	jnz	00113$
      00073E E5 41            [12] 1535 	mov	a,_select_tmr_clk_src_PARM_2
      000740 70 04            [24] 1536 	jnz	00113$
                                   1537 ;	../Firmware/src/utils.c:298: TMOD &= 0xFB;
      000742 53 89 FB         [24] 1538 	anl	_TMOD,#0xfb
      000745 22               [24] 1539 	ret
      000746                       1540 00113$:
                                   1541 ;	../Firmware/src/utils.c:300: else if(_t == TIMER0 && source == 1){
      000746 EF               [12] 1542 	mov	a,r7
      000747 70 09            [24] 1543 	jnz	00109$
      000749 74 01            [12] 1544 	mov	a,#0x01
      00074B B5 41 04         [24] 1545 	cjne	a,_select_tmr_clk_src_PARM_2,00109$
                                   1546 ;	../Firmware/src/utils.c:301: TMOD |= 0x04;
      00074E 43 89 04         [24] 1547 	orl	_TMOD,#0x04
      000751 22               [24] 1548 	ret
      000752                       1549 00109$:
                                   1550 ;	../Firmware/src/utils.c:303: else if(_t == TIMER1 && source == 0){
      000752 BF 01 03         [24] 1551 	cjne	r7,#0x01,00171$
      000755 EF               [12] 1552 	mov	a,r7
      000756 80 01            [24] 1553 	sjmp	00172$
      000758                       1554 00171$:
      000758 E4               [12] 1555 	clr	a
      000759                       1556 00172$:
      000759 FF               [12] 1557 	mov	r7,a
      00075A 60 08            [24] 1558 	jz	00105$
      00075C E5 41            [12] 1559 	mov	a,_select_tmr_clk_src_PARM_2
      00075E 70 04            [24] 1560 	jnz	00105$
                                   1561 ;	../Firmware/src/utils.c:304: TMOD &= 0xBF;
      000760 53 89 BF         [24] 1562 	anl	_TMOD,#0xbf
      000763 22               [24] 1563 	ret
      000764                       1564 00105$:
                                   1565 ;	../Firmware/src/utils.c:306: else if(_t == TIMER1 && source == 1){
      000764 EF               [12] 1566 	mov	a,r7
      000765 60 08            [24] 1567 	jz	00116$
      000767 74 01            [12] 1568 	mov	a,#0x01
      000769 B5 41 03         [24] 1569 	cjne	a,_select_tmr_clk_src_PARM_2,00116$
                                   1570 ;	../Firmware/src/utils.c:307: TMOD |= 0x40;
      00076C 43 89 40         [24] 1571 	orl	_TMOD,#0x40
      00076F                       1572 00116$:
                                   1573 ;	../Firmware/src/utils.c:310: }
      00076F 22               [24] 1574 	ret
                                   1575 ;------------------------------------------------------------
                                   1576 ;Allocation info for local variables in function 'update_timer_reg'
                                   1577 ;------------------------------------------------------------
                                   1578 ;value                     Allocated with name '_update_timer_reg_PARM_2'
                                   1579 ;_t                        Allocated to registers r7 
                                   1580 ;------------------------------------------------------------
                                   1581 ;	../Firmware/src/utils.c:315: void update_timer_reg(enum TIMER _t, UINT16 value){
                                   1582 ;	-----------------------------------------
                                   1583 ;	 function update_timer_reg
                                   1584 ;	-----------------------------------------
      000770                       1585 _update_timer_reg:
      000770 AF 82            [24] 1586 	mov	r7, dpl
                                   1587 ;	../Firmware/src/utils.c:316: switch(_t){
      000772 BF 00 02         [24] 1588 	cjne	r7,#0x00,00125$
      000775 80 0A            [24] 1589 	sjmp	00101$
      000777                       1590 00125$:
      000777 BF 01 02         [24] 1591 	cjne	r7,#0x01,00126$
      00077A 80 0C            [24] 1592 	sjmp	00102$
      00077C                       1593 00126$:
                                   1594 ;	../Firmware/src/utils.c:317: case TIMER0:    TL0 = (UINT8)value;
      00077C BF 02 16         [24] 1595 	cjne	r7,#0x02,00105$
      00077F 80 0E            [24] 1596 	sjmp	00103$
      000781                       1597 00101$:
      000781 85 41 8A         [24] 1598 	mov	_TL0,_update_timer_reg_PARM_2
                                   1599 ;	../Firmware/src/utils.c:318: TH0 = (UINT8)(value >> 8);
      000784 85 42 8C         [24] 1600 	mov	_TH0,(_update_timer_reg_PARM_2 + 1)
                                   1601 ;	../Firmware/src/utils.c:319: break;
                                   1602 ;	../Firmware/src/utils.c:320: case TIMER1:    TL1 = (UINT8)value;
      000787 22               [24] 1603 	ret
      000788                       1604 00102$:
      000788 85 41 8B         [24] 1605 	mov	_TL1,_update_timer_reg_PARM_2
                                   1606 ;	../Firmware/src/utils.c:321: TH1 = (UINT8)(value >> 8);
      00078B 85 42 8D         [24] 1607 	mov	_TH1,(_update_timer_reg_PARM_2 + 1)
                                   1608 ;	../Firmware/src/utils.c:322: break;
                                   1609 ;	../Firmware/src/utils.c:323: case TIMER2:    TL2 = (UINT8)value;
      00078E 22               [24] 1610 	ret
      00078F                       1611 00103$:
      00078F 85 41 CC         [24] 1612 	mov	_TL2,_update_timer_reg_PARM_2
                                   1613 ;	../Firmware/src/utils.c:324: TH2 = (UINT8)(value >> 8);
      000792 85 42 CD         [24] 1614 	mov	_TH2,(_update_timer_reg_PARM_2 + 1)
                                   1615 ;	../Firmware/src/utils.c:326: }
      000795                       1616 00105$:
                                   1617 ;	../Firmware/src/utils.c:327: }
      000795 22               [24] 1618 	ret
                                   1619 ;------------------------------------------------------------
                                   1620 ;Allocation info for local variables in function 'timer_interrupt'
                                   1621 ;------------------------------------------------------------
                                   1622 ;enable_bit                Allocated with name '_timer_interrupt_PARM_2'
                                   1623 ;_t                        Allocated to registers r7 
                                   1624 ;------------------------------------------------------------
                                   1625 ;	../Firmware/src/utils.c:332: void timer_interrupt(enum TIMER _t, UINT8 enable_bit){
                                   1626 ;	-----------------------------------------
                                   1627 ;	 function timer_interrupt
                                   1628 ;	-----------------------------------------
      000796                       1629 _timer_interrupt:
                                   1630 ;	../Firmware/src/utils.c:334: if(_t == TIMER0){
      000796 E5 82            [12] 1631 	mov	a,dpl
      000798 FF               [12] 1632 	mov	r7,a
      000799 70 0F            [24] 1633 	jnz	00116$
                                   1634 ;	../Firmware/src/utils.c:335: if(enable_bit > 0) {
      00079B E5 41            [12] 1635 	mov	a,_timer_interrupt_PARM_2
      00079D 60 07            [24] 1636 	jz	00102$
                                   1637 ;	../Firmware/src/utils.c:336: IE |= 0x80;
      00079F 43 A8 80         [24] 1638 	orl	_IE,#0x80
                                   1639 ;	../Firmware/src/utils.c:337: IE |= 0x02;
      0007A2 43 A8 02         [24] 1640 	orl	_IE,#0x02
      0007A5 22               [24] 1641 	ret
      0007A6                       1642 00102$:
                                   1643 ;	../Firmware/src/utils.c:339: else IE &= 0xFD;
      0007A6 53 A8 FD         [24] 1644 	anl	_IE,#0xfd
      0007A9 22               [24] 1645 	ret
      0007AA                       1646 00116$:
                                   1647 ;	../Firmware/src/utils.c:341: else if(_t == TIMER1){
      0007AA BF 01 0F         [24] 1648 	cjne	r7,#0x01,00113$
                                   1649 ;	../Firmware/src/utils.c:342: if(enable_bit > 0) {
      0007AD E5 41            [12] 1650 	mov	a,_timer_interrupt_PARM_2
      0007AF 60 07            [24] 1651 	jz	00105$
                                   1652 ;	../Firmware/src/utils.c:343: IE |= 0x80;
      0007B1 43 A8 80         [24] 1653 	orl	_IE,#0x80
                                   1654 ;	../Firmware/src/utils.c:344: IE |= 0x08; 
      0007B4 43 A8 08         [24] 1655 	orl	_IE,#0x08
      0007B7 22               [24] 1656 	ret
      0007B8                       1657 00105$:
                                   1658 ;	../Firmware/src/utils.c:346: else IE &= 0xF7;
      0007B8 53 A8 F7         [24] 1659 	anl	_IE,#0xf7
      0007BB 22               [24] 1660 	ret
      0007BC                       1661 00113$:
                                   1662 ;	../Firmware/src/utils.c:348: else if(_t == TIMER2){
      0007BC BF 02 0E         [24] 1663 	cjne	r7,#0x02,00118$
                                   1664 ;	../Firmware/src/utils.c:349: if(enable_bit > 0) {
      0007BF E5 41            [12] 1665 	mov	a,_timer_interrupt_PARM_2
      0007C1 60 07            [24] 1666 	jz	00108$
                                   1667 ;	../Firmware/src/utils.c:350: IE |= 0x80;
      0007C3 43 A8 80         [24] 1668 	orl	_IE,#0x80
                                   1669 ;	../Firmware/src/utils.c:351: IE |= 0x20;
      0007C6 43 A8 20         [24] 1670 	orl	_IE,#0x20
      0007C9 22               [24] 1671 	ret
      0007CA                       1672 00108$:
                                   1673 ;	../Firmware/src/utils.c:353: else IE &= 0xDF;
      0007CA 53 A8 DF         [24] 1674 	anl	_IE,#0xdf
      0007CD                       1675 00118$:
                                   1676 ;	../Firmware/src/utils.c:355: }
      0007CD 22               [24] 1677 	ret
                                   1678 ;------------------------------------------------------------
                                   1679 ;Allocation info for local variables in function 'start_timer'
                                   1680 ;------------------------------------------------------------
                                   1681 ;_t                        Allocated to registers r7 
                                   1682 ;------------------------------------------------------------
                                   1683 ;	../Firmware/src/utils.c:359: void start_timer(enum TIMER _t){
                                   1684 ;	-----------------------------------------
                                   1685 ;	 function start_timer
                                   1686 ;	-----------------------------------------
      0007CE                       1687 _start_timer:
                                   1688 ;	../Firmware/src/utils.c:360: if(_t == TIMER0){
      0007CE E5 82            [12] 1689 	mov	a,dpl
      0007D0 FF               [12] 1690 	mov	r7,a
      0007D1 70 05            [24] 1691 	jnz	00104$
                                   1692 ;	../Firmware/src/utils.c:361: TCON |=0x10;
      0007D3 43 88 10         [24] 1693 	orl	_TCON,#0x10
      0007D6 80 06            [24] 1694 	sjmp	00105$
      0007D8                       1695 00104$:
                                   1696 ;	../Firmware/src/utils.c:363: else if(_t == TIMER1){
      0007D8 BF 01 03         [24] 1697 	cjne	r7,#0x01,00105$
                                   1698 ;	../Firmware/src/utils.c:364: TCON |=0x40;
      0007DB 43 88 40         [24] 1699 	orl	_TCON,#0x40
      0007DE                       1700 00105$:
                                   1701 ;	../Firmware/src/utils.c:366: if(_t == TIMER2){
      0007DE BF 02 03         [24] 1702 	cjne	r7,#0x02,00108$
                                   1703 ;	../Firmware/src/utils.c:367: T2CON |=0x04;
      0007E1 43 C8 04         [24] 1704 	orl	_T2CON,#0x04
      0007E4                       1705 00108$:
                                   1706 ;	../Firmware/src/utils.c:369: }
      0007E4 22               [24] 1707 	ret
                                   1708 ;------------------------------------------------------------
                                   1709 ;Allocation info for local variables in function 'stop_timer'
                                   1710 ;------------------------------------------------------------
                                   1711 ;_t                        Allocated to registers r7 
                                   1712 ;------------------------------------------------------------
                                   1713 ;	../Firmware/src/utils.c:373: void stop_timer(enum TIMER _t){
                                   1714 ;	-----------------------------------------
                                   1715 ;	 function stop_timer
                                   1716 ;	-----------------------------------------
      0007E5                       1717 _stop_timer:
                                   1718 ;	../Firmware/src/utils.c:374: if(_t == TIMER0){
      0007E5 E5 82            [12] 1719 	mov	a,dpl
      0007E7 FF               [12] 1720 	mov	r7,a
      0007E8 70 05            [24] 1721 	jnz	00104$
                                   1722 ;	../Firmware/src/utils.c:375: TCON &=0xEF;
      0007EA 53 88 EF         [24] 1723 	anl	_TCON,#0xef
      0007ED 80 06            [24] 1724 	sjmp	00105$
      0007EF                       1725 00104$:
                                   1726 ;	../Firmware/src/utils.c:377: else if(_t == TIMER1){
      0007EF BF 01 03         [24] 1727 	cjne	r7,#0x01,00105$
                                   1728 ;	../Firmware/src/utils.c:378: TCON &=0xBF;
      0007F2 53 88 BF         [24] 1729 	anl	_TCON,#0xbf
      0007F5                       1730 00105$:
                                   1731 ;	../Firmware/src/utils.c:380: if(_t == TIMER2){
      0007F5 BF 02 03         [24] 1732 	cjne	r7,#0x02,00108$
                                   1733 ;	../Firmware/src/utils.c:381: T2CON &=0xFB;
      0007F8 53 C8 FB         [24] 1734 	anl	_T2CON,#0xfb
      0007FB                       1735 00108$:
                                   1736 ;	../Firmware/src/utils.c:383: }
      0007FB 22               [24] 1737 	ret
                                   1738 ;------------------------------------------------------------
                                   1739 ;Allocation info for local variables in function 'uart_begin'
                                   1740 ;------------------------------------------------------------
                                   1741 ;baudrate                  Allocated with name '_uart_begin_PARM_2'
                                   1742 ;type                      Allocated to registers r7 
                                   1743 ;freq                      Allocated to registers r6 
                                   1744 ;mult                      Allocated to registers r2 r3 r4 r5 
                                   1745 ;------------------------------------------------------------
                                   1746 ;	../Firmware/src/utils.c:392: void uart_begin(enum UART_TYPE type, long baudrate){
                                   1747 ;	-----------------------------------------
                                   1748 ;	 function uart_begin
                                   1749 ;	-----------------------------------------
      0007FC                       1750 _uart_begin:
      0007FC AF 82            [24] 1751 	mov	r7, dpl
                                   1752 ;	../Firmware/src/utils.c:394: UINT8 freq = get_system_freq();
      0007FE C0 07            [24] 1753 	push	ar7
      000800 12 06 78         [24] 1754 	lcall	_get_system_freq
      000803 AE 82            [24] 1755 	mov	r6, dpl
      000805 D0 07            [24] 1756 	pop	ar7
                                   1757 ;	../Firmware/src/utils.c:395: long mult = 0l; 
      000807 7A 00            [12] 1758 	mov	r2,#0x00
      000809 7B 00            [12] 1759 	mov	r3,#0x00
      00080B 7C 00            [12] 1760 	mov	r4,#0x00
      00080D 7D 00            [12] 1761 	mov	r5,#0x00
                                   1762 ;	../Firmware/src/utils.c:396: switch(freq){
      00080F EE               [12] 1763 	mov	a,r6
      000810 24 F9            [12] 1764 	add	a,#0xff - 0x06
      000812 40 58            [24] 1765 	jc	00108$
      000814 EE               [12] 1766 	mov	a,r6
      000815 2E               [12] 1767 	add	a,r6
                                   1768 ;	../Firmware/src/utils.c:397: case 0: mult = 187500;
      000816 90 08 1A         [24] 1769 	mov	dptr,#00126$
      000819 73               [24] 1770 	jmp	@a+dptr
      00081A                       1771 00126$:
      00081A 80 0C            [24] 1772 	sjmp	00101$
      00081C 80 14            [24] 1773 	sjmp	00102$
      00081E 80 1C            [24] 1774 	sjmp	00103$
      000820 80 24            [24] 1775 	sjmp	00104$
      000822 80 2C            [24] 1776 	sjmp	00105$
      000824 80 34            [24] 1777 	sjmp	00106$
      000826 80 3C            [24] 1778 	sjmp	00107$
      000828                       1779 00101$:
      000828 7A 6C            [12] 1780 	mov	r2,#0x6c
      00082A 7B DC            [12] 1781 	mov	r3,#0xdc
      00082C 7C 02            [12] 1782 	mov	r4,#0x02
      00082E 7D 00            [12] 1783 	mov	r5,#0x00
                                   1784 ;	../Firmware/src/utils.c:398: break;
                                   1785 ;	../Firmware/src/utils.c:399: case 1: mult = 750000;
      000830 80 3A            [24] 1786 	sjmp	00108$
      000832                       1787 00102$:
      000832 7A B0            [12] 1788 	mov	r2,#0xb0
      000834 7B 71            [12] 1789 	mov	r3,#0x71
      000836 7C 0B            [12] 1790 	mov	r4,#0x0b
      000838 7D 00            [12] 1791 	mov	r5,#0x00
                                   1792 ;	../Firmware/src/utils.c:400: break;
                                   1793 ;	../Firmware/src/utils.c:401: case 2: mult = 3000000;
      00083A 80 30            [24] 1794 	sjmp	00108$
      00083C                       1795 00103$:
      00083C 7A C0            [12] 1796 	mov	r2,#0xc0
      00083E 7B C6            [12] 1797 	mov	r3,#0xc6
      000840 7C 2D            [12] 1798 	mov	r4,#0x2d
      000842 7D 00            [12] 1799 	mov	r5,#0x00
                                   1800 ;	../Firmware/src/utils.c:402: break;
                                   1801 ;	../Firmware/src/utils.c:403: case 3: mult = 6000000;
      000844 80 26            [24] 1802 	sjmp	00108$
      000846                       1803 00104$:
      000846 7A 80            [12] 1804 	mov	r2,#0x80
      000848 7B 8D            [12] 1805 	mov	r3,#0x8d
      00084A 7C 5B            [12] 1806 	mov	r4,#0x5b
      00084C 7D 00            [12] 1807 	mov	r5,#0x00
                                   1808 ;	../Firmware/src/utils.c:404: break;
                                   1809 ;	../Firmware/src/utils.c:405: case 4: mult = 12000000;
      00084E 80 1C            [24] 1810 	sjmp	00108$
      000850                       1811 00105$:
      000850 7A 00            [12] 1812 	mov	r2,#0x00
      000852 7B 1B            [12] 1813 	mov	r3,#0x1b
      000854 7C B7            [12] 1814 	mov	r4,#0xb7
      000856 7D 00            [12] 1815 	mov	r5,#0x00
                                   1816 ;	../Firmware/src/utils.c:406: break;
                                   1817 ;	../Firmware/src/utils.c:407: case 5: mult = 16000000;
      000858 80 12            [24] 1818 	sjmp	00108$
      00085A                       1819 00106$:
      00085A 7A 00            [12] 1820 	mov	r2,#0x00
      00085C 7B 24            [12] 1821 	mov	r3,#0x24
      00085E 7C F4            [12] 1822 	mov	r4,#0xf4
      000860 7D 00            [12] 1823 	mov	r5,#0x00
                                   1824 ;	../Firmware/src/utils.c:408: break;
                                   1825 ;	../Firmware/src/utils.c:409: case 6: mult = 24000000;
      000862 80 08            [24] 1826 	sjmp	00108$
      000864                       1827 00107$:
      000864 7A 00            [12] 1828 	mov	r2,#0x00
      000866 7B 36            [12] 1829 	mov	r3,#0x36
      000868 7C 6E            [12] 1830 	mov	r4,#0x6e
      00086A 7D 01            [12] 1831 	mov	r5,#0x01
                                   1832 ;	../Firmware/src/utils.c:411: }
      00086C                       1833 00108$:
                                   1834 ;	../Firmware/src/utils.c:412: if(type == UART0){
      00086C EF               [12] 1835 	mov	a,r7
      00086D 70 57            [24] 1836 	jnz	00111$
                                   1837 ;	../Firmware/src/utils.c:413: T2CON &= 0xCF;
      00086F 53 C8 CF         [24] 1838 	anl	_T2CON,#0xcf
                                   1839 ;	../Firmware/src/utils.c:414: T2MOD |= 0xA0;
      000872 43 C9 A0         [24] 1840 	orl	_T2MOD,#0xa0
                                   1841 ;	../Firmware/src/utils.c:415: PCON |= 0x80;
      000875 43 87 80         [24] 1842 	orl	_PCON,#0x80
                                   1843 ;	../Firmware/src/utils.c:416: TH1 = 256 - mult / 16 / baudrate;
      000878 75 41 10         [24] 1844 	mov	__divslong_PARM_2,#0x10
      00087B E4               [12] 1845 	clr	a
      00087C F5 42            [12] 1846 	mov	(__divslong_PARM_2 + 1),a
      00087E F5 43            [12] 1847 	mov	(__divslong_PARM_2 + 2),a
      000880 F5 44            [12] 1848 	mov	(__divslong_PARM_2 + 3),a
      000882 8A 82            [24] 1849 	mov	dpl, r2
      000884 8B 83            [24] 1850 	mov	dph, r3
      000886 8C F0            [24] 1851 	mov	b, r4
      000888 ED               [12] 1852 	mov	a, r5
      000889 12 18 33         [24] 1853 	lcall	__divslong
      00088C 85 09 41         [24] 1854 	mov	__divslong_PARM_2,_uart_begin_PARM_2
      00088F 85 0A 42         [24] 1855 	mov	(__divslong_PARM_2 + 1),(_uart_begin_PARM_2 + 1)
      000892 85 0B 43         [24] 1856 	mov	(__divslong_PARM_2 + 2),(_uart_begin_PARM_2 + 2)
      000895 85 0C 44         [24] 1857 	mov	(__divslong_PARM_2 + 3),(_uart_begin_PARM_2 + 3)
      000898 12 18 33         [24] 1858 	lcall	__divslong
      00089B AC 82            [24] 1859 	mov	r4, dpl
      00089D C3               [12] 1860 	clr	c
      00089E E4               [12] 1861 	clr	a
      00089F 9C               [12] 1862 	subb	a,r4
      0008A0 F5 8D            [12] 1863 	mov	_TH1,a
                                   1864 ;	../Firmware/src/utils.c:417: timer_interrupt(TIMER1,1);
      0008A2 75 41 01         [24] 1865 	mov	_timer_interrupt_PARM_2,#0x01
      0008A5 75 82 01         [24] 1866 	mov	dpl, #0x01
      0008A8 12 07 96         [24] 1867 	lcall	_timer_interrupt
                                   1868 ;	../Firmware/src/utils.c:418: set_timer_mode(TIMER1,TMR_MODE_2);
      0008AB 75 41 02         [24] 1869 	mov	_set_timer_mode_PARM_2,#0x02
      0008AE 75 82 01         [24] 1870 	mov	dpl, #0x01
      0008B1 12 06 7F         [24] 1871 	lcall	_set_timer_mode
                                   1872 ;	../Firmware/src/utils.c:419: TMOD &= 0xB7;
      0008B4 53 89 B7         [24] 1873 	anl	_TMOD,#0xb7
                                   1874 ;	../Firmware/src/utils.c:420: start_timer(TIMER1);
      0008B7 75 82 01         [24] 1875 	mov	dpl, #0x01
      0008BA 12 07 CE         [24] 1876 	lcall	_start_timer
                                   1877 ;	../Firmware/src/utils.c:421: SCON |= 0x50;
      0008BD 43 98 50         [24] 1878 	orl	_SCON,#0x50
                                   1879 ;	../Firmware/src/utils.c:422: IE &= 0xBF;
      0008C0 53 A8 BF         [24] 1880 	anl	_IE,#0xbf
                                   1881 ;	../Firmware/src/utils.c:423: IE |= 0x90;
      0008C3 43 A8 90         [24] 1882 	orl	_IE,#0x90
      0008C6                       1883 00111$:
                                   1884 ;	../Firmware/src/utils.c:429: }
      0008C6 22               [24] 1885 	ret
                                   1886 ;------------------------------------------------------------
                                   1887 ;Allocation info for local variables in function 'uart0_write'
                                   1888 ;------------------------------------------------------------
                                   1889 ;data                      Allocated to registers 
                                   1890 ;------------------------------------------------------------
                                   1891 ;	../Firmware/src/utils.c:434: void uart0_write(UINT8 data){
                                   1892 ;	-----------------------------------------
                                   1893 ;	 function uart0_write
                                   1894 ;	-----------------------------------------
      0008C7                       1895 _uart0_write:
      0008C7 85 82 99         [24] 1896 	mov	_SBUF,dpl
                                   1897 ;	../Firmware/src/utils.c:436: while (((SCON >> 1) & 0x01) == 0) {
      0008CA                       1898 00101$:
      0008CA E5 98            [12] 1899 	mov	a,_SCON
      0008CC 03               [12] 1900 	rr	a
      0008CD 54 01            [12] 1901 	anl	a,#0x01
      0008CF 60 F9            [24] 1902 	jz	00101$
                                   1903 ;	../Firmware/src/utils.c:439: SCON &= 0xFD; 
      0008D1 53 98 FD         [24] 1904 	anl	_SCON,#0xfd
                                   1905 ;	../Firmware/src/utils.c:440: }
      0008D4 22               [24] 1906 	ret
                                   1907 ;------------------------------------------------------------
                                   1908 ;Allocation info for local variables in function 'uart0_print'
                                   1909 ;------------------------------------------------------------
                                   1910 ;data                      Allocated to registers r5 r6 r7 
                                   1911 ;index                     Allocated to registers r3 r4 
                                   1912 ;------------------------------------------------------------
                                   1913 ;	../Firmware/src/utils.c:444: void uart0_print(char * data){
                                   1914 ;	-----------------------------------------
                                   1915 ;	 function uart0_print
                                   1916 ;	-----------------------------------------
      0008D5                       1917 _uart0_print:
      0008D5 AD 82            [24] 1918 	mov	r5, dpl
      0008D7 AE 83            [24] 1919 	mov	r6, dph
      0008D9 AF F0            [24] 1920 	mov	r7, b
                                   1921 ;	../Firmware/src/utils.c:446: while(data[index] != '\0'){
      0008DB 7B 00            [12] 1922 	mov	r3,#0x00
      0008DD 7C 00            [12] 1923 	mov	r4,#0x00
      0008DF                       1924 00101$:
      0008DF EB               [12] 1925 	mov	a,r3
      0008E0 2D               [12] 1926 	add	a, r5
      0008E1 F8               [12] 1927 	mov	r0,a
      0008E2 EC               [12] 1928 	mov	a,r4
      0008E3 3E               [12] 1929 	addc	a, r6
      0008E4 F9               [12] 1930 	mov	r1,a
      0008E5 8F 02            [24] 1931 	mov	ar2,r7
      0008E7 88 82            [24] 1932 	mov	dpl,r0
      0008E9 89 83            [24] 1933 	mov	dph,r1
      0008EB 8A F0            [24] 1934 	mov	b,r2
      0008ED 12 18 9D         [24] 1935 	lcall	__gptrget
      0008F0 60 31            [24] 1936 	jz	00104$
                                   1937 ;	../Firmware/src/utils.c:447: uart0_write(data[index++]);
      0008F2 EB               [12] 1938 	mov	a,r3
      0008F3 2D               [12] 1939 	add	a, r5
      0008F4 F8               [12] 1940 	mov	r0,a
      0008F5 EC               [12] 1941 	mov	a,r4
      0008F6 3E               [12] 1942 	addc	a, r6
      0008F7 F9               [12] 1943 	mov	r1,a
      0008F8 8F 02            [24] 1944 	mov	ar2,r7
      0008FA 0B               [12] 1945 	inc	r3
      0008FB BB 00 01         [24] 1946 	cjne	r3,#0x00,00120$
      0008FE 0C               [12] 1947 	inc	r4
      0008FF                       1948 00120$:
      0008FF 88 82            [24] 1949 	mov	dpl,r0
      000901 89 83            [24] 1950 	mov	dph,r1
      000903 8A F0            [24] 1951 	mov	b,r2
      000905 12 18 9D         [24] 1952 	lcall	__gptrget
      000908 F5 82            [12] 1953 	mov	dpl,a
      00090A C0 07            [24] 1954 	push	ar7
      00090C C0 06            [24] 1955 	push	ar6
      00090E C0 05            [24] 1956 	push	ar5
      000910 C0 04            [24] 1957 	push	ar4
      000912 C0 03            [24] 1958 	push	ar3
      000914 12 08 C7         [24] 1959 	lcall	_uart0_write
      000917 D0 03            [24] 1960 	pop	ar3
      000919 D0 04            [24] 1961 	pop	ar4
      00091B D0 05            [24] 1962 	pop	ar5
      00091D D0 06            [24] 1963 	pop	ar6
      00091F D0 07            [24] 1964 	pop	ar7
      000921 80 BC            [24] 1965 	sjmp	00101$
      000923                       1966 00104$:
                                   1967 ;	../Firmware/src/utils.c:449: }
      000923 22               [24] 1968 	ret
                                   1969 ;------------------------------------------------------------
                                   1970 ;Allocation info for local variables in function 'uart0_println'
                                   1971 ;------------------------------------------------------------
                                   1972 ;data                      Allocated to registers r5 r6 r7 
                                   1973 ;t                         Allocated with name '_uart0_println_t_10000_199'
                                   1974 ;------------------------------------------------------------
                                   1975 ;	../Firmware/src/utils.c:453: void uart0_println(char * data){
                                   1976 ;	-----------------------------------------
                                   1977 ;	 function uart0_println
                                   1978 ;	-----------------------------------------
      000924                       1979 _uart0_println:
      000924 AD 82            [24] 1980 	mov	r5, dpl
      000926 AE 83            [24] 1981 	mov	r6, dph
      000928 AF F0            [24] 1982 	mov	r7, b
                                   1983 ;	../Firmware/src/utils.c:454: __xdata unsigned char t[256] = {0};
      00092A 90 01 59         [24] 1984 	mov	dptr,#_uart0_println_t_10000_199
      00092D E4               [12] 1985 	clr	a
      00092E F0               [24] 1986 	movx	@dptr,a
      00092F 90 01 5A         [24] 1987 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0001)
      000932 F0               [24] 1988 	movx	@dptr,a
      000933 90 01 5B         [24] 1989 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0002)
      000936 F0               [24] 1990 	movx	@dptr,a
      000937 90 01 5C         [24] 1991 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0003)
      00093A F0               [24] 1992 	movx	@dptr,a
      00093B 90 01 5D         [24] 1993 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0004)
      00093E F0               [24] 1994 	movx	@dptr,a
      00093F 90 01 5E         [24] 1995 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0005)
      000942 F0               [24] 1996 	movx	@dptr,a
      000943 90 01 5F         [24] 1997 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0006)
      000946 F0               [24] 1998 	movx	@dptr,a
      000947 90 01 60         [24] 1999 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0007)
      00094A F0               [24] 2000 	movx	@dptr,a
      00094B 90 01 61         [24] 2001 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0008)
      00094E F0               [24] 2002 	movx	@dptr,a
      00094F 90 01 62         [24] 2003 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0009)
      000952 F0               [24] 2004 	movx	@dptr,a
      000953 90 01 63         [24] 2005 	mov	dptr,#(_uart0_println_t_10000_199 + 0x000a)
      000956 F0               [24] 2006 	movx	@dptr,a
      000957 90 01 64         [24] 2007 	mov	dptr,#(_uart0_println_t_10000_199 + 0x000b)
      00095A F0               [24] 2008 	movx	@dptr,a
      00095B 90 01 65         [24] 2009 	mov	dptr,#(_uart0_println_t_10000_199 + 0x000c)
      00095E F0               [24] 2010 	movx	@dptr,a
      00095F 90 01 66         [24] 2011 	mov	dptr,#(_uart0_println_t_10000_199 + 0x000d)
      000962 F0               [24] 2012 	movx	@dptr,a
      000963 90 01 67         [24] 2013 	mov	dptr,#(_uart0_println_t_10000_199 + 0x000e)
      000966 F0               [24] 2014 	movx	@dptr,a
      000967 90 01 68         [24] 2015 	mov	dptr,#(_uart0_println_t_10000_199 + 0x000f)
      00096A F0               [24] 2016 	movx	@dptr,a
      00096B 90 01 69         [24] 2017 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0010)
      00096E F0               [24] 2018 	movx	@dptr,a
      00096F 90 01 6A         [24] 2019 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0011)
      000972 F0               [24] 2020 	movx	@dptr,a
      000973 90 01 6B         [24] 2021 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0012)
      000976 F0               [24] 2022 	movx	@dptr,a
      000977 90 01 6C         [24] 2023 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0013)
      00097A F0               [24] 2024 	movx	@dptr,a
      00097B 90 01 6D         [24] 2025 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0014)
      00097E F0               [24] 2026 	movx	@dptr,a
      00097F 90 01 6E         [24] 2027 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0015)
      000982 F0               [24] 2028 	movx	@dptr,a
      000983 90 01 6F         [24] 2029 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0016)
      000986 F0               [24] 2030 	movx	@dptr,a
      000987 90 01 70         [24] 2031 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0017)
      00098A F0               [24] 2032 	movx	@dptr,a
      00098B 90 01 71         [24] 2033 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0018)
      00098E F0               [24] 2034 	movx	@dptr,a
      00098F 90 01 72         [24] 2035 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0019)
      000992 F0               [24] 2036 	movx	@dptr,a
      000993 90 01 73         [24] 2037 	mov	dptr,#(_uart0_println_t_10000_199 + 0x001a)
      000996 F0               [24] 2038 	movx	@dptr,a
      000997 90 01 74         [24] 2039 	mov	dptr,#(_uart0_println_t_10000_199 + 0x001b)
      00099A F0               [24] 2040 	movx	@dptr,a
      00099B 90 01 75         [24] 2041 	mov	dptr,#(_uart0_println_t_10000_199 + 0x001c)
      00099E F0               [24] 2042 	movx	@dptr,a
      00099F 90 01 76         [24] 2043 	mov	dptr,#(_uart0_println_t_10000_199 + 0x001d)
      0009A2 F0               [24] 2044 	movx	@dptr,a
      0009A3 90 01 77         [24] 2045 	mov	dptr,#(_uart0_println_t_10000_199 + 0x001e)
      0009A6 F0               [24] 2046 	movx	@dptr,a
      0009A7 90 01 78         [24] 2047 	mov	dptr,#(_uart0_println_t_10000_199 + 0x001f)
      0009AA F0               [24] 2048 	movx	@dptr,a
      0009AB 90 01 79         [24] 2049 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0020)
      0009AE F0               [24] 2050 	movx	@dptr,a
      0009AF 90 01 7A         [24] 2051 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0021)
      0009B2 F0               [24] 2052 	movx	@dptr,a
      0009B3 90 01 7B         [24] 2053 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0022)
      0009B6 F0               [24] 2054 	movx	@dptr,a
      0009B7 90 01 7C         [24] 2055 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0023)
      0009BA F0               [24] 2056 	movx	@dptr,a
      0009BB 90 01 7D         [24] 2057 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0024)
      0009BE F0               [24] 2058 	movx	@dptr,a
      0009BF 90 01 7E         [24] 2059 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0025)
      0009C2 F0               [24] 2060 	movx	@dptr,a
      0009C3 90 01 7F         [24] 2061 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0026)
      0009C6 F0               [24] 2062 	movx	@dptr,a
      0009C7 90 01 80         [24] 2063 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0027)
      0009CA F0               [24] 2064 	movx	@dptr,a
      0009CB 90 01 81         [24] 2065 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0028)
      0009CE F0               [24] 2066 	movx	@dptr,a
      0009CF 90 01 82         [24] 2067 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0029)
      0009D2 F0               [24] 2068 	movx	@dptr,a
      0009D3 90 01 83         [24] 2069 	mov	dptr,#(_uart0_println_t_10000_199 + 0x002a)
      0009D6 F0               [24] 2070 	movx	@dptr,a
      0009D7 90 01 84         [24] 2071 	mov	dptr,#(_uart0_println_t_10000_199 + 0x002b)
      0009DA F0               [24] 2072 	movx	@dptr,a
      0009DB 90 01 85         [24] 2073 	mov	dptr,#(_uart0_println_t_10000_199 + 0x002c)
      0009DE F0               [24] 2074 	movx	@dptr,a
      0009DF 90 01 86         [24] 2075 	mov	dptr,#(_uart0_println_t_10000_199 + 0x002d)
      0009E2 F0               [24] 2076 	movx	@dptr,a
      0009E3 90 01 87         [24] 2077 	mov	dptr,#(_uart0_println_t_10000_199 + 0x002e)
      0009E6 F0               [24] 2078 	movx	@dptr,a
      0009E7 90 01 88         [24] 2079 	mov	dptr,#(_uart0_println_t_10000_199 + 0x002f)
      0009EA F0               [24] 2080 	movx	@dptr,a
      0009EB 90 01 89         [24] 2081 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0030)
      0009EE F0               [24] 2082 	movx	@dptr,a
      0009EF 90 01 8A         [24] 2083 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0031)
      0009F2 F0               [24] 2084 	movx	@dptr,a
      0009F3 90 01 8B         [24] 2085 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0032)
      0009F6 F0               [24] 2086 	movx	@dptr,a
      0009F7 90 01 8C         [24] 2087 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0033)
      0009FA F0               [24] 2088 	movx	@dptr,a
      0009FB 90 01 8D         [24] 2089 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0034)
      0009FE F0               [24] 2090 	movx	@dptr,a
      0009FF 90 01 8E         [24] 2091 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0035)
      000A02 F0               [24] 2092 	movx	@dptr,a
      000A03 90 01 8F         [24] 2093 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0036)
      000A06 F0               [24] 2094 	movx	@dptr,a
      000A07 90 01 90         [24] 2095 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0037)
      000A0A F0               [24] 2096 	movx	@dptr,a
      000A0B 90 01 91         [24] 2097 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0038)
      000A0E F0               [24] 2098 	movx	@dptr,a
      000A0F 90 01 92         [24] 2099 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0039)
      000A12 F0               [24] 2100 	movx	@dptr,a
      000A13 90 01 93         [24] 2101 	mov	dptr,#(_uart0_println_t_10000_199 + 0x003a)
      000A16 F0               [24] 2102 	movx	@dptr,a
      000A17 90 01 94         [24] 2103 	mov	dptr,#(_uart0_println_t_10000_199 + 0x003b)
      000A1A F0               [24] 2104 	movx	@dptr,a
      000A1B 90 01 95         [24] 2105 	mov	dptr,#(_uart0_println_t_10000_199 + 0x003c)
      000A1E F0               [24] 2106 	movx	@dptr,a
      000A1F 90 01 96         [24] 2107 	mov	dptr,#(_uart0_println_t_10000_199 + 0x003d)
      000A22 F0               [24] 2108 	movx	@dptr,a
      000A23 90 01 97         [24] 2109 	mov	dptr,#(_uart0_println_t_10000_199 + 0x003e)
      000A26 F0               [24] 2110 	movx	@dptr,a
      000A27 90 01 98         [24] 2111 	mov	dptr,#(_uart0_println_t_10000_199 + 0x003f)
      000A2A F0               [24] 2112 	movx	@dptr,a
      000A2B 90 01 99         [24] 2113 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0040)
      000A2E F0               [24] 2114 	movx	@dptr,a
      000A2F 90 01 9A         [24] 2115 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0041)
      000A32 F0               [24] 2116 	movx	@dptr,a
      000A33 90 01 9B         [24] 2117 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0042)
      000A36 F0               [24] 2118 	movx	@dptr,a
      000A37 90 01 9C         [24] 2119 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0043)
      000A3A F0               [24] 2120 	movx	@dptr,a
      000A3B 90 01 9D         [24] 2121 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0044)
      000A3E F0               [24] 2122 	movx	@dptr,a
      000A3F 90 01 9E         [24] 2123 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0045)
      000A42 F0               [24] 2124 	movx	@dptr,a
      000A43 90 01 9F         [24] 2125 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0046)
      000A46 F0               [24] 2126 	movx	@dptr,a
      000A47 90 01 A0         [24] 2127 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0047)
      000A4A F0               [24] 2128 	movx	@dptr,a
      000A4B 90 01 A1         [24] 2129 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0048)
      000A4E F0               [24] 2130 	movx	@dptr,a
      000A4F 90 01 A2         [24] 2131 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0049)
      000A52 F0               [24] 2132 	movx	@dptr,a
      000A53 90 01 A3         [24] 2133 	mov	dptr,#(_uart0_println_t_10000_199 + 0x004a)
      000A56 F0               [24] 2134 	movx	@dptr,a
      000A57 90 01 A4         [24] 2135 	mov	dptr,#(_uart0_println_t_10000_199 + 0x004b)
      000A5A F0               [24] 2136 	movx	@dptr,a
      000A5B 90 01 A5         [24] 2137 	mov	dptr,#(_uart0_println_t_10000_199 + 0x004c)
      000A5E F0               [24] 2138 	movx	@dptr,a
      000A5F 90 01 A6         [24] 2139 	mov	dptr,#(_uart0_println_t_10000_199 + 0x004d)
      000A62 F0               [24] 2140 	movx	@dptr,a
      000A63 90 01 A7         [24] 2141 	mov	dptr,#(_uart0_println_t_10000_199 + 0x004e)
      000A66 F0               [24] 2142 	movx	@dptr,a
      000A67 90 01 A8         [24] 2143 	mov	dptr,#(_uart0_println_t_10000_199 + 0x004f)
      000A6A F0               [24] 2144 	movx	@dptr,a
      000A6B 90 01 A9         [24] 2145 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0050)
      000A6E F0               [24] 2146 	movx	@dptr,a
      000A6F 90 01 AA         [24] 2147 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0051)
      000A72 F0               [24] 2148 	movx	@dptr,a
      000A73 90 01 AB         [24] 2149 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0052)
      000A76 F0               [24] 2150 	movx	@dptr,a
      000A77 90 01 AC         [24] 2151 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0053)
      000A7A F0               [24] 2152 	movx	@dptr,a
      000A7B 90 01 AD         [24] 2153 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0054)
      000A7E F0               [24] 2154 	movx	@dptr,a
      000A7F 90 01 AE         [24] 2155 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0055)
      000A82 F0               [24] 2156 	movx	@dptr,a
      000A83 90 01 AF         [24] 2157 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0056)
      000A86 F0               [24] 2158 	movx	@dptr,a
      000A87 90 01 B0         [24] 2159 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0057)
      000A8A F0               [24] 2160 	movx	@dptr,a
      000A8B 90 01 B1         [24] 2161 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0058)
      000A8E F0               [24] 2162 	movx	@dptr,a
      000A8F 90 01 B2         [24] 2163 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0059)
      000A92 F0               [24] 2164 	movx	@dptr,a
      000A93 90 01 B3         [24] 2165 	mov	dptr,#(_uart0_println_t_10000_199 + 0x005a)
      000A96 F0               [24] 2166 	movx	@dptr,a
      000A97 90 01 B4         [24] 2167 	mov	dptr,#(_uart0_println_t_10000_199 + 0x005b)
      000A9A F0               [24] 2168 	movx	@dptr,a
      000A9B 90 01 B5         [24] 2169 	mov	dptr,#(_uart0_println_t_10000_199 + 0x005c)
      000A9E F0               [24] 2170 	movx	@dptr,a
      000A9F 90 01 B6         [24] 2171 	mov	dptr,#(_uart0_println_t_10000_199 + 0x005d)
      000AA2 F0               [24] 2172 	movx	@dptr,a
      000AA3 90 01 B7         [24] 2173 	mov	dptr,#(_uart0_println_t_10000_199 + 0x005e)
      000AA6 F0               [24] 2174 	movx	@dptr,a
      000AA7 90 01 B8         [24] 2175 	mov	dptr,#(_uart0_println_t_10000_199 + 0x005f)
      000AAA F0               [24] 2176 	movx	@dptr,a
      000AAB 90 01 B9         [24] 2177 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0060)
      000AAE F0               [24] 2178 	movx	@dptr,a
      000AAF 90 01 BA         [24] 2179 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0061)
      000AB2 F0               [24] 2180 	movx	@dptr,a
      000AB3 90 01 BB         [24] 2181 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0062)
      000AB6 F0               [24] 2182 	movx	@dptr,a
      000AB7 90 01 BC         [24] 2183 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0063)
      000ABA F0               [24] 2184 	movx	@dptr,a
      000ABB 90 01 BD         [24] 2185 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0064)
      000ABE F0               [24] 2186 	movx	@dptr,a
      000ABF 90 01 BE         [24] 2187 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0065)
      000AC2 F0               [24] 2188 	movx	@dptr,a
      000AC3 90 01 BF         [24] 2189 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0066)
      000AC6 F0               [24] 2190 	movx	@dptr,a
      000AC7 90 01 C0         [24] 2191 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0067)
      000ACA F0               [24] 2192 	movx	@dptr,a
      000ACB 90 01 C1         [24] 2193 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0068)
      000ACE F0               [24] 2194 	movx	@dptr,a
      000ACF 90 01 C2         [24] 2195 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0069)
      000AD2 F0               [24] 2196 	movx	@dptr,a
      000AD3 90 01 C3         [24] 2197 	mov	dptr,#(_uart0_println_t_10000_199 + 0x006a)
      000AD6 F0               [24] 2198 	movx	@dptr,a
      000AD7 90 01 C4         [24] 2199 	mov	dptr,#(_uart0_println_t_10000_199 + 0x006b)
      000ADA F0               [24] 2200 	movx	@dptr,a
      000ADB 90 01 C5         [24] 2201 	mov	dptr,#(_uart0_println_t_10000_199 + 0x006c)
      000ADE F0               [24] 2202 	movx	@dptr,a
      000ADF 90 01 C6         [24] 2203 	mov	dptr,#(_uart0_println_t_10000_199 + 0x006d)
      000AE2 F0               [24] 2204 	movx	@dptr,a
      000AE3 90 01 C7         [24] 2205 	mov	dptr,#(_uart0_println_t_10000_199 + 0x006e)
      000AE6 F0               [24] 2206 	movx	@dptr,a
      000AE7 90 01 C8         [24] 2207 	mov	dptr,#(_uart0_println_t_10000_199 + 0x006f)
      000AEA F0               [24] 2208 	movx	@dptr,a
      000AEB 90 01 C9         [24] 2209 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0070)
      000AEE F0               [24] 2210 	movx	@dptr,a
      000AEF 90 01 CA         [24] 2211 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0071)
      000AF2 F0               [24] 2212 	movx	@dptr,a
      000AF3 90 01 CB         [24] 2213 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0072)
      000AF6 F0               [24] 2214 	movx	@dptr,a
      000AF7 90 01 CC         [24] 2215 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0073)
      000AFA F0               [24] 2216 	movx	@dptr,a
      000AFB 90 01 CD         [24] 2217 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0074)
      000AFE F0               [24] 2218 	movx	@dptr,a
      000AFF 90 01 CE         [24] 2219 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0075)
      000B02 F0               [24] 2220 	movx	@dptr,a
      000B03 90 01 CF         [24] 2221 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0076)
      000B06 F0               [24] 2222 	movx	@dptr,a
      000B07 90 01 D0         [24] 2223 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0077)
      000B0A F0               [24] 2224 	movx	@dptr,a
      000B0B 90 01 D1         [24] 2225 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0078)
      000B0E F0               [24] 2226 	movx	@dptr,a
      000B0F 90 01 D2         [24] 2227 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0079)
      000B12 F0               [24] 2228 	movx	@dptr,a
      000B13 90 01 D3         [24] 2229 	mov	dptr,#(_uart0_println_t_10000_199 + 0x007a)
      000B16 F0               [24] 2230 	movx	@dptr,a
      000B17 90 01 D4         [24] 2231 	mov	dptr,#(_uart0_println_t_10000_199 + 0x007b)
      000B1A F0               [24] 2232 	movx	@dptr,a
      000B1B 90 01 D5         [24] 2233 	mov	dptr,#(_uart0_println_t_10000_199 + 0x007c)
      000B1E F0               [24] 2234 	movx	@dptr,a
      000B1F 90 01 D6         [24] 2235 	mov	dptr,#(_uart0_println_t_10000_199 + 0x007d)
      000B22 F0               [24] 2236 	movx	@dptr,a
      000B23 90 01 D7         [24] 2237 	mov	dptr,#(_uart0_println_t_10000_199 + 0x007e)
      000B26 F0               [24] 2238 	movx	@dptr,a
      000B27 90 01 D8         [24] 2239 	mov	dptr,#(_uart0_println_t_10000_199 + 0x007f)
      000B2A F0               [24] 2240 	movx	@dptr,a
      000B2B 90 01 D9         [24] 2241 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0080)
      000B2E F0               [24] 2242 	movx	@dptr,a
      000B2F 90 01 DA         [24] 2243 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0081)
      000B32 F0               [24] 2244 	movx	@dptr,a
      000B33 90 01 DB         [24] 2245 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0082)
      000B36 F0               [24] 2246 	movx	@dptr,a
      000B37 90 01 DC         [24] 2247 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0083)
      000B3A F0               [24] 2248 	movx	@dptr,a
      000B3B 90 01 DD         [24] 2249 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0084)
      000B3E F0               [24] 2250 	movx	@dptr,a
      000B3F 90 01 DE         [24] 2251 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0085)
      000B42 F0               [24] 2252 	movx	@dptr,a
      000B43 90 01 DF         [24] 2253 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0086)
      000B46 F0               [24] 2254 	movx	@dptr,a
      000B47 90 01 E0         [24] 2255 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0087)
      000B4A F0               [24] 2256 	movx	@dptr,a
      000B4B 90 01 E1         [24] 2257 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0088)
      000B4E F0               [24] 2258 	movx	@dptr,a
      000B4F 90 01 E2         [24] 2259 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0089)
      000B52 F0               [24] 2260 	movx	@dptr,a
      000B53 90 01 E3         [24] 2261 	mov	dptr,#(_uart0_println_t_10000_199 + 0x008a)
      000B56 F0               [24] 2262 	movx	@dptr,a
      000B57 90 01 E4         [24] 2263 	mov	dptr,#(_uart0_println_t_10000_199 + 0x008b)
      000B5A F0               [24] 2264 	movx	@dptr,a
      000B5B 90 01 E5         [24] 2265 	mov	dptr,#(_uart0_println_t_10000_199 + 0x008c)
      000B5E F0               [24] 2266 	movx	@dptr,a
      000B5F 90 01 E6         [24] 2267 	mov	dptr,#(_uart0_println_t_10000_199 + 0x008d)
      000B62 F0               [24] 2268 	movx	@dptr,a
      000B63 90 01 E7         [24] 2269 	mov	dptr,#(_uart0_println_t_10000_199 + 0x008e)
      000B66 F0               [24] 2270 	movx	@dptr,a
      000B67 90 01 E8         [24] 2271 	mov	dptr,#(_uart0_println_t_10000_199 + 0x008f)
      000B6A F0               [24] 2272 	movx	@dptr,a
      000B6B 90 01 E9         [24] 2273 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0090)
      000B6E F0               [24] 2274 	movx	@dptr,a
      000B6F 90 01 EA         [24] 2275 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0091)
      000B72 F0               [24] 2276 	movx	@dptr,a
      000B73 90 01 EB         [24] 2277 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0092)
      000B76 F0               [24] 2278 	movx	@dptr,a
      000B77 90 01 EC         [24] 2279 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0093)
      000B7A F0               [24] 2280 	movx	@dptr,a
      000B7B 90 01 ED         [24] 2281 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0094)
      000B7E F0               [24] 2282 	movx	@dptr,a
      000B7F 90 01 EE         [24] 2283 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0095)
      000B82 F0               [24] 2284 	movx	@dptr,a
      000B83 90 01 EF         [24] 2285 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0096)
      000B86 F0               [24] 2286 	movx	@dptr,a
      000B87 90 01 F0         [24] 2287 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0097)
      000B8A F0               [24] 2288 	movx	@dptr,a
      000B8B 90 01 F1         [24] 2289 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0098)
      000B8E F0               [24] 2290 	movx	@dptr,a
      000B8F 90 01 F2         [24] 2291 	mov	dptr,#(_uart0_println_t_10000_199 + 0x0099)
      000B92 F0               [24] 2292 	movx	@dptr,a
      000B93 90 01 F3         [24] 2293 	mov	dptr,#(_uart0_println_t_10000_199 + 0x009a)
      000B96 F0               [24] 2294 	movx	@dptr,a
      000B97 90 01 F4         [24] 2295 	mov	dptr,#(_uart0_println_t_10000_199 + 0x009b)
      000B9A F0               [24] 2296 	movx	@dptr,a
      000B9B 90 01 F5         [24] 2297 	mov	dptr,#(_uart0_println_t_10000_199 + 0x009c)
      000B9E F0               [24] 2298 	movx	@dptr,a
      000B9F 90 01 F6         [24] 2299 	mov	dptr,#(_uart0_println_t_10000_199 + 0x009d)
      000BA2 F0               [24] 2300 	movx	@dptr,a
      000BA3 90 01 F7         [24] 2301 	mov	dptr,#(_uart0_println_t_10000_199 + 0x009e)
      000BA6 F0               [24] 2302 	movx	@dptr,a
      000BA7 90 01 F8         [24] 2303 	mov	dptr,#(_uart0_println_t_10000_199 + 0x009f)
      000BAA F0               [24] 2304 	movx	@dptr,a
      000BAB 90 01 F9         [24] 2305 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a0)
      000BAE F0               [24] 2306 	movx	@dptr,a
      000BAF 90 01 FA         [24] 2307 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a1)
      000BB2 F0               [24] 2308 	movx	@dptr,a
      000BB3 90 01 FB         [24] 2309 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a2)
      000BB6 F0               [24] 2310 	movx	@dptr,a
      000BB7 90 01 FC         [24] 2311 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a3)
      000BBA F0               [24] 2312 	movx	@dptr,a
      000BBB 90 01 FD         [24] 2313 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a4)
      000BBE F0               [24] 2314 	movx	@dptr,a
      000BBF 90 01 FE         [24] 2315 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a5)
      000BC2 F0               [24] 2316 	movx	@dptr,a
      000BC3 90 01 FF         [24] 2317 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a6)
      000BC6 F0               [24] 2318 	movx	@dptr,a
      000BC7 90 02 00         [24] 2319 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a7)
      000BCA F0               [24] 2320 	movx	@dptr,a
      000BCB 90 02 01         [24] 2321 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a8)
      000BCE F0               [24] 2322 	movx	@dptr,a
      000BCF 90 02 02         [24] 2323 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a9)
      000BD2 F0               [24] 2324 	movx	@dptr,a
      000BD3 90 02 03         [24] 2325 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00aa)
      000BD6 F0               [24] 2326 	movx	@dptr,a
      000BD7 90 02 04         [24] 2327 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ab)
      000BDA F0               [24] 2328 	movx	@dptr,a
      000BDB 90 02 05         [24] 2329 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ac)
      000BDE F0               [24] 2330 	movx	@dptr,a
      000BDF 90 02 06         [24] 2331 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ad)
      000BE2 F0               [24] 2332 	movx	@dptr,a
      000BE3 90 02 07         [24] 2333 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ae)
      000BE6 F0               [24] 2334 	movx	@dptr,a
      000BE7 90 02 08         [24] 2335 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00af)
      000BEA F0               [24] 2336 	movx	@dptr,a
      000BEB 90 02 09         [24] 2337 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b0)
      000BEE F0               [24] 2338 	movx	@dptr,a
      000BEF 90 02 0A         [24] 2339 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b1)
      000BF2 F0               [24] 2340 	movx	@dptr,a
      000BF3 90 02 0B         [24] 2341 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b2)
      000BF6 F0               [24] 2342 	movx	@dptr,a
      000BF7 90 02 0C         [24] 2343 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b3)
      000BFA F0               [24] 2344 	movx	@dptr,a
      000BFB 90 02 0D         [24] 2345 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b4)
      000BFE F0               [24] 2346 	movx	@dptr,a
      000BFF 90 02 0E         [24] 2347 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b5)
      000C02 F0               [24] 2348 	movx	@dptr,a
      000C03 90 02 0F         [24] 2349 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b6)
      000C06 F0               [24] 2350 	movx	@dptr,a
      000C07 90 02 10         [24] 2351 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b7)
      000C0A F0               [24] 2352 	movx	@dptr,a
      000C0B 90 02 11         [24] 2353 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b8)
      000C0E F0               [24] 2354 	movx	@dptr,a
      000C0F 90 02 12         [24] 2355 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b9)
      000C12 F0               [24] 2356 	movx	@dptr,a
      000C13 90 02 13         [24] 2357 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ba)
      000C16 F0               [24] 2358 	movx	@dptr,a
      000C17 90 02 14         [24] 2359 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00bb)
      000C1A F0               [24] 2360 	movx	@dptr,a
      000C1B 90 02 15         [24] 2361 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00bc)
      000C1E F0               [24] 2362 	movx	@dptr,a
      000C1F 90 02 16         [24] 2363 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00bd)
      000C22 F0               [24] 2364 	movx	@dptr,a
      000C23 90 02 17         [24] 2365 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00be)
      000C26 F0               [24] 2366 	movx	@dptr,a
      000C27 90 02 18         [24] 2367 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00bf)
      000C2A F0               [24] 2368 	movx	@dptr,a
      000C2B 90 02 19         [24] 2369 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c0)
      000C2E F0               [24] 2370 	movx	@dptr,a
      000C2F 90 02 1A         [24] 2371 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c1)
      000C32 F0               [24] 2372 	movx	@dptr,a
      000C33 90 02 1B         [24] 2373 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c2)
      000C36 F0               [24] 2374 	movx	@dptr,a
      000C37 90 02 1C         [24] 2375 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c3)
      000C3A F0               [24] 2376 	movx	@dptr,a
      000C3B 90 02 1D         [24] 2377 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c4)
      000C3E F0               [24] 2378 	movx	@dptr,a
      000C3F 90 02 1E         [24] 2379 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c5)
      000C42 F0               [24] 2380 	movx	@dptr,a
      000C43 90 02 1F         [24] 2381 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c6)
      000C46 F0               [24] 2382 	movx	@dptr,a
      000C47 90 02 20         [24] 2383 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c7)
      000C4A F0               [24] 2384 	movx	@dptr,a
      000C4B 90 02 21         [24] 2385 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c8)
      000C4E F0               [24] 2386 	movx	@dptr,a
      000C4F 90 02 22         [24] 2387 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c9)
      000C52 F0               [24] 2388 	movx	@dptr,a
      000C53 90 02 23         [24] 2389 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ca)
      000C56 F0               [24] 2390 	movx	@dptr,a
      000C57 90 02 24         [24] 2391 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00cb)
      000C5A F0               [24] 2392 	movx	@dptr,a
      000C5B 90 02 25         [24] 2393 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00cc)
      000C5E F0               [24] 2394 	movx	@dptr,a
      000C5F 90 02 26         [24] 2395 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00cd)
      000C62 F0               [24] 2396 	movx	@dptr,a
      000C63 90 02 27         [24] 2397 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ce)
      000C66 F0               [24] 2398 	movx	@dptr,a
      000C67 90 02 28         [24] 2399 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00cf)
      000C6A F0               [24] 2400 	movx	@dptr,a
      000C6B 90 02 29         [24] 2401 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d0)
      000C6E F0               [24] 2402 	movx	@dptr,a
      000C6F 90 02 2A         [24] 2403 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d1)
      000C72 F0               [24] 2404 	movx	@dptr,a
      000C73 90 02 2B         [24] 2405 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d2)
      000C76 F0               [24] 2406 	movx	@dptr,a
      000C77 90 02 2C         [24] 2407 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d3)
      000C7A F0               [24] 2408 	movx	@dptr,a
      000C7B 90 02 2D         [24] 2409 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d4)
      000C7E F0               [24] 2410 	movx	@dptr,a
      000C7F 90 02 2E         [24] 2411 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d5)
      000C82 F0               [24] 2412 	movx	@dptr,a
      000C83 90 02 2F         [24] 2413 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d6)
      000C86 F0               [24] 2414 	movx	@dptr,a
      000C87 90 02 30         [24] 2415 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d7)
      000C8A F0               [24] 2416 	movx	@dptr,a
      000C8B 90 02 31         [24] 2417 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d8)
      000C8E F0               [24] 2418 	movx	@dptr,a
      000C8F 90 02 32         [24] 2419 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d9)
      000C92 F0               [24] 2420 	movx	@dptr,a
      000C93 90 02 33         [24] 2421 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00da)
      000C96 F0               [24] 2422 	movx	@dptr,a
      000C97 90 02 34         [24] 2423 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00db)
      000C9A F0               [24] 2424 	movx	@dptr,a
      000C9B 90 02 35         [24] 2425 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00dc)
      000C9E F0               [24] 2426 	movx	@dptr,a
      000C9F 90 02 36         [24] 2427 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00dd)
      000CA2 F0               [24] 2428 	movx	@dptr,a
      000CA3 90 02 37         [24] 2429 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00de)
      000CA6 F0               [24] 2430 	movx	@dptr,a
      000CA7 90 02 38         [24] 2431 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00df)
      000CAA F0               [24] 2432 	movx	@dptr,a
      000CAB 90 02 39         [24] 2433 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e0)
      000CAE F0               [24] 2434 	movx	@dptr,a
      000CAF 90 02 3A         [24] 2435 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e1)
      000CB2 F0               [24] 2436 	movx	@dptr,a
      000CB3 90 02 3B         [24] 2437 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e2)
      000CB6 F0               [24] 2438 	movx	@dptr,a
      000CB7 90 02 3C         [24] 2439 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e3)
      000CBA F0               [24] 2440 	movx	@dptr,a
      000CBB 90 02 3D         [24] 2441 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e4)
      000CBE F0               [24] 2442 	movx	@dptr,a
      000CBF 90 02 3E         [24] 2443 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e5)
      000CC2 F0               [24] 2444 	movx	@dptr,a
      000CC3 90 02 3F         [24] 2445 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e6)
      000CC6 F0               [24] 2446 	movx	@dptr,a
      000CC7 90 02 40         [24] 2447 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e7)
      000CCA F0               [24] 2448 	movx	@dptr,a
      000CCB 90 02 41         [24] 2449 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e8)
      000CCE F0               [24] 2450 	movx	@dptr,a
      000CCF 90 02 42         [24] 2451 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e9)
      000CD2 F0               [24] 2452 	movx	@dptr,a
      000CD3 90 02 43         [24] 2453 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ea)
      000CD6 F0               [24] 2454 	movx	@dptr,a
      000CD7 90 02 44         [24] 2455 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00eb)
      000CDA F0               [24] 2456 	movx	@dptr,a
      000CDB 90 02 45         [24] 2457 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ec)
      000CDE F0               [24] 2458 	movx	@dptr,a
      000CDF 90 02 46         [24] 2459 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ed)
      000CE2 F0               [24] 2460 	movx	@dptr,a
      000CE3 90 02 47         [24] 2461 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ee)
      000CE6 F0               [24] 2462 	movx	@dptr,a
      000CE7 90 02 48         [24] 2463 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ef)
      000CEA F0               [24] 2464 	movx	@dptr,a
      000CEB 90 02 49         [24] 2465 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f0)
      000CEE F0               [24] 2466 	movx	@dptr,a
      000CEF 90 02 4A         [24] 2467 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f1)
      000CF2 F0               [24] 2468 	movx	@dptr,a
      000CF3 90 02 4B         [24] 2469 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f2)
      000CF6 F0               [24] 2470 	movx	@dptr,a
      000CF7 90 02 4C         [24] 2471 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f3)
      000CFA F0               [24] 2472 	movx	@dptr,a
      000CFB 90 02 4D         [24] 2473 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f4)
      000CFE F0               [24] 2474 	movx	@dptr,a
      000CFF 90 02 4E         [24] 2475 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f5)
      000D02 F0               [24] 2476 	movx	@dptr,a
      000D03 90 02 4F         [24] 2477 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f6)
      000D06 F0               [24] 2478 	movx	@dptr,a
      000D07 90 02 50         [24] 2479 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f7)
      000D0A F0               [24] 2480 	movx	@dptr,a
      000D0B 90 02 51         [24] 2481 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f8)
      000D0E F0               [24] 2482 	movx	@dptr,a
      000D0F 90 02 52         [24] 2483 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f9)
      000D12 F0               [24] 2484 	movx	@dptr,a
      000D13 90 02 53         [24] 2485 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fa)
      000D16 F0               [24] 2486 	movx	@dptr,a
      000D17 90 02 54         [24] 2487 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fb)
      000D1A F0               [24] 2488 	movx	@dptr,a
      000D1B 90 02 55         [24] 2489 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fc)
      000D1E F0               [24] 2490 	movx	@dptr,a
      000D1F 90 02 56         [24] 2491 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fd)
      000D22 F0               [24] 2492 	movx	@dptr,a
      000D23 90 02 57         [24] 2493 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fe)
      000D26 F0               [24] 2494 	movx	@dptr,a
      000D27 90 02 58         [24] 2495 	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ff)
      000D2A F0               [24] 2496 	movx	@dptr,a
                                   2497 ;	../Firmware/src/utils.c:455: uart0_print(data);
      000D2B 8D 82            [24] 2498 	mov	dpl, r5
      000D2D 8E 83            [24] 2499 	mov	dph, r6
      000D2F 8F F0            [24] 2500 	mov	b, r7
      000D31 12 08 D5         [24] 2501 	lcall	_uart0_print
                                   2502 ;	../Firmware/src/utils.c:456: uart0_write('\r');
      000D34 75 82 0D         [24] 2503 	mov	dpl, #0x0d
      000D37 12 08 C7         [24] 2504 	lcall	_uart0_write
                                   2505 ;	../Firmware/src/utils.c:457: uart0_write('\n');
      000D3A 75 82 0A         [24] 2506 	mov	dpl, #0x0a
                                   2507 ;	../Firmware/src/utils.c:459: }
      000D3D 02 08 C7         [24] 2508 	ljmp	_uart0_write
                                   2509 ;------------------------------------------------------------
                                   2510 ;Allocation info for local variables in function 'uart0_receive_byte'
                                   2511 ;------------------------------------------------------------
                                   2512 ;timeout_ms                Allocated with name '_uart0_receive_byte_PARM_2'
                                   2513 ;received_byte             Allocated to registers r5 r6 r7 
                                   2514 ;ret                       Allocated to registers r4 
                                   2515 ;_t                        Allocated to registers r2 r3 
                                   2516 ;------------------------------------------------------------
                                   2517 ;	../Firmware/src/utils.c:465: UINT8 uart0_receive_byte(UINT8 * received_byte, UINT8 timeout_ms){
                                   2518 ;	-----------------------------------------
                                   2519 ;	 function uart0_receive_byte
                                   2520 ;	-----------------------------------------
      000D40                       2521 _uart0_receive_byte:
      000D40 AD 82            [24] 2522 	mov	r5, dpl
      000D42 AE 83            [24] 2523 	mov	r6, dph
      000D44 AF F0            [24] 2524 	mov	r7, b
                                   2525 ;	../Firmware/src/utils.c:466: UINT8 ret = 1;
      000D46 7C 01            [12] 2526 	mov	r4,#0x01
                                   2527 ;	../Firmware/src/utils.c:467: for(int _t  = 0; _t < timeout_ms * 1000; _t++){
      000D48 7A 00            [12] 2528 	mov	r2,#0x00
      000D4A 7B 00            [12] 2529 	mov	r3,#0x00
      000D4C                       2530 00105$:
      000D4C 85 0D 41         [24] 2531 	mov	__mulint_PARM_2,_uart0_receive_byte_PARM_2
      000D4F 75 42 00         [24] 2532 	mov	(__mulint_PARM_2 + 1),#0x00
      000D52 90 03 E8         [24] 2533 	mov	dptr,#0x03e8
      000D55 C0 07            [24] 2534 	push	ar7
      000D57 C0 06            [24] 2535 	push	ar6
      000D59 C0 05            [24] 2536 	push	ar5
      000D5B C0 04            [24] 2537 	push	ar4
      000D5D C0 03            [24] 2538 	push	ar3
      000D5F C0 02            [24] 2539 	push	ar2
      000D61 12 17 A0         [24] 2540 	lcall	__mulint
      000D64 A8 82            [24] 2541 	mov	r0, dpl
      000D66 A9 83            [24] 2542 	mov	r1, dph
      000D68 D0 02            [24] 2543 	pop	ar2
      000D6A D0 03            [24] 2544 	pop	ar3
      000D6C D0 04            [24] 2545 	pop	ar4
      000D6E D0 05            [24] 2546 	pop	ar5
      000D70 D0 06            [24] 2547 	pop	ar6
      000D72 D0 07            [24] 2548 	pop	ar7
      000D74 C3               [12] 2549 	clr	c
      000D75 EA               [12] 2550 	mov	a,r2
      000D76 98               [12] 2551 	subb	a,r0
      000D77 EB               [12] 2552 	mov	a,r3
      000D78 64 80            [12] 2553 	xrl	a,#0x80
      000D7A 89 F0            [24] 2554 	mov	b,r1
      000D7C 63 F0 80         [24] 2555 	xrl	b,#0x80
      000D7F 95 F0            [12] 2556 	subb	a,b
      000D81 50 40            [24] 2557 	jnc	00103$
                                   2558 ;	../Firmware/src/utils.c:468: if ((SCON & 0x01)  == 1){
      000D83 A9 98            [24] 2559 	mov	r1,_SCON
      000D85 53 01 01         [24] 2560 	anl	ar1,#0x01
      000D88 B9 01 12         [24] 2561 	cjne	r1,#0x01,00102$
                                   2562 ;	../Firmware/src/utils.c:469: *received_byte = SBUF;
      000D8B 8D 82            [24] 2563 	mov	dpl,r5
      000D8D 8E 83            [24] 2564 	mov	dph,r6
      000D8F 8F F0            [24] 2565 	mov	b,r7
      000D91 E5 99            [12] 2566 	mov	a,_SBUF
      000D93 12 17 85         [24] 2567 	lcall	__gptrput
                                   2568 ;	../Firmware/src/utils.c:470: ret = 0;
      000D96 7C 00            [12] 2569 	mov	r4,#0x00
                                   2570 ;	../Firmware/src/utils.c:471: SCON &= 0xFE;
      000D98 53 98 FE         [24] 2571 	anl	_SCON,#0xfe
                                   2572 ;	../Firmware/src/utils.c:472: break; 
      000D9B 80 26            [24] 2573 	sjmp	00103$
      000D9D                       2574 00102$:
                                   2575 ;	../Firmware/src/utils.c:474: delay(1);
      000D9D 90 00 01         [24] 2576 	mov	dptr,#0x0001
      000DA0 C0 07            [24] 2577 	push	ar7
      000DA2 C0 06            [24] 2578 	push	ar6
      000DA4 C0 05            [24] 2579 	push	ar5
      000DA6 C0 04            [24] 2580 	push	ar4
      000DA8 C0 03            [24] 2581 	push	ar3
      000DAA C0 02            [24] 2582 	push	ar2
      000DAC 12 04 15         [24] 2583 	lcall	_delay
      000DAF D0 02            [24] 2584 	pop	ar2
      000DB1 D0 03            [24] 2585 	pop	ar3
      000DB3 D0 04            [24] 2586 	pop	ar4
      000DB5 D0 05            [24] 2587 	pop	ar5
      000DB7 D0 06            [24] 2588 	pop	ar6
      000DB9 D0 07            [24] 2589 	pop	ar7
                                   2590 ;	../Firmware/src/utils.c:467: for(int _t  = 0; _t < timeout_ms * 1000; _t++){
      000DBB 0A               [12] 2591 	inc	r2
      000DBC BA 00 01         [24] 2592 	cjne	r2,#0x00,00130$
      000DBF 0B               [12] 2593 	inc	r3
      000DC0                       2594 00130$:
      000DC0 02 0D 4C         [24] 2595 	ljmp	00105$
      000DC3                       2596 00103$:
                                   2597 ;	../Firmware/src/utils.c:477: return ret;  
      000DC3 8C 82            [24] 2598 	mov	dpl, r4
                                   2599 ;	../Firmware/src/utils.c:478: }
      000DC5 22               [24] 2600 	ret
                                   2601 ;------------------------------------------------------------
                                   2602 ;Allocation info for local variables in function 'uart0_read_bytes'
                                   2603 ;------------------------------------------------------------
                                   2604 ;max_len                   Allocated with name '_uart0_read_bytes_PARM_2'
                                   2605 ;timeout_ms                Allocated with name '_uart0_read_bytes_PARM_3'
                                   2606 ;received_bytes            Allocated with name '_uart0_read_bytes_received_bytes_10000_205'
                                   2607 ;ret                       Allocated to registers r1 r2 
                                   2608 ;current_recv              Allocated with name '_uart0_read_bytes_current_recv_10000_206'
                                   2609 ;------------------------------------------------------------
                                   2610 ;	../Firmware/src/utils.c:485: int uart0_read_bytes(UINT8 * received_bytes,int max_len, UINT8 timeout_ms){
                                   2611 ;	-----------------------------------------
                                   2612 ;	 function uart0_read_bytes
                                   2613 ;	-----------------------------------------
      000DC6                       2614 _uart0_read_bytes:
      000DC6 85 82 11         [24] 2615 	mov	_uart0_read_bytes_received_bytes_10000_205,dpl
      000DC9 85 83 12         [24] 2616 	mov	(_uart0_read_bytes_received_bytes_10000_205 + 1),dph
      000DCC 85 F0 13         [24] 2617 	mov	(_uart0_read_bytes_received_bytes_10000_205 + 2),b
                                   2618 ;	../Firmware/src/utils.c:488: while (uart0_receive_byte(&current_recv, timeout_ms) == 0){
      000DCF E5 0E            [12] 2619 	mov	a,_uart0_read_bytes_PARM_2
      000DD1 24 FF            [12] 2620 	add	a,#0xff
      000DD3 FB               [12] 2621 	mov	r3,a
      000DD4 E5 0F            [12] 2622 	mov	a,(_uart0_read_bytes_PARM_2 + 1)
      000DD6 34 FF            [12] 2623 	addc	a,#0xff
      000DD8 FC               [12] 2624 	mov	r4,a
      000DD9 79 00            [12] 2625 	mov	r1,#0x00
      000DDB 7A 00            [12] 2626 	mov	r2,#0x00
      000DDD                       2627 00103$:
      000DDD 85 10 0D         [24] 2628 	mov	_uart0_receive_byte_PARM_2,_uart0_read_bytes_PARM_3
      000DE0 90 00 14         [24] 2629 	mov	dptr,#_uart0_read_bytes_current_recv_10000_206
      000DE3 75 F0 40         [24] 2630 	mov	b, #0x40
      000DE6 C0 04            [24] 2631 	push	ar4
      000DE8 C0 03            [24] 2632 	push	ar3
      000DEA C0 02            [24] 2633 	push	ar2
      000DEC C0 01            [24] 2634 	push	ar1
      000DEE 12 0D 40         [24] 2635 	lcall	_uart0_receive_byte
      000DF1 E5 82            [12] 2636 	mov	a, dpl
      000DF3 D0 01            [24] 2637 	pop	ar1
      000DF5 D0 02            [24] 2638 	pop	ar2
      000DF7 D0 03            [24] 2639 	pop	ar3
      000DF9 D0 04            [24] 2640 	pop	ar4
      000DFB 70 26            [24] 2641 	jnz	00105$
                                   2642 ;	../Firmware/src/utils.c:489: if(ret == max_len - 1){
      000DFD E9               [12] 2643 	mov	a,r1
      000DFE B5 03 06         [24] 2644 	cjne	a,ar3,00128$
      000E01 EA               [12] 2645 	mov	a,r2
      000E02 B5 04 02         [24] 2646 	cjne	a,ar4,00128$
      000E05 80 1C            [24] 2647 	sjmp	00105$
      000E07                       2648 00128$:
                                   2649 ;	../Firmware/src/utils.c:492: received_bytes[ret++] = current_recv;
      000E07 E9               [12] 2650 	mov	a,r1
      000E08 25 11            [12] 2651 	add	a, _uart0_read_bytes_received_bytes_10000_205
      000E0A F8               [12] 2652 	mov	r0,a
      000E0B EA               [12] 2653 	mov	a,r2
      000E0C 35 12            [12] 2654 	addc	a, (_uart0_read_bytes_received_bytes_10000_205 + 1)
      000E0E FE               [12] 2655 	mov	r6,a
      000E0F AF 13            [24] 2656 	mov	r7,(_uart0_read_bytes_received_bytes_10000_205 + 2)
      000E11 09               [12] 2657 	inc	r1
      000E12 B9 00 01         [24] 2658 	cjne	r1,#0x00,00129$
      000E15 0A               [12] 2659 	inc	r2
      000E16                       2660 00129$:
      000E16 88 82            [24] 2661 	mov	dpl,r0
      000E18 8E 83            [24] 2662 	mov	dph,r6
      000E1A 8F F0            [24] 2663 	mov	b,r7
      000E1C E5 14            [12] 2664 	mov	a,_uart0_read_bytes_current_recv_10000_206
      000E1E 12 17 85         [24] 2665 	lcall	__gptrput
      000E21 80 BA            [24] 2666 	sjmp	00103$
      000E23                       2667 00105$:
                                   2668 ;	../Firmware/src/utils.c:495: return ret;  
      000E23 89 82            [24] 2669 	mov	dpl, r1
      000E25 8A 83            [24] 2670 	mov	dph, r2
                                   2671 ;	../Firmware/src/utils.c:496: }
      000E27 22               [24] 2672 	ret
                                   2673 ;------------------------------------------------------------
                                   2674 ;Allocation info for local variables in function 'uart0_read_string_until'
                                   2675 ;------------------------------------------------------------
                                   2676 ;max_len                   Allocated with name '_uart0_read_string_until_PARM_2'
                                   2677 ;timeout_ms                Allocated with name '_uart0_read_string_until_PARM_3'
                                   2678 ;condition                 Allocated with name '_uart0_read_string_until_PARM_4'
                                   2679 ;received_bytes            Allocated to registers r5 r6 r7 
                                   2680 ;ret                       Allocated to registers r3 r4 
                                   2681 ;current_recv              Allocated with name '_uart0_read_string_until_current_recv_10000_210'
                                   2682 ;------------------------------------------------------------
                                   2683 ;	../Firmware/src/utils.c:504: int uart0_read_string_until(UINT8 * received_bytes,int max_len, UINT8 timeout_ms, UINT8 condition){
                                   2684 ;	-----------------------------------------
                                   2685 ;	 function uart0_read_string_until
                                   2686 ;	-----------------------------------------
      000E28                       2687 _uart0_read_string_until:
      000E28 AD 82            [24] 2688 	mov	r5, dpl
      000E2A AE 83            [24] 2689 	mov	r6, dph
      000E2C AF F0            [24] 2690 	mov	r7, b
                                   2691 ;	../Firmware/src/utils.c:507: do{
      000E2E 7B 00            [12] 2692 	mov	r3,#0x00
      000E30 7C 00            [12] 2693 	mov	r4,#0x00
      000E32                       2694 00105$:
                                   2695 ;	../Firmware/src/utils.c:508: if(uart0_receive_byte(&current_recv, timeout_ms) != 0)
      000E32 85 17 0D         [24] 2696 	mov	_uart0_receive_byte_PARM_2,_uart0_read_string_until_PARM_3
      000E35 90 00 19         [24] 2697 	mov	dptr,#_uart0_read_string_until_current_recv_10000_210
      000E38 75 F0 40         [24] 2698 	mov	b, #0x40
      000E3B C0 07            [24] 2699 	push	ar7
      000E3D C0 06            [24] 2700 	push	ar6
      000E3F C0 05            [24] 2701 	push	ar5
      000E41 C0 04            [24] 2702 	push	ar4
      000E43 C0 03            [24] 2703 	push	ar3
      000E45 12 0D 40         [24] 2704 	lcall	_uart0_receive_byte
      000E48 E5 82            [12] 2705 	mov	a, dpl
      000E4A D0 03            [24] 2706 	pop	ar3
      000E4C D0 04            [24] 2707 	pop	ar4
      000E4E D0 05            [24] 2708 	pop	ar5
      000E50 D0 06            [24] 2709 	pop	ar6
      000E52 D0 07            [24] 2710 	pop	ar7
      000E54 70 30            [24] 2711 	jnz	00107$
                                   2712 ;	../Firmware/src/utils.c:511: if(current_recv == condition){
      000E56 E5 18            [12] 2713 	mov	a,_uart0_read_string_until_PARM_4
      000E58 B5 19 02         [24] 2714 	cjne	a,_uart0_read_string_until_current_recv_10000_210,00130$
      000E5B 80 29            [24] 2715 	sjmp	00107$
      000E5D                       2716 00130$:
                                   2717 ;	../Firmware/src/utils.c:514: received_bytes[ret++] = current_recv;
      000E5D EB               [12] 2718 	mov	a,r3
      000E5E 2D               [12] 2719 	add	a, r5
      000E5F F8               [12] 2720 	mov	r0,a
      000E60 EC               [12] 2721 	mov	a,r4
      000E61 3E               [12] 2722 	addc	a, r6
      000E62 F9               [12] 2723 	mov	r1,a
      000E63 8F 02            [24] 2724 	mov	ar2,r7
      000E65 0B               [12] 2725 	inc	r3
      000E66 BB 00 01         [24] 2726 	cjne	r3,#0x00,00131$
      000E69 0C               [12] 2727 	inc	r4
      000E6A                       2728 00131$:
      000E6A 88 82            [24] 2729 	mov	dpl,r0
      000E6C 89 83            [24] 2730 	mov	dph,r1
      000E6E 8A F0            [24] 2731 	mov	b,r2
      000E70 E5 19            [12] 2732 	mov	a,_uart0_read_string_until_current_recv_10000_210
      000E72 12 17 85         [24] 2733 	lcall	__gptrput
                                   2734 ;	../Firmware/src/utils.c:515: }while (ret < max_len);
      000E75 C3               [12] 2735 	clr	c
      000E76 EB               [12] 2736 	mov	a,r3
      000E77 95 15            [12] 2737 	subb	a,_uart0_read_string_until_PARM_2
      000E79 EC               [12] 2738 	mov	a,r4
      000E7A 64 80            [12] 2739 	xrl	a,#0x80
      000E7C 85 16 F0         [24] 2740 	mov	b,(_uart0_read_string_until_PARM_2 + 1)
      000E7F 63 F0 80         [24] 2741 	xrl	b,#0x80
      000E82 95 F0            [12] 2742 	subb	a,b
      000E84 40 AC            [24] 2743 	jc	00105$
      000E86                       2744 00107$:
                                   2745 ;	../Firmware/src/utils.c:517: received_bytes[ret] = '\0';
      000E86 EB               [12] 2746 	mov	a,r3
      000E87 2D               [12] 2747 	add	a, r5
      000E88 FD               [12] 2748 	mov	r5,a
      000E89 EC               [12] 2749 	mov	a,r4
      000E8A 3E               [12] 2750 	addc	a, r6
      000E8B FE               [12] 2751 	mov	r6,a
      000E8C 8D 82            [24] 2752 	mov	dpl,r5
      000E8E 8E 83            [24] 2753 	mov	dph,r6
      000E90 8F F0            [24] 2754 	mov	b,r7
      000E92 E4               [12] 2755 	clr	a
      000E93 12 17 85         [24] 2756 	lcall	__gptrput
                                   2757 ;	../Firmware/src/utils.c:518: return ret;
      000E96 8B 82            [24] 2758 	mov	dpl, r3
      000E98 8C 83            [24] 2759 	mov	dph, r4
                                   2760 ;	../Firmware/src/utils.c:519: }
      000E9A 22               [24] 2761 	ret
                                   2762 ;------------------------------------------------------------
                                   2763 ;Allocation info for local variables in function 'search_str'
                                   2764 ;------------------------------------------------------------
                                   2765 ;str                       Allocated with name '_search_str_PARM_2'
                                   2766 ;base                      Allocated with name '_search_str_base_10000_213'
                                   2767 ;base_len                  Allocated with name '_search_str_base_len_10001_215'
                                   2768 ;str_len                   Allocated with name '_search_str_str_len_10001_215'
                                   2769 ;i                         Allocated with name '_search_str_i_20001_216'
                                   2770 ;j                         Allocated to registers r5 r6 
                                   2771 ;sloc0                     Allocated with name '_search_str_sloc0_1_0'
                                   2772 ;------------------------------------------------------------
                                   2773 ;	../Firmware/src/utils.c:526: int search_str(char *base, char *str) {
                                   2774 ;	-----------------------------------------
                                   2775 ;	 function search_str
                                   2776 ;	-----------------------------------------
      000E9B                       2777 _search_str:
      000E9B 85 82 1D         [24] 2778 	mov	_search_str_base_10000_213,dpl
      000E9E 85 83 1E         [24] 2779 	mov	(_search_str_base_10000_213 + 1),dph
      000EA1 85 F0 1F         [24] 2780 	mov	(_search_str_base_10000_213 + 2),b
                                   2781 ;	../Firmware/src/utils.c:527: if (base == NULL || str == NULL) return -1;
      000EA4 E5 1D            [12] 2782 	mov	a,_search_str_base_10000_213
      000EA6 45 1E            [12] 2783 	orl	a,(_search_str_base_10000_213 + 1)
      000EA8 60 06            [24] 2784 	jz	00101$
      000EAA E5 1A            [12] 2785 	mov	a,_search_str_PARM_2
      000EAC 45 1B            [12] 2786 	orl	a,(_search_str_PARM_2 + 1)
      000EAE 70 04            [24] 2787 	jnz	00102$
      000EB0                       2788 00101$:
      000EB0 90 FF FF         [24] 2789 	mov	dptr,#0xffff
      000EB3 22               [24] 2790 	ret
      000EB4                       2791 00102$:
                                   2792 ;	../Firmware/src/utils.c:529: int base_len = strlen(base);
      000EB4 85 1D 82         [24] 2793 	mov	dpl, _search_str_base_10000_213
      000EB7 85 1E 83         [24] 2794 	mov	dph, (_search_str_base_10000_213 + 1)
      000EBA 85 1F F0         [24] 2795 	mov	b, (_search_str_base_10000_213 + 2)
      000EBD 12 18 85         [24] 2796 	lcall	_strlen
      000EC0 85 82 20         [24] 2797 	mov	_search_str_base_len_10001_215,dpl
      000EC3 85 83 21         [24] 2798 	mov	(_search_str_base_len_10001_215 + 1),dph
                                   2799 ;	../Firmware/src/utils.c:530: int str_len = strlen(str);
      000EC6 85 1A 82         [24] 2800 	mov	dpl, _search_str_PARM_2
      000EC9 85 1B 83         [24] 2801 	mov	dph, (_search_str_PARM_2 + 1)
      000ECC 85 1C F0         [24] 2802 	mov	b, (_search_str_PARM_2 + 2)
      000ECF 12 18 85         [24] 2803 	lcall	_strlen
      000ED2 85 82 22         [24] 2804 	mov	_search_str_str_len_10001_215,dpl
      000ED5 85 83 23         [24] 2805 	mov	(_search_str_str_len_10001_215 + 1),dph
                                   2806 ;	../Firmware/src/utils.c:532: if (str_len == 0) return -1;
      000ED8 E5 22            [12] 2807 	mov	a,_search_str_str_len_10001_215
      000EDA 45 23            [12] 2808 	orl	a,(_search_str_str_len_10001_215 + 1)
      000EDC 70 04            [24] 2809 	jnz	00105$
      000EDE 90 FF FF         [24] 2810 	mov	dptr,#0xffff
      000EE1 22               [24] 2811 	ret
      000EE2                       2812 00105$:
                                   2813 ;	../Firmware/src/utils.c:534: for (int i = 0; i <= base_len - str_len; i++) {
      000EE2 E4               [12] 2814 	clr	a
      000EE3 F8               [12] 2815 	mov	r0,a
      000EE4 FC               [12] 2816 	mov	r4,a
      000EE5 E5 20            [12] 2817 	mov	a,_search_str_base_len_10001_215
      000EE7 C3               [12] 2818 	clr	c
      000EE8 95 22            [12] 2819 	subb	a,_search_str_str_len_10001_215
      000EEA F5 26            [12] 2820 	mov	_search_str_sloc0_1_0,a
      000EEC E5 21            [12] 2821 	mov	a,(_search_str_base_len_10001_215 + 1)
      000EEE 95 23            [12] 2822 	subb	a,(_search_str_str_len_10001_215 + 1)
      000EF0 F5 27            [12] 2823 	mov	(_search_str_sloc0_1_0 + 1),a
      000EF2 E4               [12] 2824 	clr	a
      000EF3 F5 24            [12] 2825 	mov	_search_str_i_20001_216,a
      000EF5 F5 25            [12] 2826 	mov	(_search_str_i_20001_216 + 1),a
      000EF7                       2827 00114$:
      000EF7 C3               [12] 2828 	clr	c
      000EF8 E5 26            [12] 2829 	mov	a,_search_str_sloc0_1_0
      000EFA 95 24            [12] 2830 	subb	a,_search_str_i_20001_216
      000EFC E5 27            [12] 2831 	mov	a,(_search_str_sloc0_1_0 + 1)
      000EFE 64 80            [12] 2832 	xrl	a,#0x80
      000F00 85 25 F0         [24] 2833 	mov	b,(_search_str_i_20001_216 + 1)
      000F03 63 F0 80         [24] 2834 	xrl	b,#0x80
      000F06 95 F0            [12] 2835 	subb	a,b
      000F08 40 6B            [24] 2836 	jc	00112$
                                   2837 ;	../Firmware/src/utils.c:536: while (j < str_len && base[i + j] == str[j]) {
      000F0A 7D 00            [12] 2838 	mov	r5,#0x00
      000F0C 7E 00            [12] 2839 	mov	r6,#0x00
      000F0E                       2840 00107$:
      000F0E C3               [12] 2841 	clr	c
      000F0F ED               [12] 2842 	mov	a,r5
      000F10 95 22            [12] 2843 	subb	a,_search_str_str_len_10001_215
      000F12 EE               [12] 2844 	mov	a,r6
      000F13 64 80            [12] 2845 	xrl	a,#0x80
      000F15 85 23 F0         [24] 2846 	mov	b,(_search_str_str_len_10001_215 + 1)
      000F18 63 F0 80         [24] 2847 	xrl	b,#0x80
      000F1B 95 F0            [12] 2848 	subb	a,b
      000F1D 50 3B            [24] 2849 	jnc	00109$
      000F1F ED               [12] 2850 	mov	a,r5
      000F20 25 24            [12] 2851 	add	a, _search_str_i_20001_216
      000F22 F9               [12] 2852 	mov	r1,a
      000F23 EE               [12] 2853 	mov	a,r6
      000F24 35 25            [12] 2854 	addc	a, (_search_str_i_20001_216 + 1)
      000F26 FA               [12] 2855 	mov	r2,a
      000F27 E9               [12] 2856 	mov	a,r1
      000F28 25 1D            [12] 2857 	add	a, _search_str_base_10000_213
      000F2A F9               [12] 2858 	mov	r1,a
      000F2B EA               [12] 2859 	mov	a,r2
      000F2C 35 1E            [12] 2860 	addc	a, (_search_str_base_10000_213 + 1)
      000F2E FA               [12] 2861 	mov	r2,a
      000F2F AF 1F            [24] 2862 	mov	r7,(_search_str_base_10000_213 + 2)
      000F31 89 82            [24] 2863 	mov	dpl,r1
      000F33 8A 83            [24] 2864 	mov	dph,r2
      000F35 8F F0            [24] 2865 	mov	b,r7
      000F37 12 18 9D         [24] 2866 	lcall	__gptrget
      000F3A F9               [12] 2867 	mov	r1,a
      000F3B ED               [12] 2868 	mov	a,r5
      000F3C 25 1A            [12] 2869 	add	a, _search_str_PARM_2
      000F3E FA               [12] 2870 	mov	r2,a
      000F3F EE               [12] 2871 	mov	a,r6
      000F40 35 1B            [12] 2872 	addc	a, (_search_str_PARM_2 + 1)
      000F42 FB               [12] 2873 	mov	r3,a
      000F43 AF 1C            [24] 2874 	mov	r7,(_search_str_PARM_2 + 2)
      000F45 8A 82            [24] 2875 	mov	dpl,r2
      000F47 8B 83            [24] 2876 	mov	dph,r3
      000F49 8F F0            [24] 2877 	mov	b,r7
      000F4B 12 18 9D         [24] 2878 	lcall	__gptrget
      000F4E FA               [12] 2879 	mov	r2,a
      000F4F E9               [12] 2880 	mov	a,r1
      000F50 B5 02 07         [24] 2881 	cjne	a,ar2,00109$
                                   2882 ;	../Firmware/src/utils.c:537: j++;
      000F53 0D               [12] 2883 	inc	r5
      000F54 BD 00 B7         [24] 2884 	cjne	r5,#0x00,00107$
      000F57 0E               [12] 2885 	inc	r6
      000F58 80 B4            [24] 2886 	sjmp	00107$
      000F5A                       2887 00109$:
                                   2888 ;	../Firmware/src/utils.c:539: if (j == str_len) return i;
      000F5A ED               [12] 2889 	mov	a,r5
      000F5B B5 22 09         [24] 2890 	cjne	a,_search_str_str_len_10001_215,00115$
      000F5E EE               [12] 2891 	mov	a,r6
      000F5F B5 23 05         [24] 2892 	cjne	a,(_search_str_str_len_10001_215 + 1),00115$
      000F62 88 82            [24] 2893 	mov	dpl, r0
      000F64 8C 83            [24] 2894 	mov	dph, r4
      000F66 22               [24] 2895 	ret
      000F67                       2896 00115$:
                                   2897 ;	../Firmware/src/utils.c:534: for (int i = 0; i <= base_len - str_len; i++) {
      000F67 05 24            [12] 2898 	inc	_search_str_i_20001_216
      000F69 E4               [12] 2899 	clr	a
      000F6A B5 24 02         [24] 2900 	cjne	a,_search_str_i_20001_216,00177$
      000F6D 05 25            [12] 2901 	inc	(_search_str_i_20001_216 + 1)
      000F6F                       2902 00177$:
      000F6F A8 24            [24] 2903 	mov	r0,_search_str_i_20001_216
      000F71 AC 25            [24] 2904 	mov	r4,(_search_str_i_20001_216 + 1)
      000F73 80 82            [24] 2905 	sjmp	00114$
      000F75                       2906 00112$:
                                   2907 ;	../Firmware/src/utils.c:542: return -1;
      000F75 90 FF FF         [24] 2908 	mov	dptr,#0xffff
                                   2909 ;	../Firmware/src/utils.c:543: }
      000F78 22               [24] 2910 	ret
                                   2911 ;------------------------------------------------------------
                                   2912 ;Allocation info for local variables in function 'convert_to_percentage'
                                   2913 ;------------------------------------------------------------
                                   2914 ;_number                   Allocated to registers r7 
                                   2915 ;------------------------------------------------------------
                                   2916 ;	../Firmware/src/utils.c:602: UINT8 convert_to_percentage(UINT8 _number){
                                   2917 ;	-----------------------------------------
                                   2918 ;	 function convert_to_percentage
                                   2919 ;	-----------------------------------------
      000F79                       2920 _convert_to_percentage:
      000F79 AF 82            [24] 2921 	mov	r7, dpl
                                   2922 ;	../Firmware/src/utils.c:603: return (_number * 100) / 255;
      000F7B 8F 41            [24] 2923 	mov	__mulint_PARM_2,r7
      000F7D 75 42 00         [24] 2924 	mov	(__mulint_PARM_2 + 1),#0x00
      000F80 90 00 64         [24] 2925 	mov	dptr,#0x0064
      000F83 12 17 A0         [24] 2926 	lcall	__mulint
      000F86 75 41 FF         [24] 2927 	mov	__divsint_PARM_2,#0xff
      000F89 75 42 00         [24] 2928 	mov	(__divsint_PARM_2 + 1),#0x00
                                   2929 ;	../Firmware/src/utils.c:604: }
      000F8C 02 18 EF         [24] 2930 	ljmp	__divsint
                                   2931 ;------------------------------------------------------------
                                   2932 ;Allocation info for local variables in function 'convert'
                                   2933 ;------------------------------------------------------------
                                   2934 ;number                    Allocated with name '_convert_PARM_2'
                                   2935 ;num                       Allocated with name '_convert_num_10000_221'
                                   2936 ;i                         Allocated with name '_convert_i_10001_223'
                                   2937 ;temp                      Allocated with name '_convert_temp_10001_223'
                                   2938 ;j                         Allocated to registers r6 
                                   2939 ;------------------------------------------------------------
                                   2940 ;	../Firmware/src/utils.c:605: void convert(char *num, UINT8 number) {
                                   2941 ;	-----------------------------------------
                                   2942 ;	 function convert
                                   2943 ;	-----------------------------------------
      000F8F                       2944 _convert:
      000F8F 85 82 29         [24] 2945 	mov	_convert_num_10000_221,dpl
      000F92 85 83 2A         [24] 2946 	mov	(_convert_num_10000_221 + 1),dph
      000F95 85 F0 2B         [24] 2947 	mov	(_convert_num_10000_221 + 2),b
                                   2948 ;	../Firmware/src/utils.c:606: if (num == NULL) return;
      000F98 E5 29            [12] 2949 	mov	a,_convert_num_10000_221
      000F9A 45 2A            [12] 2950 	orl	a,(_convert_num_10000_221 + 1)
      000F9C 70 01            [24] 2951 	jnz	00102$
      000F9E 22               [24] 2952 	ret
      000F9F                       2953 00102$:
                                   2954 ;	../Firmware/src/utils.c:609: char temp[4] = {0};  
                                   2955 ;	../Firmware/src/utils.c:610: if (number == 0) {
      000F9F E4               [12] 2956 	clr	a
      000FA0 F5 2D            [12] 2957 	mov	_convert_temp_10001_223,a
      000FA2 F5 2E            [12] 2958 	mov	(_convert_temp_10001_223 + 0x0001),a
      000FA4 F5 2F            [12] 2959 	mov	(_convert_temp_10001_223 + 0x0002),a
      000FA6 F5 30            [12] 2960 	mov	(_convert_temp_10001_223 + 0x0003),a
      000FA8 E5 28            [12] 2961 	mov	a,_convert_PARM_2
      000FAA 70 23            [24] 2962 	jnz	00117$
                                   2963 ;	../Firmware/src/utils.c:611: num[i++] = '0';
      000FAC 85 29 82         [24] 2964 	mov	dpl,_convert_num_10000_221
      000FAF 85 2A 83         [24] 2965 	mov	dph,(_convert_num_10000_221 + 1)
      000FB2 85 2B F0         [24] 2966 	mov	b,(_convert_num_10000_221 + 2)
      000FB5 74 30            [12] 2967 	mov	a,#0x30
      000FB7 12 17 85         [24] 2968 	lcall	__gptrput
                                   2969 ;	../Firmware/src/utils.c:612: num[i] = '\0';
      000FBA 74 01            [12] 2970 	mov	a,#0x01
      000FBC 25 29            [12] 2971 	add	a, _convert_num_10000_221
      000FBE FA               [12] 2972 	mov	r2,a
      000FBF E4               [12] 2973 	clr	a
      000FC0 35 2A            [12] 2974 	addc	a, (_convert_num_10000_221 + 1)
      000FC2 FB               [12] 2975 	mov	r3,a
      000FC3 AC 2B            [24] 2976 	mov	r4,(_convert_num_10000_221 + 2)
      000FC5 8A 82            [24] 2977 	mov	dpl,r2
      000FC7 8B 83            [24] 2978 	mov	dph,r3
      000FC9 8C F0            [24] 2979 	mov	b,r4
      000FCB E4               [12] 2980 	clr	a
                                   2981 ;	../Firmware/src/utils.c:613: return;
      000FCC 02 17 85         [24] 2982 	ljmp	__gptrput
                                   2983 ;	../Firmware/src/utils.c:616: while (number > 0) {
      000FCF                       2984 00117$:
      000FCF 75 2C 00         [24] 2985 	mov	_convert_i_10001_223,#0x00
      000FD2                       2986 00105$:
      000FD2 E5 28            [12] 2987 	mov	a,_convert_PARM_2
      000FD4 60 3C            [24] 2988 	jz	00120$
                                   2989 ;	../Firmware/src/utils.c:617: temp[i++] = (number % 10) + '0';
      000FD6 E5 2C            [12] 2990 	mov	a,_convert_i_10001_223
      000FD8 24 2D            [12] 2991 	add	a, #_convert_temp_10001_223
      000FDA F9               [12] 2992 	mov	r1,a
      000FDB 05 2C            [12] 2993 	inc	_convert_i_10001_223
      000FDD AA 28            [24] 2994 	mov	r2,_convert_PARM_2
      000FDF 7B 00            [12] 2995 	mov	r3,#0x00
      000FE1 75 41 0A         [24] 2996 	mov	__modsint_PARM_2,#0x0a
      000FE4 8B 42            [24] 2997 	mov	(__modsint_PARM_2 + 1),r3
      000FE6 8A 82            [24] 2998 	mov	dpl, r2
      000FE8 8B 83            [24] 2999 	mov	dph, r3
      000FEA C0 03            [24] 3000 	push	ar3
      000FEC C0 02            [24] 3001 	push	ar2
      000FEE C0 01            [24] 3002 	push	ar1
      000FF0 12 18 B9         [24] 3003 	lcall	__modsint
      000FF3 AC 82            [24] 3004 	mov	r4, dpl
      000FF5 D0 01            [24] 3005 	pop	ar1
      000FF7 D0 02            [24] 3006 	pop	ar2
      000FF9 D0 03            [24] 3007 	pop	ar3
      000FFB 74 30            [12] 3008 	mov	a,#0x30
      000FFD 2C               [12] 3009 	add	a, r4
      000FFE F7               [12] 3010 	mov	@r1,a
                                   3011 ;	../Firmware/src/utils.c:618: number /= 10;
      000FFF 75 41 0A         [24] 3012 	mov	__divsint_PARM_2,#0x0a
      001002 75 42 00         [24] 3013 	mov	(__divsint_PARM_2 + 1),#0x00
      001005 8A 82            [24] 3014 	mov	dpl, r2
      001007 8B 83            [24] 3015 	mov	dph, r3
      001009 12 18 EF         [24] 3016 	lcall	__divsint
      00100C AE 82            [24] 3017 	mov	r6, dpl
      00100E 8E 28            [24] 3018 	mov	_convert_PARM_2,r6
      001010 80 C0            [24] 3019 	sjmp	00105$
      001012                       3020 00120$:
      001012 AF 2C            [24] 3021 	mov	r7,_convert_i_10001_223
                                   3022 ;	../Firmware/src/utils.c:621: for (UINT8 j = 0; j < i; j++) {
      001014 7E 00            [12] 3023 	mov	r6,#0x00
      001016                       3024 00110$:
      001016 C3               [12] 3025 	clr	c
      001017 EE               [12] 3026 	mov	a,r6
      001018 9F               [12] 3027 	subb	a,r7
      001019 50 20            [24] 3028 	jnc	00108$
                                   3029 ;	../Firmware/src/utils.c:622: num[j] = temp[i - j - 1];
      00101B EE               [12] 3030 	mov	a,r6
      00101C 25 29            [12] 3031 	add	a, _convert_num_10000_221
      00101E FB               [12] 3032 	mov	r3,a
      00101F E4               [12] 3033 	clr	a
      001020 35 2A            [12] 3034 	addc	a, (_convert_num_10000_221 + 1)
      001022 FC               [12] 3035 	mov	r4,a
      001023 AD 2B            [24] 3036 	mov	r5,(_convert_num_10000_221 + 2)
      001025 EF               [12] 3037 	mov	a,r7
      001026 C3               [12] 3038 	clr	c
      001027 9E               [12] 3039 	subb	a,r6
      001028 14               [12] 3040 	dec	a
      001029 24 2D            [12] 3041 	add	a, #_convert_temp_10001_223
      00102B F9               [12] 3042 	mov	r1,a
      00102C 87 02            [24] 3043 	mov	ar2,@r1
      00102E 8B 82            [24] 3044 	mov	dpl,r3
      001030 8C 83            [24] 3045 	mov	dph,r4
      001032 8D F0            [24] 3046 	mov	b,r5
      001034 EA               [12] 3047 	mov	a,r2
      001035 12 17 85         [24] 3048 	lcall	__gptrput
                                   3049 ;	../Firmware/src/utils.c:621: for (UINT8 j = 0; j < i; j++) {
      001038 0E               [12] 3050 	inc	r6
      001039 80 DB            [24] 3051 	sjmp	00110$
      00103B                       3052 00108$:
                                   3053 ;	../Firmware/src/utils.c:624: num[i] = '\0';
      00103B EF               [12] 3054 	mov	a,r7
      00103C 25 29            [12] 3055 	add	a, _convert_num_10000_221
      00103E FF               [12] 3056 	mov	r7,a
      00103F E4               [12] 3057 	clr	a
      001040 35 2A            [12] 3058 	addc	a, (_convert_num_10000_221 + 1)
      001042 FE               [12] 3059 	mov	r6,a
      001043 AD 2B            [24] 3060 	mov	r5,(_convert_num_10000_221 + 2)
      001045 8F 82            [24] 3061 	mov	dpl,r7
      001047 8E 83            [24] 3062 	mov	dph,r6
      001049 8D F0            [24] 3063 	mov	b,r5
      00104B E4               [12] 3064 	clr	a
                                   3065 ;	../Firmware/src/utils.c:625: }
      00104C 02 17 85         [24] 3066 	ljmp	__gptrput
                                   3067 ;------------------------------------------------------------
                                   3068 ;Allocation info for local variables in function 'getURL'
                                   3069 ;------------------------------------------------------------
                                   3070 ;latitude                  Allocated with name '_getURL_PARM_2'
                                   3071 ;longitude                 Allocated with name '_getURL_PARM_3'
                                   3072 ;level                     Allocated with name '_getURL_PARM_4'
                                   3073 ;url                       Allocated to registers r5 r6 r7 
                                   3074 ;id                        Allocated with name '_getURL_id_10000_229'
                                   3075 ;------------------------------------------------------------
                                   3076 ;	../Firmware/src/utils.c:627: UINT8 getURL(char * url, char * latitude, char * longitude, char * level){
                                   3077 ;	-----------------------------------------
                                   3078 ;	 function getURL
                                   3079 ;	-----------------------------------------
      00104F                       3080 _getURL:
      00104F AD 82            [24] 3081 	mov	r5, dpl
      001051 AE 83            [24] 3082 	mov	r6, dph
      001053 AF F0            [24] 3083 	mov	r7, b
                                   3084 ;	../Firmware/src/utils.c:628: __xdata unsigned char id[15] = {0};
      001055 90 02 59         [24] 3085 	mov	dptr,#_getURL_id_10000_229
      001058 E4               [12] 3086 	clr	a
      001059 F0               [24] 3087 	movx	@dptr,a
      00105A 90 02 5A         [24] 3088 	mov	dptr,#(_getURL_id_10000_229 + 0x0001)
      00105D F0               [24] 3089 	movx	@dptr,a
      00105E 90 02 5B         [24] 3090 	mov	dptr,#(_getURL_id_10000_229 + 0x0002)
      001061 F0               [24] 3091 	movx	@dptr,a
      001062 90 02 5C         [24] 3092 	mov	dptr,#(_getURL_id_10000_229 + 0x0003)
      001065 F0               [24] 3093 	movx	@dptr,a
      001066 90 02 5D         [24] 3094 	mov	dptr,#(_getURL_id_10000_229 + 0x0004)
      001069 F0               [24] 3095 	movx	@dptr,a
      00106A 90 02 5E         [24] 3096 	mov	dptr,#(_getURL_id_10000_229 + 0x0005)
      00106D F0               [24] 3097 	movx	@dptr,a
      00106E 90 02 5F         [24] 3098 	mov	dptr,#(_getURL_id_10000_229 + 0x0006)
      001071 F0               [24] 3099 	movx	@dptr,a
      001072 90 02 60         [24] 3100 	mov	dptr,#(_getURL_id_10000_229 + 0x0007)
      001075 F0               [24] 3101 	movx	@dptr,a
      001076 90 02 61         [24] 3102 	mov	dptr,#(_getURL_id_10000_229 + 0x0008)
      001079 F0               [24] 3103 	movx	@dptr,a
      00107A 90 02 62         [24] 3104 	mov	dptr,#(_getURL_id_10000_229 + 0x0009)
      00107D F0               [24] 3105 	movx	@dptr,a
      00107E 90 02 63         [24] 3106 	mov	dptr,#(_getURL_id_10000_229 + 0x000a)
      001081 F0               [24] 3107 	movx	@dptr,a
      001082 90 02 64         [24] 3108 	mov	dptr,#(_getURL_id_10000_229 + 0x000b)
      001085 F0               [24] 3109 	movx	@dptr,a
      001086 90 02 65         [24] 3110 	mov	dptr,#(_getURL_id_10000_229 + 0x000c)
      001089 F0               [24] 3111 	movx	@dptr,a
      00108A 90 02 66         [24] 3112 	mov	dptr,#(_getURL_id_10000_229 + 0x000d)
      00108D F0               [24] 3113 	movx	@dptr,a
      00108E 90 02 67         [24] 3114 	mov	dptr,#(_getURL_id_10000_229 + 0x000e)
      001091 F0               [24] 3115 	movx	@dptr,a
                                   3116 ;	../Firmware/src/utils.c:629: DeviceSerialNumber(id);
      001092 90 02 59         [24] 3117 	mov	dptr,#_getURL_id_10000_229
      001095 F5 F0            [12] 3118 	mov	b,a
      001097 C0 07            [24] 3119 	push	ar7
      001099 C0 06            [24] 3120 	push	ar6
      00109B C0 05            [24] 3121 	push	ar5
      00109D 12 11 DB         [24] 3122 	lcall	_DeviceSerialNumber
      0010A0 D0 05            [24] 3123 	pop	ar5
      0010A2 D0 06            [24] 3124 	pop	ar6
      0010A4 D0 07            [24] 3125 	pop	ar7
                                   3126 ;	../Firmware/src/utils.c:630: strcpy(url,"GET /api/v1/device_log?device_id=");
      0010A6 75 41 37         [24] 3127 	mov	_strcpy_PARM_2,#___str_0
      0010A9 75 42 19         [24] 3128 	mov	(_strcpy_PARM_2 + 1),#(___str_0 >> 8)
      0010AC 75 43 80         [24] 3129 	mov	(_strcpy_PARM_2 + 2),#0x80
      0010AF 8D 82            [24] 3130 	mov	dpl, r5
      0010B1 8E 83            [24] 3131 	mov	dph, r6
      0010B3 8F F0            [24] 3132 	mov	b, r7
      0010B5 C0 07            [24] 3133 	push	ar7
      0010B7 C0 06            [24] 3134 	push	ar6
      0010B9 C0 05            [24] 3135 	push	ar5
      0010BB 12 16 6B         [24] 3136 	lcall	_strcpy
      0010BE D0 05            [24] 3137 	pop	ar5
      0010C0 D0 06            [24] 3138 	pop	ar6
      0010C2 D0 07            [24] 3139 	pop	ar7
                                   3140 ;	../Firmware/src/utils.c:631: strcat(url,id);
      0010C4 75 41 59         [24] 3141 	mov	_strcat_PARM_2,#_getURL_id_10000_229
      0010C7 75 42 02         [24] 3142 	mov	(_strcat_PARM_2 + 1),#(_getURL_id_10000_229 >> 8)
      0010CA 75 43 00         [24] 3143 	mov	(_strcat_PARM_2 + 2),#0x00
      0010CD 8D 82            [24] 3144 	mov	dpl, r5
      0010CF 8E 83            [24] 3145 	mov	dph, r6
      0010D1 8F F0            [24] 3146 	mov	b, r7
      0010D3 C0 07            [24] 3147 	push	ar7
      0010D5 C0 06            [24] 3148 	push	ar6
      0010D7 C0 05            [24] 3149 	push	ar5
      0010D9 12 17 2F         [24] 3150 	lcall	_strcat
      0010DC D0 05            [24] 3151 	pop	ar5
      0010DE D0 06            [24] 3152 	pop	ar6
      0010E0 D0 07            [24] 3153 	pop	ar7
                                   3154 ;	../Firmware/src/utils.c:632: strcat(url,"&latitude=");
      0010E2 75 41 59         [24] 3155 	mov	_strcat_PARM_2,#___str_1
      0010E5 75 42 19         [24] 3156 	mov	(_strcat_PARM_2 + 1),#(___str_1 >> 8)
      0010E8 75 43 80         [24] 3157 	mov	(_strcat_PARM_2 + 2),#0x80
      0010EB 8D 82            [24] 3158 	mov	dpl, r5
      0010ED 8E 83            [24] 3159 	mov	dph, r6
      0010EF 8F F0            [24] 3160 	mov	b, r7
      0010F1 C0 07            [24] 3161 	push	ar7
      0010F3 C0 06            [24] 3162 	push	ar6
      0010F5 C0 05            [24] 3163 	push	ar5
      0010F7 12 17 2F         [24] 3164 	lcall	_strcat
      0010FA D0 05            [24] 3165 	pop	ar5
      0010FC D0 06            [24] 3166 	pop	ar6
      0010FE D0 07            [24] 3167 	pop	ar7
                                   3168 ;	../Firmware/src/utils.c:633: strcat(url,latitude);
      001100 85 31 41         [24] 3169 	mov	_strcat_PARM_2,_getURL_PARM_2
      001103 85 32 42         [24] 3170 	mov	(_strcat_PARM_2 + 1),(_getURL_PARM_2 + 1)
      001106 85 33 43         [24] 3171 	mov	(_strcat_PARM_2 + 2),(_getURL_PARM_2 + 2)
      001109 8D 82            [24] 3172 	mov	dpl, r5
      00110B 8E 83            [24] 3173 	mov	dph, r6
      00110D 8F F0            [24] 3174 	mov	b, r7
      00110F C0 07            [24] 3175 	push	ar7
      001111 C0 06            [24] 3176 	push	ar6
      001113 C0 05            [24] 3177 	push	ar5
      001115 12 17 2F         [24] 3178 	lcall	_strcat
      001118 D0 05            [24] 3179 	pop	ar5
      00111A D0 06            [24] 3180 	pop	ar6
      00111C D0 07            [24] 3181 	pop	ar7
                                   3182 ;	../Firmware/src/utils.c:634: strcat(url,"&longitude=");
      00111E 75 41 64         [24] 3183 	mov	_strcat_PARM_2,#___str_2
      001121 75 42 19         [24] 3184 	mov	(_strcat_PARM_2 + 1),#(___str_2 >> 8)
      001124 75 43 80         [24] 3185 	mov	(_strcat_PARM_2 + 2),#0x80
      001127 8D 82            [24] 3186 	mov	dpl, r5
      001129 8E 83            [24] 3187 	mov	dph, r6
      00112B 8F F0            [24] 3188 	mov	b, r7
      00112D C0 07            [24] 3189 	push	ar7
      00112F C0 06            [24] 3190 	push	ar6
      001131 C0 05            [24] 3191 	push	ar5
      001133 12 17 2F         [24] 3192 	lcall	_strcat
      001136 D0 05            [24] 3193 	pop	ar5
      001138 D0 06            [24] 3194 	pop	ar6
      00113A D0 07            [24] 3195 	pop	ar7
                                   3196 ;	../Firmware/src/utils.c:635: strcat(url,longitude);
      00113C 85 34 41         [24] 3197 	mov	_strcat_PARM_2,_getURL_PARM_3
      00113F 85 35 42         [24] 3198 	mov	(_strcat_PARM_2 + 1),(_getURL_PARM_3 + 1)
      001142 85 36 43         [24] 3199 	mov	(_strcat_PARM_2 + 2),(_getURL_PARM_3 + 2)
      001145 8D 82            [24] 3200 	mov	dpl, r5
      001147 8E 83            [24] 3201 	mov	dph, r6
      001149 8F F0            [24] 3202 	mov	b, r7
      00114B C0 07            [24] 3203 	push	ar7
      00114D C0 06            [24] 3204 	push	ar6
      00114F C0 05            [24] 3205 	push	ar5
      001151 12 17 2F         [24] 3206 	lcall	_strcat
      001154 D0 05            [24] 3207 	pop	ar5
      001156 D0 06            [24] 3208 	pop	ar6
      001158 D0 07            [24] 3209 	pop	ar7
                                   3210 ;	../Firmware/src/utils.c:636: strcat(url,"&level=");
      00115A 75 41 70         [24] 3211 	mov	_strcat_PARM_2,#___str_3
      00115D 75 42 19         [24] 3212 	mov	(_strcat_PARM_2 + 1),#(___str_3 >> 8)
      001160 75 43 80         [24] 3213 	mov	(_strcat_PARM_2 + 2),#0x80
      001163 8D 82            [24] 3214 	mov	dpl, r5
      001165 8E 83            [24] 3215 	mov	dph, r6
      001167 8F F0            [24] 3216 	mov	b, r7
      001169 C0 07            [24] 3217 	push	ar7
      00116B C0 06            [24] 3218 	push	ar6
      00116D C0 05            [24] 3219 	push	ar5
      00116F 12 17 2F         [24] 3220 	lcall	_strcat
      001172 D0 05            [24] 3221 	pop	ar5
      001174 D0 06            [24] 3222 	pop	ar6
      001176 D0 07            [24] 3223 	pop	ar7
                                   3224 ;	../Firmware/src/utils.c:637: strcat(url,level);
      001178 85 37 41         [24] 3225 	mov	_strcat_PARM_2,_getURL_PARM_4
      00117B 85 38 42         [24] 3226 	mov	(_strcat_PARM_2 + 1),(_getURL_PARM_4 + 1)
      00117E 85 39 43         [24] 3227 	mov	(_strcat_PARM_2 + 2),(_getURL_PARM_4 + 2)
      001181 8D 82            [24] 3228 	mov	dpl, r5
      001183 8E 83            [24] 3229 	mov	dph, r6
      001185 8F F0            [24] 3230 	mov	b, r7
      001187 C0 07            [24] 3231 	push	ar7
      001189 C0 06            [24] 3232 	push	ar6
      00118B C0 05            [24] 3233 	push	ar5
      00118D 12 17 2F         [24] 3234 	lcall	_strcat
      001190 D0 05            [24] 3235 	pop	ar5
      001192 D0 06            [24] 3236 	pop	ar6
      001194 D0 07            [24] 3237 	pop	ar7
                                   3238 ;	../Firmware/src/utils.c:638: strcat(url,".00 HTTP/1.1\n");
      001196 75 41 78         [24] 3239 	mov	_strcat_PARM_2,#___str_4
      001199 75 42 19         [24] 3240 	mov	(_strcat_PARM_2 + 1),#(___str_4 >> 8)
      00119C 75 43 80         [24] 3241 	mov	(_strcat_PARM_2 + 2),#0x80
      00119F 8D 82            [24] 3242 	mov	dpl, r5
      0011A1 8E 83            [24] 3243 	mov	dph, r6
      0011A3 8F F0            [24] 3244 	mov	b, r7
      0011A5 C0 07            [24] 3245 	push	ar7
      0011A7 C0 06            [24] 3246 	push	ar6
      0011A9 C0 05            [24] 3247 	push	ar5
      0011AB 12 17 2F         [24] 3248 	lcall	_strcat
      0011AE D0 05            [24] 3249 	pop	ar5
      0011B0 D0 06            [24] 3250 	pop	ar6
      0011B2 D0 07            [24] 3251 	pop	ar7
                                   3252 ;	../Firmware/src/utils.c:639: strcat(url,"Host: gastrackafrica.com.ng\nConnection: close");
      0011B4 75 41 86         [24] 3253 	mov	_strcat_PARM_2,#___str_5
      0011B7 75 42 19         [24] 3254 	mov	(_strcat_PARM_2 + 1),#(___str_5 >> 8)
      0011BA 75 43 80         [24] 3255 	mov	(_strcat_PARM_2 + 2),#0x80
      0011BD 8D 82            [24] 3256 	mov	dpl, r5
      0011BF 8E 83            [24] 3257 	mov	dph, r6
      0011C1 8F F0            [24] 3258 	mov	b, r7
      0011C3 C0 07            [24] 3259 	push	ar7
      0011C5 C0 06            [24] 3260 	push	ar6
      0011C7 C0 05            [24] 3261 	push	ar5
      0011C9 12 17 2F         [24] 3262 	lcall	_strcat
      0011CC D0 05            [24] 3263 	pop	ar5
      0011CE D0 06            [24] 3264 	pop	ar6
      0011D0 D0 07            [24] 3265 	pop	ar7
                                   3266 ;	../Firmware/src/utils.c:641: return (UINT8)strlen(url);
      0011D2 8D 82            [24] 3267 	mov	dpl, r5
      0011D4 8E 83            [24] 3268 	mov	dph, r6
      0011D6 8F F0            [24] 3269 	mov	b, r7
                                   3270 ;	../Firmware/src/utils.c:642: }
      0011D8 02 18 85         [24] 3271 	ljmp	_strlen
                                   3272 	.area CSEG    (CODE)
                                   3273 	.area CONST   (CODE)
                                   3274 	.area CONST   (CODE)
      001937                       3275 ___str_0:
      001937 47 45 54 20 2F 61 70  3276 	.ascii "GET /api/v1/device_log?device_id="
             69 2F 76 31 2F 64 65
             76 69 63 65 5F 6C 6F
             67 3F 64 65 76 69 63
             65 5F 69 64 3D
      001958 00                    3277 	.db 0x00
                                   3278 	.area CSEG    (CODE)
                                   3279 	.area CONST   (CODE)
      001959                       3280 ___str_1:
      001959 26 6C 61 74 69 74 75  3281 	.ascii "&latitude="
             64 65 3D
      001963 00                    3282 	.db 0x00
                                   3283 	.area CSEG    (CODE)
                                   3284 	.area CONST   (CODE)
      001964                       3285 ___str_2:
      001964 26 6C 6F 6E 67 69 74  3286 	.ascii "&longitude="
             75 64 65 3D
      00196F 00                    3287 	.db 0x00
                                   3288 	.area CSEG    (CODE)
                                   3289 	.area CONST   (CODE)
      001970                       3290 ___str_3:
      001970 26 6C 65 76 65 6C 3D  3291 	.ascii "&level="
      001977 00                    3292 	.db 0x00
                                   3293 	.area CSEG    (CODE)
                                   3294 	.area CONST   (CODE)
      001978                       3295 ___str_4:
      001978 2E 30 30 20 48 54 54  3296 	.ascii ".00 HTTP/1.1"
             50 2F 31 2E 31
      001984 0A                    3297 	.db 0x0a
      001985 00                    3298 	.db 0x00
                                   3299 	.area CSEG    (CODE)
                                   3300 	.area CONST   (CODE)
      001986                       3301 ___str_5:
      001986 48 6F 73 74 3A 20 67  3302 	.ascii "Host: gastrackafrica.com.ng"
             61 73 74 72 61 63 6B
             61 66 72 69 63 61 2E
             63 6F 6D 2E 6E 67
      0019A1 0A                    3303 	.db 0x0a
      0019A2 43 6F 6E 6E 65 63 74  3304 	.ascii "Connection: close"
             69 6F 6E 3A 20 63 6C
             6F 73 65
      0019B3 00                    3305 	.db 0x00
                                   3306 	.area CSEG    (CODE)
                                   3307 	.area XINIT   (CODE)
                                   3308 	.area CABS    (ABS,CODE)

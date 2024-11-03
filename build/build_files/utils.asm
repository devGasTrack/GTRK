;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Mac OS X x86_64)
;--------------------------------------------------------
	.module utils
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer_interrupt_PARM_2
	.globl _update_timer_reg_PARM_2
	.globl _select_tmr_clk_src_PARM_2
	.globl _select_timer_clk_PARM_2
	.globl _set_timer_mode_PARM_2
	.globl _set_port_value_PARM_2
	.globl _set_port_dir_PARM_2
	.globl _set_output_mode_PARM_2
	.globl _is_adc_done
	.globl _start_adc
	.globl _strlen
	.globl _strcat
	.globl _strcpy
	.globl _DeviceSerialNumber
	.globl _UIF_BUS_RST
	.globl _UIF_TRANSFER
	.globl _UIF_SUSPEND
	.globl _UIF_FIFO_OV
	.globl _U_SIE_FREE
	.globl _U_TOG_OK
	.globl _U_IS_NAK
	.globl _ADC_CHAN0
	.globl _ADC_CHAN1
	.globl _CMP_CHAN
	.globl _ADC_START
	.globl _ADC_IF
	.globl _CMP_IF
	.globl _CMPO
	.globl _U1RI
	.globl _U1TI
	.globl _U1RB8
	.globl _U1TB8
	.globl _U1REN
	.globl _U1SMOD
	.globl _U1SM0
	.globl _S0_R_FIFO
	.globl _S0_T_FIFO
	.globl _S0_FREE
	.globl _S0_IF_BYTE
	.globl _S0_IF_FIRST
	.globl _S0_IF_OV
	.globl _S0_FST_ACT
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _CAP1F
	.globl _TF2
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _RXD
	.globl _PWM1_
	.globl _TXD
	.globl _PWM2_
	.globl _AIN3
	.globl _VBUS1
	.globl _INT0
	.globl _TXD1_
	.globl _INT1
	.globl _T0
	.globl _RXD1_
	.globl _PWM2
	.globl _T1
	.globl _UDP
	.globl _UDM
	.globl _TIN0
	.globl _CAP1
	.globl _T2
	.globl _AIN0
	.globl _VBUS2
	.globl _TIN1
	.globl _CAP2
	.globl _T2EX
	.globl _RXD_
	.globl _TXD_
	.globl _AIN1
	.globl _UCC1
	.globl _TIN2
	.globl _SCS
	.globl _CAP1_
	.globl _T2_
	.globl _AIN2
	.globl _UCC2
	.globl _TIN3
	.globl _PWM1
	.globl _MOSI
	.globl _TIN4
	.globl _RXD1
	.globl _MISO
	.globl _TIN5
	.globl _TXD1
	.globl _SCK
	.globl _IE_SPI0
	.globl _IE_TKEY
	.globl _IE_USB
	.globl _IE_ADC
	.globl _IE_UART1
	.globl _IE_PWMX
	.globl _IE_GPIO
	.globl _IE_WDOG
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PL_FLAG
	.globl _PH_FLAG
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _E_DIS
	.globl _EA
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _UEP1_DMA_H
	.globl _UEP1_DMA_L
	.globl _UEP1_DMA
	.globl _UEP0_DMA_H
	.globl _UEP0_DMA_L
	.globl _UEP0_DMA
	.globl _UEP2_3_MOD
	.globl _UEP4_1_MOD
	.globl _UEP3_DMA_H
	.globl _UEP3_DMA_L
	.globl _UEP3_DMA
	.globl _UEP2_DMA_H
	.globl _UEP2_DMA_L
	.globl _UEP2_DMA
	.globl _USB_DEV_AD
	.globl _USB_CTRL
	.globl _USB_INT_EN
	.globl _UEP4_T_LEN
	.globl _UEP4_CTRL
	.globl _UEP0_T_LEN
	.globl _UEP0_CTRL
	.globl _USB_RX_LEN
	.globl _USB_MIS_ST
	.globl _USB_INT_ST
	.globl _USB_INT_FG
	.globl _UEP3_T_LEN
	.globl _UEP3_CTRL
	.globl _UEP2_T_LEN
	.globl _UEP2_CTRL
	.globl _UEP1_T_LEN
	.globl _UEP1_CTRL
	.globl _UDEV_CTRL
	.globl _USB_C_CTRL
	.globl _TKEY_DATH
	.globl _TKEY_DATL
	.globl _TKEY_DAT
	.globl _TKEY_CTRL
	.globl _ADC_DATA
	.globl _ADC_CFG
	.globl _ADC_CTRL
	.globl _SBAUD1
	.globl _SBUF1
	.globl _SCON1
	.globl _SPI0_SETUP
	.globl _SPI0_CK_SE
	.globl _SPI0_CTRL
	.globl _SPI0_DATA
	.globl _SPI0_STAT
	.globl _PWM_CK_SE
	.globl _PWM_CTRL
	.globl _PWM_DATA1
	.globl _PWM_DATA2
	.globl _T2CAP1H
	.globl _T2CAP1L
	.globl _T2CAP1
	.globl _TH2
	.globl _TL2
	.globl _T2COUNT
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _RCAP2
	.globl _T2MOD
	.globl _T2CON
	.globl _SBUF
	.globl _SCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _XBUS_AUX
	.globl _PIN_FUNC
	.globl _P3_DIR_PU
	.globl _P3_MOD_OC
	.globl _P3
	.globl _P2
	.globl _P1_DIR_PU
	.globl _P1_MOD_OC
	.globl _P1
	.globl _ROM_CTRL
	.globl _ROM_DATA_H
	.globl _ROM_DATA_L
	.globl _ROM_DATA
	.globl _ROM_ADDR_H
	.globl _ROM_ADDR_L
	.globl _ROM_ADDR
	.globl _GPIO_IE
	.globl _IP_EX
	.globl _IE_EX
	.globl _IP
	.globl _IE
	.globl _WDOG_COUNT
	.globl _RESET_KEEP
	.globl _WAKE_CTRL
	.globl _CLOCK_CFG
	.globl _PCON
	.globl _GLOBAL_CFG
	.globl _SAFE_MOD
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _pwd
	.globl _ssid
	.globl _instruction
	.globl _getURL_PARM_4
	.globl _getURL_PARM_3
	.globl _getURL_PARM_2
	.globl _convert_PARM_2
	.globl _search_str_PARM_2
	.globl _uart0_read_string_until_PARM_4
	.globl _uart0_read_string_until_PARM_3
	.globl _uart0_read_string_until_PARM_2
	.globl _uart0_read_bytes_PARM_3
	.globl _uart0_read_bytes_PARM_2
	.globl _uart0_receive_byte_PARM_2
	.globl _uart_begin_PARM_2
	.globl _configure_port_PARM_2
	.globl _delay
	.globl _set_output_mode
	.globl _read_output_mode
	.globl _set_port_dir
	.globl _read_port_dir
	.globl _set_port_value
	.globl _read_port_value
	.globl _configure_port
	.globl _ADC_Enable
	.globl _set_ADC_speed
	.globl _set_ADC_channel
	.globl _analog_read
	.globl _bit_bang_uart_begin
	.globl _bit_bang_uart_tx
	.globl _print
	.globl _println
	.globl _get_system_freq
	.globl _set_timer_mode
	.globl _select_timer_clk
	.globl _select_tmr_clk_src
	.globl _update_timer_reg
	.globl _timer_interrupt
	.globl _start_timer
	.globl _stop_timer
	.globl _uart_begin
	.globl _uart0_write
	.globl _uart0_print
	.globl _uart0_println
	.globl _uart0_receive_byte
	.globl _uart0_read_bytes
	.globl _uart0_read_string_until
	.globl _search_str
	.globl _convert_to_percentage
	.globl _convert
	.globl _getURL
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SAFE_MOD	=	0x00a1
_GLOBAL_CFG	=	0x00b1
_PCON	=	0x0087
_CLOCK_CFG	=	0x00b9
_WAKE_CTRL	=	0x00a9
_RESET_KEEP	=	0x00fe
_WDOG_COUNT	=	0x00ff
_IE	=	0x00a8
_IP	=	0x00b8
_IE_EX	=	0x00e8
_IP_EX	=	0x00e9
_GPIO_IE	=	0x00c7
_ROM_ADDR	=	0x8584
_ROM_ADDR_L	=	0x0084
_ROM_ADDR_H	=	0x0085
_ROM_DATA	=	0x8f8e
_ROM_DATA_L	=	0x008e
_ROM_DATA_H	=	0x008f
_ROM_CTRL	=	0x0086
_P1	=	0x0090
_P1_MOD_OC	=	0x0092
_P1_DIR_PU	=	0x0093
_P2	=	0x00a0
_P3	=	0x00b0
_P3_MOD_OC	=	0x0096
_P3_DIR_PU	=	0x0097
_PIN_FUNC	=	0x00c6
_XBUS_AUX	=	0x00a2
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SCON	=	0x0098
_SBUF	=	0x0099
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2	=	0xcbca
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_T2COUNT	=	0xcdcc
_TL2	=	0x00cc
_TH2	=	0x00cd
_T2CAP1	=	0xcfce
_T2CAP1L	=	0x00ce
_T2CAP1H	=	0x00cf
_PWM_DATA2	=	0x009b
_PWM_DATA1	=	0x009c
_PWM_CTRL	=	0x009d
_PWM_CK_SE	=	0x009e
_SPI0_STAT	=	0x00f8
_SPI0_DATA	=	0x00f9
_SPI0_CTRL	=	0x00fa
_SPI0_CK_SE	=	0x00fb
_SPI0_SETUP	=	0x00fc
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_SBAUD1	=	0x00c2
_ADC_CTRL	=	0x0080
_ADC_CFG	=	0x009a
_ADC_DATA	=	0x009f
_TKEY_CTRL	=	0x00c3
_TKEY_DAT	=	0xc5c4
_TKEY_DATL	=	0x00c4
_TKEY_DATH	=	0x00c5
_USB_C_CTRL	=	0x0091
_UDEV_CTRL	=	0x00d1
_UEP1_CTRL	=	0x00d2
_UEP1_T_LEN	=	0x00d3
_UEP2_CTRL	=	0x00d4
_UEP2_T_LEN	=	0x00d5
_UEP3_CTRL	=	0x00d6
_UEP3_T_LEN	=	0x00d7
_USB_INT_FG	=	0x00d8
_USB_INT_ST	=	0x00d9
_USB_MIS_ST	=	0x00da
_USB_RX_LEN	=	0x00db
_UEP0_CTRL	=	0x00dc
_UEP0_T_LEN	=	0x00dd
_UEP4_CTRL	=	0x00de
_UEP4_T_LEN	=	0x00df
_USB_INT_EN	=	0x00e1
_USB_CTRL	=	0x00e2
_USB_DEV_AD	=	0x00e3
_UEP2_DMA	=	0xe5e4
_UEP2_DMA_L	=	0x00e4
_UEP2_DMA_H	=	0x00e5
_UEP3_DMA	=	0xe7e6
_UEP3_DMA_L	=	0x00e6
_UEP3_DMA_H	=	0x00e7
_UEP4_1_MOD	=	0x00ea
_UEP2_3_MOD	=	0x00eb
_UEP0_DMA	=	0xedec
_UEP0_DMA_L	=	0x00ec
_UEP0_DMA_H	=	0x00ed
_UEP1_DMA	=	0xefee
_UEP1_DMA_L	=	0x00ee
_UEP1_DMA_H	=	0x00ef
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_EA	=	0x00af
_E_DIS	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PH_FLAG	=	0x00bf
_PL_FLAG	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_IE_WDOG	=	0x00ef
_IE_GPIO	=	0x00ee
_IE_PWMX	=	0x00ed
_IE_UART1	=	0x00ec
_IE_ADC	=	0x00eb
_IE_USB	=	0x00ea
_IE_TKEY	=	0x00e9
_IE_SPI0	=	0x00e8
_SCK	=	0x0097
_TXD1	=	0x0097
_TIN5	=	0x0097
_MISO	=	0x0096
_RXD1	=	0x0096
_TIN4	=	0x0096
_MOSI	=	0x0095
_PWM1	=	0x0095
_TIN3	=	0x0095
_UCC2	=	0x0095
_AIN2	=	0x0095
_T2_	=	0x0094
_CAP1_	=	0x0094
_SCS	=	0x0094
_TIN2	=	0x0094
_UCC1	=	0x0094
_AIN1	=	0x0094
_TXD_	=	0x0093
_RXD_	=	0x0092
_T2EX	=	0x0091
_CAP2	=	0x0091
_TIN1	=	0x0091
_VBUS2	=	0x0091
_AIN0	=	0x0091
_T2	=	0x0090
_CAP1	=	0x0090
_TIN0	=	0x0090
_UDM	=	0x00b7
_UDP	=	0x00b6
_T1	=	0x00b5
_PWM2	=	0x00b4
_RXD1_	=	0x00b4
_T0	=	0x00b4
_INT1	=	0x00b3
_TXD1_	=	0x00b2
_INT0	=	0x00b2
_VBUS1	=	0x00b2
_AIN3	=	0x00b2
_PWM2_	=	0x00b1
_TXD	=	0x00b1
_PWM1_	=	0x00b0
_RXD	=	0x00b0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_TF2	=	0x00cf
_CAP1F	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_S0_FST_ACT	=	0x00ff
_S0_IF_OV	=	0x00fe
_S0_IF_FIRST	=	0x00fd
_S0_IF_BYTE	=	0x00fc
_S0_FREE	=	0x00fb
_S0_T_FIFO	=	0x00fa
_S0_R_FIFO	=	0x00f8
_U1SM0	=	0x00c7
_U1SMOD	=	0x00c5
_U1REN	=	0x00c4
_U1TB8	=	0x00c3
_U1RB8	=	0x00c2
_U1TI	=	0x00c1
_U1RI	=	0x00c0
_CMPO	=	0x0087
_CMP_IF	=	0x0086
_ADC_IF	=	0x0085
_ADC_START	=	0x0084
_CMP_CHAN	=	0x0083
_ADC_CHAN1	=	0x0081
_ADC_CHAN0	=	0x0080
_U_IS_NAK	=	0x00df
_U_TOG_OK	=	0x00de
_U_SIE_FREE	=	0x00dd
_UIF_FIFO_OV	=	0x00dc
_UIF_SUSPEND	=	0x00da
_UIF_TRANSFER	=	0x00d9
_UIF_BUS_RST	=	0x00d8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_configure_port_PARM_2:
	.ds 1
_uart_begin_PARM_2:
	.ds 4
_uart0_receive_byte_PARM_2:
	.ds 1
_uart0_read_bytes_PARM_2:
	.ds 2
_uart0_read_bytes_PARM_3:
	.ds 1
_uart0_read_bytes_received_bytes_10000_205:
	.ds 3
_uart0_read_bytes_current_recv_10000_206:
	.ds 1
_uart0_read_string_until_PARM_2:
	.ds 2
_uart0_read_string_until_PARM_3:
	.ds 1
_uart0_read_string_until_PARM_4:
	.ds 1
_uart0_read_string_until_current_recv_10000_210:
	.ds 1
_search_str_PARM_2:
	.ds 3
_search_str_base_10000_213:
	.ds 3
_search_str_base_len_10001_215:
	.ds 2
_search_str_str_len_10001_215:
	.ds 2
_search_str_i_20001_216:
	.ds 2
_search_str_sloc0_1_0:
	.ds 2
_convert_PARM_2:
	.ds 1
_convert_num_10000_221:
	.ds 3
_convert_i_10001_223:
	.ds 1
_convert_temp_10001_223:
	.ds 4
_getURL_PARM_2:
	.ds 3
_getURL_PARM_3:
	.ds 3
_getURL_PARM_4:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_set_output_mode_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_set_port_dir_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_set_port_value_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_set_timer_mode_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_select_timer_clk_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_select_tmr_clk_src_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_update_timer_reg_PARM_2:
	.ds 2
	.area	OSEG    (OVR,DATA)
_timer_interrupt_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_instruction::
	.ds 50
_ssid::
	.ds 15
_pwd::
	.ds 15
_uart0_println_t_10000_199:
	.ds 256
_getURL_id_10000_229:
	.ds 15
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	../Firmware/src/utils.c:4: void delay(unsigned int ms) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	../Firmware/src/utils.c:6: for (i = 0; i < ms; i++) {
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	../Firmware/src/utils.c:7: for (j = 0; j < 456; j++) {
	mov	r2,#0xc8
	mov	r3,#0x01
00105$:
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	../Firmware/src/utils.c:6: for (i = 0; i < ms; i++) {
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	../Firmware/src/utils.c:10: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_output_mode'
;------------------------------------------------------------
;value                     Allocated with name '_set_output_mode_PARM_2'
;port                      Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:15: void set_output_mode(enum PORT port, UINT8 value){
;	-----------------------------------------
;	 function set_output_mode
;	-----------------------------------------
_set_output_mode:
;	../Firmware/src/utils.c:16: if(port == PORT1){
	mov	a,dpl
	mov	r7,a
	jnz	00107$
;	../Firmware/src/utils.c:17: P1_MOD_OC = value;
	mov	_P1_MOD_OC,_set_output_mode_PARM_2
	ret
00107$:
;	../Firmware/src/utils.c:19: else if(port == PORT2){
	cjne	r7,#0x01,00130$
	ret
00130$:
;	../Firmware/src/utils.c:22: else if(port == PORT3){
	cjne	r7,#0x02,00109$
;	../Firmware/src/utils.c:23: P3_MOD_OC = value;
	mov	_P3_MOD_OC,_set_output_mode_PARM_2
00109$:
;	../Firmware/src/utils.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_output_mode'
;------------------------------------------------------------
;port                      Allocated to registers r7 
;ret                       Allocated to registers r6 
;------------------------------------------------------------
;	../Firmware/src/utils.c:30: UINT8 read_output_mode (enum PORT port){
;	-----------------------------------------
;	 function read_output_mode
;	-----------------------------------------
_read_output_mode:
	mov	r7, dpl
;	../Firmware/src/utils.c:31: UINT8 ret = 0;
	mov	r6,#0x00
;	../Firmware/src/utils.c:32: if(port == PORT1){
	mov	a,r7
	jnz	00107$
;	../Firmware/src/utils.c:33: ret = P1_MOD_OC;
	mov	r6,_P1_MOD_OC
	sjmp	00108$
00107$:
;	../Firmware/src/utils.c:35: else if(port == PORT2){
	cjne	r7,#0x01,00104$
;	../Firmware/src/utils.c:36: ret = 0;
	mov	r6,#0x00
	sjmp	00108$
00104$:
;	../Firmware/src/utils.c:38: else if(port == PORT3){
	cjne	r7,#0x02,00108$
;	../Firmware/src/utils.c:39: ret = P3_MOD_OC;
	mov	r6,_P3_MOD_OC
00108$:
;	../Firmware/src/utils.c:41: return ret;
	mov	dpl, r6
;	../Firmware/src/utils.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_port_dir'
;------------------------------------------------------------
;dir                       Allocated with name '_set_port_dir_PARM_2'
;port                      Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:47: void set_port_dir(enum PORT port, UINT8 dir){
;	-----------------------------------------
;	 function set_port_dir
;	-----------------------------------------
_set_port_dir:
;	../Firmware/src/utils.c:48: if(port == PORT1){
	mov	a,dpl
	mov	r7,a
	jnz	00107$
;	../Firmware/src/utils.c:49: P1_DIR_PU = dir;
	mov	_P1_DIR_PU,_set_port_dir_PARM_2
	ret
00107$:
;	../Firmware/src/utils.c:51: else if(port == PORT2){
	cjne	r7,#0x01,00130$
	ret
00130$:
;	../Firmware/src/utils.c:54: else if(port == PORT3){
	cjne	r7,#0x02,00109$
;	../Firmware/src/utils.c:55: P3_DIR_PU = dir;
	mov	_P3_DIR_PU,_set_port_dir_PARM_2
00109$:
;	../Firmware/src/utils.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_port_dir'
;------------------------------------------------------------
;port                      Allocated to registers r7 
;ret                       Allocated to registers r6 
;------------------------------------------------------------
;	../Firmware/src/utils.c:61: UINT8 read_port_dir (enum PORT port){
;	-----------------------------------------
;	 function read_port_dir
;	-----------------------------------------
_read_port_dir:
	mov	r7, dpl
;	../Firmware/src/utils.c:62: UINT8 ret = 0;
	mov	r6,#0x00
;	../Firmware/src/utils.c:63: if(port == PORT1){
	mov	a,r7
	jnz	00107$
;	../Firmware/src/utils.c:64: ret = P1_DIR_PU;
	mov	r6,_P1_DIR_PU
	sjmp	00108$
00107$:
;	../Firmware/src/utils.c:66: else if(port == PORT2){
	cjne	r7,#0x01,00104$
;	../Firmware/src/utils.c:67: ret = 0;
	mov	r6,#0x00
	sjmp	00108$
00104$:
;	../Firmware/src/utils.c:69: else if(port == PORT3){
	cjne	r7,#0x02,00108$
;	../Firmware/src/utils.c:70: ret = P3_DIR_PU;
	mov	r6,_P3_DIR_PU
00108$:
;	../Firmware/src/utils.c:72: return ret;
	mov	dpl, r6
;	../Firmware/src/utils.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_port_value'
;------------------------------------------------------------
;value                     Allocated with name '_set_port_value_PARM_2'
;port                      Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:78: void set_port_value(enum PORT port, UINT8 value){
;	-----------------------------------------
;	 function set_port_value
;	-----------------------------------------
_set_port_value:
;	../Firmware/src/utils.c:79: if(port == PORT1){
	mov	a,dpl
	mov	r7,a
	jnz	00107$
;	../Firmware/src/utils.c:80: P1 = value;
	mov	_P1,_set_port_value_PARM_2
	ret
00107$:
;	../Firmware/src/utils.c:82: else if(port == PORT2){
	cjne	r7,#0x01,00104$
;	../Firmware/src/utils.c:83: P2 = value;
	mov	_P2,_set_port_value_PARM_2
	ret
00104$:
;	../Firmware/src/utils.c:85: else if(port == PORT3){
	cjne	r7,#0x02,00109$
;	../Firmware/src/utils.c:86: P3 = value;
	mov	_P3,_set_port_value_PARM_2
00109$:
;	../Firmware/src/utils.c:88: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_port_value'
;------------------------------------------------------------
;port                      Allocated to registers r7 
;ret                       Allocated to registers r6 
;------------------------------------------------------------
;	../Firmware/src/utils.c:93: UINT8 read_port_value (enum PORT port){
;	-----------------------------------------
;	 function read_port_value
;	-----------------------------------------
_read_port_value:
	mov	r7, dpl
;	../Firmware/src/utils.c:94: UINT8 ret = 0;
	mov	r6,#0x00
;	../Firmware/src/utils.c:95: if(port == PORT1){
	mov	a,r7
	jnz	00107$
;	../Firmware/src/utils.c:96: ret = P1;
	mov	r6,_P1
	sjmp	00108$
00107$:
;	../Firmware/src/utils.c:98: else if(port == PORT2){
	cjne	r7,#0x01,00104$
;	../Firmware/src/utils.c:99: ret = P2;
	mov	r6,_P2
	sjmp	00108$
00104$:
;	../Firmware/src/utils.c:101: else if(port == PORT3){
	cjne	r7,#0x02,00108$
;	../Firmware/src/utils.c:102: ret = P3;
	mov	r6,_P3
00108$:
;	../Firmware/src/utils.c:104: return ret;
	mov	dpl, r6
;	../Firmware/src/utils.c:105: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_port'
;------------------------------------------------------------
;mode                      Allocated with name '_configure_port_PARM_2'
;port                      Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:109: void configure_port(enum PORT port, enum PORT_MODE mode){
;	-----------------------------------------
;	 function configure_port
;	-----------------------------------------
_configure_port:
	mov	r7, dpl
;	../Firmware/src/utils.c:110: if(mode == HIGH_IMPEDANCE){
	mov	a,_configure_port_PARM_2
;	../Firmware/src/utils.c:111: set_output_mode(port,0x00);
	jnz	00110$
	mov	_set_output_mode_PARM_2,a
	mov	dpl, r7
	push	ar7
	lcall	_set_output_mode
	pop	ar7
;	../Firmware/src/utils.c:112: set_port_dir(port, 0x00);
	mov	_set_port_dir_PARM_2,#0x00
	mov	dpl, r7
	ljmp	_set_port_dir
00110$:
;	../Firmware/src/utils.c:114: else if(mode == PP_OUT){
	mov	a,#0x01
	cjne	a,_configure_port_PARM_2,00107$
;	../Firmware/src/utils.c:115: set_output_mode(port,0x00);
	mov	_set_output_mode_PARM_2,#0x00
	mov	dpl, r7
	push	ar7
	lcall	_set_output_mode
	pop	ar7
;	../Firmware/src/utils.c:116: set_port_dir(port, 0xFF);
	mov	_set_port_dir_PARM_2,#0xff
	mov	dpl, r7
	ljmp	_set_port_dir
00107$:
;	../Firmware/src/utils.c:118: else if(mode == OD_OUT){
	mov	a,#0x02
	cjne	a,_configure_port_PARM_2,00104$
;	../Firmware/src/utils.c:119: set_output_mode(port,0xFF);
	mov	_set_output_mode_PARM_2,#0xff
	mov	dpl, r7
	push	ar7
	lcall	_set_output_mode
	pop	ar7
;	../Firmware/src/utils.c:120: set_port_dir(port, 0x00);
	mov	_set_port_dir_PARM_2,#0x00
	mov	dpl, r7
	ljmp	_set_port_dir
00104$:
;	../Firmware/src/utils.c:122: else if(mode == QUASI_BI){
	mov	a,#0x03
	cjne	a,_configure_port_PARM_2,00112$
;	../Firmware/src/utils.c:123: set_output_mode(port,0xFF);
	mov	_set_output_mode_PARM_2,#0xff
	mov	dpl, r7
	push	ar7
	lcall	_set_output_mode
	pop	ar7
;	../Firmware/src/utils.c:124: set_port_dir(port, 0xFF);
	mov	_set_port_dir_PARM_2,#0xff
	mov	dpl, r7
;	../Firmware/src/utils.c:127: }
	ljmp	_set_port_dir
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_adc'
;------------------------------------------------------------
;	../Firmware/src/utils.c:130: void start_adc(void){
;	-----------------------------------------
;	 function start_adc
;	-----------------------------------------
_start_adc:
;	../Firmware/src/utils.c:131: ADC_CTRL |= 1 << 4;
	orl	_ADC_CTRL,#0x10
;	../Firmware/src/utils.c:132: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_adc_done'
;------------------------------------------------------------
;data                      Allocated to registers 
;------------------------------------------------------------
;	../Firmware/src/utils.c:136: UINT8 is_adc_done(void){
;	-----------------------------------------
;	 function is_adc_done
;	-----------------------------------------
_is_adc_done:
;	../Firmware/src/utils.c:137: UINT8 data = ADC_CTRL >> 4;
	mov	a,_ADC_CTRL
	swap	a
	anl	a,#0x0f
	mov	r7,a
;	../Firmware/src/utils.c:138: data &= 0x01;
	mov	a,#0x01
	anl	a,r7
	mov	dpl,a
;	../Firmware/src/utils.c:139: return data;
;	../Firmware/src/utils.c:140: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Enable'
;------------------------------------------------------------
;state                     Allocated to registers r7 
;_data                     Allocated to registers 
;------------------------------------------------------------
;	../Firmware/src/utils.c:144: void ADC_Enable(UINT8 state){
;	-----------------------------------------
;	 function ADC_Enable
;	-----------------------------------------
_ADC_Enable:
;	../Firmware/src/utils.c:145: if(state > 0)
	mov	a,dpl
	jz	00102$
;	../Firmware/src/utils.c:146: ADC_CFG |= 1 << 3;
	orl	_ADC_CFG,#0x08
	ret
00102$:
;	../Firmware/src/utils.c:149: ADC_CFG &= _data;
	anl	_ADC_CFG,#0xf7
;	../Firmware/src/utils.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ADC_speed'
;------------------------------------------------------------
;speed                     Allocated to registers r7 
;_data                     Allocated to registers 
;------------------------------------------------------------
;	../Firmware/src/utils.c:154: void set_ADC_speed(UINT8 speed){
;	-----------------------------------------
;	 function set_ADC_speed
;	-----------------------------------------
_set_ADC_speed:
;	../Firmware/src/utils.c:155: if(speed > 0)
	mov	a,dpl
	jz	00102$
;	../Firmware/src/utils.c:156: ADC_CFG |= 1;
	orl	_ADC_CFG,#0x01
	ret
00102$:
;	../Firmware/src/utils.c:159: ADC_CFG &= _data;
	anl	_ADC_CFG,#0xfe
;	../Firmware/src/utils.c:161: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_ADC_channel'
;------------------------------------------------------------
;channel                   Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:164: void set_ADC_channel(UINT8 channel){
;	-----------------------------------------
;	 function set_ADC_channel
;	-----------------------------------------
_set_ADC_channel:
	mov	r7, dpl
;	../Firmware/src/utils.c:165: ADC_CTRL &= 0xFC;
	anl	_ADC_CTRL,#0xfc
;	../Firmware/src/utils.c:166: ADC_CTRL |= channel & 0x03;
	anl	ar7,#0x03
	mov	a,r7
	orl	_ADC_CTRL,a
;	../Firmware/src/utils.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'analog_read'
;------------------------------------------------------------
;channel                   Allocated to registers 
;------------------------------------------------------------
;	../Firmware/src/utils.c:171: UINT8 analog_read(int channel){
;	-----------------------------------------
;	 function analog_read
;	-----------------------------------------
_analog_read:
;	../Firmware/src/utils.c:172: ADC_Enable(1);
	mov	dpl, #0x01
	lcall	_ADC_Enable
;	../Firmware/src/utils.c:173: set_ADC_speed(1);
	mov	dpl, #0x01
	lcall	_set_ADC_speed
;	../Firmware/src/utils.c:174: set_ADC_channel(3);
	mov	dpl, #0x03
	lcall	_set_ADC_channel
;	../Firmware/src/utils.c:175: start_adc();
	lcall	_start_adc
;	../Firmware/src/utils.c:176: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	../Firmware/src/utils.c:178: return ADC_DATA;
	mov	dpl, _ADC_DATA
;	../Firmware/src/utils.c:179: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_bang_uart_begin'
;------------------------------------------------------------
;	../Firmware/src/utils.c:183: void bit_bang_uart_begin(void){
;	-----------------------------------------
;	 function bit_bang_uart_begin
;	-----------------------------------------
_bit_bang_uart_begin:
;	../Firmware/src/utils.c:184: configure_port(PORT3, PP_OUT);
	mov	_configure_port_PARM_2,#0x01
	mov	dpl, #0x02
	lcall	_configure_port
;	../Firmware/src/utils.c:185: set_port_value(PORT3, 0xFF);
	mov	_set_port_value_PARM_2,#0xff
	mov	dpl, #0x02
	lcall	_set_port_value
;	../Firmware/src/utils.c:186: delay(500);
	mov	dptr,#0x01f4
;	../Firmware/src/utils.c:187: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_bang_uart_tx'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	../Firmware/src/utils.c:191: void bit_bang_uart_tx(UINT8 data){
;	-----------------------------------------
;	 function bit_bang_uart_tx
;	-----------------------------------------
_bit_bang_uart_tx:
	mov	r7, dpl
;	../Firmware/src/utils.c:192: PIN_FUNC = 0;
	mov	_PIN_FUNC,#0x00
;	../Firmware/src/utils.c:193: set_port_value(PORT3, 0x00);
	mov	_set_port_value_PARM_2,#0x00
	mov	dpl, #0x02
	push	ar7
	lcall	_set_port_value
;	../Firmware/src/utils.c:194: delay(1);
	mov	dptr,#0x0001
	lcall	_delay
	pop	ar7
;	../Firmware/src/utils.c:195: for (int i = 0; i < 8; i++) {
	mov	r6,#0x00
00106$:
	cjne	r6,#0x08,00129$
00129$:
	jnc	00104$
;	../Firmware/src/utils.c:196: if (data & (1 << i)) {
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00132$
00131$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00132$:
	djnz	b,00131$
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
	mov	a,r4
	orl	a,r5
	jz	00102$
;	../Firmware/src/utils.c:197: set_port_value(PORT3, 0xFF);
	mov	_set_port_value_PARM_2,#0xff
	mov	dpl, #0x02
	push	ar7
	push	ar6
	lcall	_set_port_value
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	../Firmware/src/utils.c:199: set_port_value(PORT3, 0x00);
	mov	_set_port_value_PARM_2,#0x00
	mov	dpl, #0x02
	push	ar7
	push	ar6
	lcall	_set_port_value
	pop	ar6
	pop	ar7
00103$:
;	../Firmware/src/utils.c:201: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:195: for (int i = 0; i < 8; i++) {
	inc	r6
	sjmp	00106$
00104$:
;	../Firmware/src/utils.c:203: set_port_value(PORT3, 0xFF); 
	mov	_set_port_value_PARM_2,#0xff
	mov	dpl, #0x02
	lcall	_set_port_value
;	../Firmware/src/utils.c:204: delay(1);
	mov	dptr,#0x0001
;	../Firmware/src/utils.c:205: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'print'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;index                     Allocated to registers r3 r4 
;------------------------------------------------------------
;	../Firmware/src/utils.c:209: void print(char * str){
;	-----------------------------------------
;	 function print
;	-----------------------------------------
_print:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/utils.c:211: while(str[index] != '\0'){
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	a,r3
	add	a, r5
	mov	r0,a
	mov	a,r4
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jz	00104$
;	../Firmware/src/utils.c:212: bit_bang_uart_tx(str[index++]);
	mov	a,r3
	add	a, r5
	mov	r0,a
	mov	a,r4
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	inc	r3
	cjne	r3,#0x00,00120$
	inc	r4
00120$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_bit_bang_uart_tx
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	../Firmware/src/utils.c:214: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'println'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:218: void println(char * str){
;	-----------------------------------------
;	 function println
;	-----------------------------------------
_println:
;	../Firmware/src/utils.c:219: print(str);
	lcall	_print
;	../Firmware/src/utils.c:220: bit_bang_uart_tx('\r');
	mov	dpl, #0x0d
	lcall	_bit_bang_uart_tx
;	../Firmware/src/utils.c:221: bit_bang_uart_tx('\n');
	mov	dpl, #0x0a
;	../Firmware/src/utils.c:222: }
	ljmp	_bit_bang_uart_tx
;------------------------------------------------------------
;Allocation info for local variables in function 'get_system_freq'
;------------------------------------------------------------
;	../Firmware/src/utils.c:227: UINT8 get_system_freq(void){
;	-----------------------------------------
;	 function get_system_freq
;	-----------------------------------------
_get_system_freq:
;	../Firmware/src/utils.c:228: return CLOCK_CFG & 0x07;
	mov	a,_CLOCK_CFG
	anl	a,#0x07
	mov	dpl,a
;	../Firmware/src/utils.c:229: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_timer_mode'
;------------------------------------------------------------
;_mode                     Allocated with name '_set_timer_mode_PARM_2'
;_t                        Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:234: void set_timer_mode(enum TIMER _t, enum TIMER_MODE _mode){
;	-----------------------------------------
;	 function set_timer_mode
;	-----------------------------------------
_set_timer_mode:
;	../Firmware/src/utils.c:235: if(_t == TIMER0){
	mov	a,dpl
	mov	r7,a
	jnz	00119$
;	../Firmware/src/utils.c:236: TMOD &= 0xFC;
	anl	_TMOD,#0xfc
;	../Firmware/src/utils.c:237: switch (_mode){
	mov	a,_set_timer_mode_PARM_2
	add	a,#0xff - 0x03
	jc	00121$
	mov	a,_set_timer_mode_PARM_2
	mov	b,#0x03
	mul	ab
	mov	dptr,#00157$
	jmp	@a+dptr
00157$:
	ljmp	00121$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	../Firmware/src/utils.c:239: case TMR_MODE_1:    TMOD |= 0x01;
00102$:
	orl	_TMOD,#0x01
;	../Firmware/src/utils.c:240: break;
;	../Firmware/src/utils.c:241: case TMR_MODE_2:    TMOD |= 0x02;
	ret
00103$:
	orl	_TMOD,#0x02
;	../Firmware/src/utils.c:242: break;
;	../Firmware/src/utils.c:243: case TMR_MODE_3:    TMOD |= 0x03;
	ret
00104$:
	orl	_TMOD,#0x03
;	../Firmware/src/utils.c:245: }
	ret
00119$:
;	../Firmware/src/utils.c:247: else if(_t == TIMER1){
	cjne	r7,#0x01,00116$
;	../Firmware/src/utils.c:248: TMOD &= 0xCF;
	anl	_TMOD,#0xcf
;	../Firmware/src/utils.c:249: switch (_mode){
	mov	a,_set_timer_mode_PARM_2
	add	a,#0xff - 0x03
	jc	00121$
	mov	a,_set_timer_mode_PARM_2
	mov	b,#0x03
	mul	ab
	mov	dptr,#00161$
	jmp	@a+dptr
00161$:
	ljmp	00121$
	ljmp	00107$
	ljmp	00108$
	ljmp	00109$
;	../Firmware/src/utils.c:251: case TMR_MODE_1:    TMOD |= 0x10;
00107$:
	orl	_TMOD,#0x10
;	../Firmware/src/utils.c:252: break;
;	../Firmware/src/utils.c:253: case TMR_MODE_2:    TMOD |= 0x20;
	ret
00108$:
	orl	_TMOD,#0x20
;	../Firmware/src/utils.c:254: break;
;	../Firmware/src/utils.c:255: case TMR_MODE_3:    TMOD |= 0x30;
	ret
00109$:
	orl	_TMOD,#0x30
;	../Firmware/src/utils.c:257: }
	ret
00116$:
;	../Firmware/src/utils.c:259: else if(_t == TIMER2){
	cjne	r7,#0x02,00121$
;	../Firmware/src/utils.c:260: T2CON &= 0xCD;
	anl	_T2CON,#0xcd
;	../Firmware/src/utils.c:264: }
00121$:
;	../Firmware/src/utils.c:267: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'select_timer_clk'
;------------------------------------------------------------
;_clk                      Allocated with name '_select_timer_clk_PARM_2'
;_t                        Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:271: void select_timer_clk(enum TIMER _t, enum TIMER_CLK _clk){
;	-----------------------------------------
;	 function select_timer_clk
;	-----------------------------------------
_select_timer_clk:
;	../Firmware/src/utils.c:272: if(_t == TIMER0){
	mov	a,dpl
	mov	r7,a
	jnz	00122$
;	../Firmware/src/utils.c:273: T2MOD &= 0x6F;
	anl	_T2MOD,#0x6f
;	../Firmware/src/utils.c:275: if(_clk == DIV_4) T2MOD |= 0x10;
	mov	a,#0x01
	cjne	a,_select_timer_clk_PARM_2,00102$
	orl	_T2MOD,#0x10
00102$:
;	../Firmware/src/utils.c:276: if (_clk == F_SYS) T2MOD |= 0x90;
	mov	a,#0x03
	cjne	a,_select_timer_clk_PARM_2,00124$
	orl	_T2MOD,#0x90
	ret
00122$:
;	../Firmware/src/utils.c:278: else if(_t == TIMER1){
	cjne	r7,#0x01,00119$
;	../Firmware/src/utils.c:279: T2MOD &= 0x5F;
	anl	_T2MOD,#0x5f
;	../Firmware/src/utils.c:281: if(_clk == DIV_4) T2MOD |= 0x20;
	mov	a,#0x01
	cjne	a,_select_timer_clk_PARM_2,00106$
	orl	_T2MOD,#0x20
00106$:
;	../Firmware/src/utils.c:282: if(_clk == F_SYS) T2MOD |= 0xA0;
	mov	a,#0x03
	cjne	a,_select_timer_clk_PARM_2,00124$
	orl	_T2MOD,#0xa0
	ret
00119$:
;	../Firmware/src/utils.c:284: else if(_t == TIMER2){
	cjne	r7,#0x02,00124$
;	../Firmware/src/utils.c:285: T2MOD &= 0x3F;
	anl	_T2MOD,#0x3f
;	../Firmware/src/utils.c:286: if(_clk == DIV_12) T2MOD |= 0x10;
	mov	a,_select_timer_clk_PARM_2
	jnz	00110$
	orl	_T2MOD,#0x10
00110$:
;	../Firmware/src/utils.c:287: if(_clk == DIV_4 || _clk == DIV_2) T2MOD |= 0x40;
	mov	a,#0x01
	cjne	a,_select_timer_clk_PARM_2,00200$
	sjmp	00111$
00200$:
	mov	a,#0x02
	cjne	a,_select_timer_clk_PARM_2,00112$
00111$:
	orl	_T2MOD,#0x40
00112$:
;	../Firmware/src/utils.c:288: if(_clk == F_SYS) T2MOD |= 0xC0;
	mov	a,#0x03
	cjne	a,_select_timer_clk_PARM_2,00124$
	orl	_T2MOD,#0xc0
00124$:
;	../Firmware/src/utils.c:291: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'select_tmr_clk_src'
;------------------------------------------------------------
;source                    Allocated with name '_select_tmr_clk_src_PARM_2'
;_t                        Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:296: void select_tmr_clk_src(enum TIMER _t, UINT8 source){
;	-----------------------------------------
;	 function select_tmr_clk_src
;	-----------------------------------------
_select_tmr_clk_src:
;	../Firmware/src/utils.c:297: if(_t == TIMER0 && source == 0){
	mov	a,dpl
	mov	r7,a
	jnz	00113$
	mov	a,_select_tmr_clk_src_PARM_2
	jnz	00113$
;	../Firmware/src/utils.c:298: TMOD &= 0xFB;
	anl	_TMOD,#0xfb
	ret
00113$:
;	../Firmware/src/utils.c:300: else if(_t == TIMER0 && source == 1){
	mov	a,r7
	jnz	00109$
	mov	a,#0x01
	cjne	a,_select_tmr_clk_src_PARM_2,00109$
;	../Firmware/src/utils.c:301: TMOD |= 0x04;
	orl	_TMOD,#0x04
	ret
00109$:
;	../Firmware/src/utils.c:303: else if(_t == TIMER1 && source == 0){
	cjne	r7,#0x01,00171$
	mov	a,r7
	sjmp	00172$
00171$:
	clr	a
00172$:
	mov	r7,a
	jz	00105$
	mov	a,_select_tmr_clk_src_PARM_2
	jnz	00105$
;	../Firmware/src/utils.c:304: TMOD &= 0xBF;
	anl	_TMOD,#0xbf
	ret
00105$:
;	../Firmware/src/utils.c:306: else if(_t == TIMER1 && source == 1){
	mov	a,r7
	jz	00116$
	mov	a,#0x01
	cjne	a,_select_tmr_clk_src_PARM_2,00116$
;	../Firmware/src/utils.c:307: TMOD |= 0x40;
	orl	_TMOD,#0x40
00116$:
;	../Firmware/src/utils.c:310: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_timer_reg'
;------------------------------------------------------------
;value                     Allocated with name '_update_timer_reg_PARM_2'
;_t                        Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:315: void update_timer_reg(enum TIMER _t, UINT16 value){
;	-----------------------------------------
;	 function update_timer_reg
;	-----------------------------------------
_update_timer_reg:
	mov	r7, dpl
;	../Firmware/src/utils.c:316: switch(_t){
	cjne	r7,#0x00,00125$
	sjmp	00101$
00125$:
	cjne	r7,#0x01,00126$
	sjmp	00102$
00126$:
;	../Firmware/src/utils.c:317: case TIMER0:    TL0 = (UINT8)value;
	cjne	r7,#0x02,00105$
	sjmp	00103$
00101$:
	mov	_TL0,_update_timer_reg_PARM_2
;	../Firmware/src/utils.c:318: TH0 = (UINT8)(value >> 8);
	mov	_TH0,(_update_timer_reg_PARM_2 + 1)
;	../Firmware/src/utils.c:319: break;
;	../Firmware/src/utils.c:320: case TIMER1:    TL1 = (UINT8)value;
	ret
00102$:
	mov	_TL1,_update_timer_reg_PARM_2
;	../Firmware/src/utils.c:321: TH1 = (UINT8)(value >> 8);
	mov	_TH1,(_update_timer_reg_PARM_2 + 1)
;	../Firmware/src/utils.c:322: break;
;	../Firmware/src/utils.c:323: case TIMER2:    TL2 = (UINT8)value;
	ret
00103$:
	mov	_TL2,_update_timer_reg_PARM_2
;	../Firmware/src/utils.c:324: TH2 = (UINT8)(value >> 8);
	mov	_TH2,(_update_timer_reg_PARM_2 + 1)
;	../Firmware/src/utils.c:326: }
00105$:
;	../Firmware/src/utils.c:327: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_interrupt'
;------------------------------------------------------------
;enable_bit                Allocated with name '_timer_interrupt_PARM_2'
;_t                        Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:332: void timer_interrupt(enum TIMER _t, UINT8 enable_bit){
;	-----------------------------------------
;	 function timer_interrupt
;	-----------------------------------------
_timer_interrupt:
;	../Firmware/src/utils.c:334: if(_t == TIMER0){
	mov	a,dpl
	mov	r7,a
	jnz	00116$
;	../Firmware/src/utils.c:335: if(enable_bit > 0) {
	mov	a,_timer_interrupt_PARM_2
	jz	00102$
;	../Firmware/src/utils.c:336: IE |= 0x80;
	orl	_IE,#0x80
;	../Firmware/src/utils.c:337: IE |= 0x02;
	orl	_IE,#0x02
	ret
00102$:
;	../Firmware/src/utils.c:339: else IE &= 0xFD;
	anl	_IE,#0xfd
	ret
00116$:
;	../Firmware/src/utils.c:341: else if(_t == TIMER1){
	cjne	r7,#0x01,00113$
;	../Firmware/src/utils.c:342: if(enable_bit > 0) {
	mov	a,_timer_interrupt_PARM_2
	jz	00105$
;	../Firmware/src/utils.c:343: IE |= 0x80;
	orl	_IE,#0x80
;	../Firmware/src/utils.c:344: IE |= 0x08; 
	orl	_IE,#0x08
	ret
00105$:
;	../Firmware/src/utils.c:346: else IE &= 0xF7;
	anl	_IE,#0xf7
	ret
00113$:
;	../Firmware/src/utils.c:348: else if(_t == TIMER2){
	cjne	r7,#0x02,00118$
;	../Firmware/src/utils.c:349: if(enable_bit > 0) {
	mov	a,_timer_interrupt_PARM_2
	jz	00108$
;	../Firmware/src/utils.c:350: IE |= 0x80;
	orl	_IE,#0x80
;	../Firmware/src/utils.c:351: IE |= 0x20;
	orl	_IE,#0x20
	ret
00108$:
;	../Firmware/src/utils.c:353: else IE &= 0xDF;
	anl	_IE,#0xdf
00118$:
;	../Firmware/src/utils.c:355: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_timer'
;------------------------------------------------------------
;_t                        Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:359: void start_timer(enum TIMER _t){
;	-----------------------------------------
;	 function start_timer
;	-----------------------------------------
_start_timer:
;	../Firmware/src/utils.c:360: if(_t == TIMER0){
	mov	a,dpl
	mov	r7,a
	jnz	00104$
;	../Firmware/src/utils.c:361: TCON |=0x10;
	orl	_TCON,#0x10
	sjmp	00105$
00104$:
;	../Firmware/src/utils.c:363: else if(_t == TIMER1){
	cjne	r7,#0x01,00105$
;	../Firmware/src/utils.c:364: TCON |=0x40;
	orl	_TCON,#0x40
00105$:
;	../Firmware/src/utils.c:366: if(_t == TIMER2){
	cjne	r7,#0x02,00108$
;	../Firmware/src/utils.c:367: T2CON |=0x04;
	orl	_T2CON,#0x04
00108$:
;	../Firmware/src/utils.c:369: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_timer'
;------------------------------------------------------------
;_t                        Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:373: void stop_timer(enum TIMER _t){
;	-----------------------------------------
;	 function stop_timer
;	-----------------------------------------
_stop_timer:
;	../Firmware/src/utils.c:374: if(_t == TIMER0){
	mov	a,dpl
	mov	r7,a
	jnz	00104$
;	../Firmware/src/utils.c:375: TCON &=0xEF;
	anl	_TCON,#0xef
	sjmp	00105$
00104$:
;	../Firmware/src/utils.c:377: else if(_t == TIMER1){
	cjne	r7,#0x01,00105$
;	../Firmware/src/utils.c:378: TCON &=0xBF;
	anl	_TCON,#0xbf
00105$:
;	../Firmware/src/utils.c:380: if(_t == TIMER2){
	cjne	r7,#0x02,00108$
;	../Firmware/src/utils.c:381: T2CON &=0xFB;
	anl	_T2CON,#0xfb
00108$:
;	../Firmware/src/utils.c:383: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_begin'
;------------------------------------------------------------
;baudrate                  Allocated with name '_uart_begin_PARM_2'
;type                      Allocated to registers r7 
;freq                      Allocated to registers r6 
;mult                      Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	../Firmware/src/utils.c:392: void uart_begin(enum UART_TYPE type, long baudrate){
;	-----------------------------------------
;	 function uart_begin
;	-----------------------------------------
_uart_begin:
	mov	r7, dpl
;	../Firmware/src/utils.c:394: UINT8 freq = get_system_freq();
	push	ar7
	lcall	_get_system_freq
	mov	r6, dpl
	pop	ar7
;	../Firmware/src/utils.c:395: long mult = 0l; 
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	../Firmware/src/utils.c:396: switch(freq){
	mov	a,r6
	add	a,#0xff - 0x06
	jc	00108$
	mov	a,r6
	add	a,r6
;	../Firmware/src/utils.c:397: case 0: mult = 187500;
	mov	dptr,#00126$
	jmp	@a+dptr
00126$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
	sjmp	00107$
00101$:
	mov	r2,#0x6c
	mov	r3,#0xdc
	mov	r4,#0x02
	mov	r5,#0x00
;	../Firmware/src/utils.c:398: break;
;	../Firmware/src/utils.c:399: case 1: mult = 750000;
	sjmp	00108$
00102$:
	mov	r2,#0xb0
	mov	r3,#0x71
	mov	r4,#0x0b
	mov	r5,#0x00
;	../Firmware/src/utils.c:400: break;
;	../Firmware/src/utils.c:401: case 2: mult = 3000000;
	sjmp	00108$
00103$:
	mov	r2,#0xc0
	mov	r3,#0xc6
	mov	r4,#0x2d
	mov	r5,#0x00
;	../Firmware/src/utils.c:402: break;
;	../Firmware/src/utils.c:403: case 3: mult = 6000000;
	sjmp	00108$
00104$:
	mov	r2,#0x80
	mov	r3,#0x8d
	mov	r4,#0x5b
	mov	r5,#0x00
;	../Firmware/src/utils.c:404: break;
;	../Firmware/src/utils.c:405: case 4: mult = 12000000;
	sjmp	00108$
00105$:
	mov	r2,#0x00
	mov	r3,#0x1b
	mov	r4,#0xb7
	mov	r5,#0x00
;	../Firmware/src/utils.c:406: break;
;	../Firmware/src/utils.c:407: case 5: mult = 16000000;
	sjmp	00108$
00106$:
	mov	r2,#0x00
	mov	r3,#0x24
	mov	r4,#0xf4
	mov	r5,#0x00
;	../Firmware/src/utils.c:408: break;
;	../Firmware/src/utils.c:409: case 6: mult = 24000000;
	sjmp	00108$
00107$:
	mov	r2,#0x00
	mov	r3,#0x36
	mov	r4,#0x6e
	mov	r5,#0x01
;	../Firmware/src/utils.c:411: }
00108$:
;	../Firmware/src/utils.c:412: if(type == UART0){
	mov	a,r7
	jnz	00111$
;	../Firmware/src/utils.c:413: T2CON &= 0xCF;
	anl	_T2CON,#0xcf
;	../Firmware/src/utils.c:414: T2MOD |= 0xA0;
	orl	_T2MOD,#0xa0
;	../Firmware/src/utils.c:415: PCON |= 0x80;
	orl	_PCON,#0x80
;	../Firmware/src/utils.c:416: TH1 = 256 - mult / 16 / baudrate;
	mov	__divslong_PARM_2,#0x10
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl, r2
	mov	dph, r3
	mov	b, r4
	mov	a, r5
	lcall	__divslong
	mov	__divslong_PARM_2,_uart_begin_PARM_2
	mov	(__divslong_PARM_2 + 1),(_uart_begin_PARM_2 + 1)
	mov	(__divslong_PARM_2 + 2),(_uart_begin_PARM_2 + 2)
	mov	(__divslong_PARM_2 + 3),(_uart_begin_PARM_2 + 3)
	lcall	__divslong
	mov	r4, dpl
	clr	c
	clr	a
	subb	a,r4
	mov	_TH1,a
;	../Firmware/src/utils.c:417: timer_interrupt(TIMER1,1);
	mov	_timer_interrupt_PARM_2,#0x01
	mov	dpl, #0x01
	lcall	_timer_interrupt
;	../Firmware/src/utils.c:418: set_timer_mode(TIMER1,TMR_MODE_2);
	mov	_set_timer_mode_PARM_2,#0x02
	mov	dpl, #0x01
	lcall	_set_timer_mode
;	../Firmware/src/utils.c:419: TMOD &= 0xB7;
	anl	_TMOD,#0xb7
;	../Firmware/src/utils.c:420: start_timer(TIMER1);
	mov	dpl, #0x01
	lcall	_start_timer
;	../Firmware/src/utils.c:421: SCON |= 0x50;
	orl	_SCON,#0x50
;	../Firmware/src/utils.c:422: IE &= 0xBF;
	anl	_IE,#0xbf
;	../Firmware/src/utils.c:423: IE |= 0x90;
	orl	_IE,#0x90
00111$:
;	../Firmware/src/utils.c:429: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0_write'
;------------------------------------------------------------
;data                      Allocated to registers 
;------------------------------------------------------------
;	../Firmware/src/utils.c:434: void uart0_write(UINT8 data){
;	-----------------------------------------
;	 function uart0_write
;	-----------------------------------------
_uart0_write:
	mov	_SBUF,dpl
;	../Firmware/src/utils.c:436: while (((SCON >> 1) & 0x01) == 0) {
00101$:
	mov	a,_SCON
	rr	a
	anl	a,#0x01
	jz	00101$
;	../Firmware/src/utils.c:439: SCON &= 0xFD; 
	anl	_SCON,#0xfd
;	../Firmware/src/utils.c:440: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0_print'
;------------------------------------------------------------
;data                      Allocated to registers r5 r6 r7 
;index                     Allocated to registers r3 r4 
;------------------------------------------------------------
;	../Firmware/src/utils.c:444: void uart0_print(char * data){
;	-----------------------------------------
;	 function uart0_print
;	-----------------------------------------
_uart0_print:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/utils.c:446: while(data[index] != '\0'){
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	a,r3
	add	a, r5
	mov	r0,a
	mov	a,r4
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jz	00104$
;	../Firmware/src/utils.c:447: uart0_write(data[index++]);
	mov	a,r3
	add	a, r5
	mov	r0,a
	mov	a,r4
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	inc	r3
	cjne	r3,#0x00,00120$
	inc	r4
00120$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_uart0_write
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	../Firmware/src/utils.c:449: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0_println'
;------------------------------------------------------------
;data                      Allocated to registers r5 r6 r7 
;t                         Allocated with name '_uart0_println_t_10000_199'
;------------------------------------------------------------
;	../Firmware/src/utils.c:453: void uart0_println(char * data){
;	-----------------------------------------
;	 function uart0_println
;	-----------------------------------------
_uart0_println:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/utils.c:454: __xdata unsigned char t[256] = {0};
	mov	dptr,#_uart0_println_t_10000_199
	clr	a
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0010)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0014)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0018)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x001c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0020)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0024)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0028)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x002c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0030)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0034)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0038)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x003c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0040)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0044)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0048)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x004c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x004f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0050)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0051)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0052)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0053)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0054)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0055)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0056)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0057)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0058)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0059)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x005a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x005b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x005c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x005d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x005e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x005f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0060)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0061)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0062)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0063)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0064)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0065)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0066)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0067)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0068)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0069)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x006a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x006b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x006c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x006d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x006e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x006f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0070)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0071)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0072)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0073)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0074)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0075)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0076)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0077)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0078)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0079)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x007a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x007b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x007c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x007d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x007e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x007f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0080)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0082)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0084)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0086)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0088)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x008a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x008c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x008e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0090)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0092)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0094)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0096)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0098)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x009a)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x009c)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x009e)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a0)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a2)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a4)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a6)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a8)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00aa)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ac)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ae)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b0)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b2)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b4)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b6)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b8)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ba)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00bc)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c0)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c4)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c6)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c8)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00cc)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ce)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d0)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d2)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d4)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d6)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d8)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00da)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00dc)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00de)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e0)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e2)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e4)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e6)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e8)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ea)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ec)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ee)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f0)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f2)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f4)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f6)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f8)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fa)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fc)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00fe)
	movx	@dptr,a
	mov	dptr,#(_uart0_println_t_10000_199 + 0x00ff)
	movx	@dptr,a
;	../Firmware/src/utils.c:455: uart0_print(data);
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	lcall	_uart0_print
;	../Firmware/src/utils.c:456: uart0_write('\r');
	mov	dpl, #0x0d
	lcall	_uart0_write
;	../Firmware/src/utils.c:457: uart0_write('\n');
	mov	dpl, #0x0a
;	../Firmware/src/utils.c:459: }
	ljmp	_uart0_write
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0_receive_byte'
;------------------------------------------------------------
;timeout_ms                Allocated with name '_uart0_receive_byte_PARM_2'
;received_byte             Allocated to registers r5 r6 r7 
;ret                       Allocated to registers r4 
;_t                        Allocated to registers r2 r3 
;------------------------------------------------------------
;	../Firmware/src/utils.c:465: UINT8 uart0_receive_byte(UINT8 * received_byte, UINT8 timeout_ms){
;	-----------------------------------------
;	 function uart0_receive_byte
;	-----------------------------------------
_uart0_receive_byte:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/utils.c:466: UINT8 ret = 1;
	mov	r4,#0x01
;	../Firmware/src/utils.c:467: for(int _t  = 0; _t < timeout_ms * 1000; _t++){
	mov	r2,#0x00
	mov	r3,#0x00
00105$:
	mov	__mulint_PARM_2,_uart0_receive_byte_PARM_2
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x03e8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r0, dpl
	mov	r1, dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	../Firmware/src/utils.c:468: if ((SCON & 0x01)  == 1){
	mov	r1,_SCON
	anl	ar1,#0x01
	cjne	r1,#0x01,00102$
;	../Firmware/src/utils.c:469: *received_byte = SBUF;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_SBUF
	lcall	__gptrput
;	../Firmware/src/utils.c:470: ret = 0;
	mov	r4,#0x00
;	../Firmware/src/utils.c:471: SCON &= 0xFE;
	anl	_SCON,#0xfe
;	../Firmware/src/utils.c:472: break; 
	sjmp	00103$
00102$:
;	../Firmware/src/utils.c:474: delay(1);
	mov	dptr,#0x0001
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:467: for(int _t  = 0; _t < timeout_ms * 1000; _t++){
	inc	r2
	cjne	r2,#0x00,00130$
	inc	r3
00130$:
	ljmp	00105$
00103$:
;	../Firmware/src/utils.c:477: return ret;  
	mov	dpl, r4
;	../Firmware/src/utils.c:478: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0_read_bytes'
;------------------------------------------------------------
;max_len                   Allocated with name '_uart0_read_bytes_PARM_2'
;timeout_ms                Allocated with name '_uart0_read_bytes_PARM_3'
;received_bytes            Allocated with name '_uart0_read_bytes_received_bytes_10000_205'
;ret                       Allocated to registers r1 r2 
;current_recv              Allocated with name '_uart0_read_bytes_current_recv_10000_206'
;------------------------------------------------------------
;	../Firmware/src/utils.c:485: int uart0_read_bytes(UINT8 * received_bytes,int max_len, UINT8 timeout_ms){
;	-----------------------------------------
;	 function uart0_read_bytes
;	-----------------------------------------
_uart0_read_bytes:
	mov	_uart0_read_bytes_received_bytes_10000_205,dpl
	mov	(_uart0_read_bytes_received_bytes_10000_205 + 1),dph
	mov	(_uart0_read_bytes_received_bytes_10000_205 + 2),b
;	../Firmware/src/utils.c:488: while (uart0_receive_byte(&current_recv, timeout_ms) == 0){
	mov	a,_uart0_read_bytes_PARM_2
	add	a,#0xff
	mov	r3,a
	mov	a,(_uart0_read_bytes_PARM_2 + 1)
	addc	a,#0xff
	mov	r4,a
	mov	r1,#0x00
	mov	r2,#0x00
00103$:
	mov	_uart0_receive_byte_PARM_2,_uart0_read_bytes_PARM_3
	mov	dptr,#_uart0_read_bytes_current_recv_10000_206
	mov	b, #0x40
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_uart0_receive_byte
	mov	a, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	jnz	00105$
;	../Firmware/src/utils.c:489: if(ret == max_len - 1){
	mov	a,r1
	cjne	a,ar3,00128$
	mov	a,r2
	cjne	a,ar4,00128$
	sjmp	00105$
00128$:
;	../Firmware/src/utils.c:492: received_bytes[ret++] = current_recv;
	mov	a,r1
	add	a, _uart0_read_bytes_received_bytes_10000_205
	mov	r0,a
	mov	a,r2
	addc	a, (_uart0_read_bytes_received_bytes_10000_205 + 1)
	mov	r6,a
	mov	r7,(_uart0_read_bytes_received_bytes_10000_205 + 2)
	inc	r1
	cjne	r1,#0x00,00129$
	inc	r2
00129$:
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	mov	a,_uart0_read_bytes_current_recv_10000_206
	lcall	__gptrput
	sjmp	00103$
00105$:
;	../Firmware/src/utils.c:495: return ret;  
	mov	dpl, r1
	mov	dph, r2
;	../Firmware/src/utils.c:496: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart0_read_string_until'
;------------------------------------------------------------
;max_len                   Allocated with name '_uart0_read_string_until_PARM_2'
;timeout_ms                Allocated with name '_uart0_read_string_until_PARM_3'
;condition                 Allocated with name '_uart0_read_string_until_PARM_4'
;received_bytes            Allocated to registers r5 r6 r7 
;ret                       Allocated to registers r3 r4 
;current_recv              Allocated with name '_uart0_read_string_until_current_recv_10000_210'
;------------------------------------------------------------
;	../Firmware/src/utils.c:504: int uart0_read_string_until(UINT8 * received_bytes,int max_len, UINT8 timeout_ms, UINT8 condition){
;	-----------------------------------------
;	 function uart0_read_string_until
;	-----------------------------------------
_uart0_read_string_until:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/utils.c:507: do{
	mov	r3,#0x00
	mov	r4,#0x00
00105$:
;	../Firmware/src/utils.c:508: if(uart0_receive_byte(&current_recv, timeout_ms) != 0)
	mov	_uart0_receive_byte_PARM_2,_uart0_read_string_until_PARM_3
	mov	dptr,#_uart0_read_string_until_current_recv_10000_210
	mov	b, #0x40
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_uart0_receive_byte
	mov	a, dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00107$
;	../Firmware/src/utils.c:511: if(current_recv == condition){
	mov	a,_uart0_read_string_until_PARM_4
	cjne	a,_uart0_read_string_until_current_recv_10000_210,00130$
	sjmp	00107$
00130$:
;	../Firmware/src/utils.c:514: received_bytes[ret++] = current_recv;
	mov	a,r3
	add	a, r5
	mov	r0,a
	mov	a,r4
	addc	a, r6
	mov	r1,a
	mov	ar2,r7
	inc	r3
	cjne	r3,#0x00,00131$
	inc	r4
00131$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,_uart0_read_string_until_current_recv_10000_210
	lcall	__gptrput
;	../Firmware/src/utils.c:515: }while (ret < max_len);
	clr	c
	mov	a,r3
	subb	a,_uart0_read_string_until_PARM_2
	mov	a,r4
	xrl	a,#0x80
	mov	b,(_uart0_read_string_until_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00105$
00107$:
;	../Firmware/src/utils.c:517: received_bytes[ret] = '\0';
	mov	a,r3
	add	a, r5
	mov	r5,a
	mov	a,r4
	addc	a, r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	../Firmware/src/utils.c:518: return ret;
	mov	dpl, r3
	mov	dph, r4
;	../Firmware/src/utils.c:519: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'search_str'
;------------------------------------------------------------
;str                       Allocated with name '_search_str_PARM_2'
;base                      Allocated with name '_search_str_base_10000_213'
;base_len                  Allocated with name '_search_str_base_len_10001_215'
;str_len                   Allocated with name '_search_str_str_len_10001_215'
;i                         Allocated with name '_search_str_i_20001_216'
;j                         Allocated to registers r5 r6 
;sloc0                     Allocated with name '_search_str_sloc0_1_0'
;------------------------------------------------------------
;	../Firmware/src/utils.c:526: int search_str(char *base, char *str) {
;	-----------------------------------------
;	 function search_str
;	-----------------------------------------
_search_str:
	mov	_search_str_base_10000_213,dpl
	mov	(_search_str_base_10000_213 + 1),dph
	mov	(_search_str_base_10000_213 + 2),b
;	../Firmware/src/utils.c:527: if (base == NULL || str == NULL) return -1;
	mov	a,_search_str_base_10000_213
	orl	a,(_search_str_base_10000_213 + 1)
	jz	00101$
	mov	a,_search_str_PARM_2
	orl	a,(_search_str_PARM_2 + 1)
	jnz	00102$
00101$:
	mov	dptr,#0xffff
	ret
00102$:
;	../Firmware/src/utils.c:529: int base_len = strlen(base);
	mov	dpl, _search_str_base_10000_213
	mov	dph, (_search_str_base_10000_213 + 1)
	mov	b, (_search_str_base_10000_213 + 2)
	lcall	_strlen
	mov	_search_str_base_len_10001_215,dpl
	mov	(_search_str_base_len_10001_215 + 1),dph
;	../Firmware/src/utils.c:530: int str_len = strlen(str);
	mov	dpl, _search_str_PARM_2
	mov	dph, (_search_str_PARM_2 + 1)
	mov	b, (_search_str_PARM_2 + 2)
	lcall	_strlen
	mov	_search_str_str_len_10001_215,dpl
	mov	(_search_str_str_len_10001_215 + 1),dph
;	../Firmware/src/utils.c:532: if (str_len == 0) return -1;
	mov	a,_search_str_str_len_10001_215
	orl	a,(_search_str_str_len_10001_215 + 1)
	jnz	00105$
	mov	dptr,#0xffff
	ret
00105$:
;	../Firmware/src/utils.c:534: for (int i = 0; i <= base_len - str_len; i++) {
	clr	a
	mov	r0,a
	mov	r4,a
	mov	a,_search_str_base_len_10001_215
	clr	c
	subb	a,_search_str_str_len_10001_215
	mov	_search_str_sloc0_1_0,a
	mov	a,(_search_str_base_len_10001_215 + 1)
	subb	a,(_search_str_str_len_10001_215 + 1)
	mov	(_search_str_sloc0_1_0 + 1),a
	clr	a
	mov	_search_str_i_20001_216,a
	mov	(_search_str_i_20001_216 + 1),a
00114$:
	clr	c
	mov	a,_search_str_sloc0_1_0
	subb	a,_search_str_i_20001_216
	mov	a,(_search_str_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,(_search_str_i_20001_216 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00112$
;	../Firmware/src/utils.c:536: while (j < str_len && base[i + j] == str[j]) {
	mov	r5,#0x00
	mov	r6,#0x00
00107$:
	clr	c
	mov	a,r5
	subb	a,_search_str_str_len_10001_215
	mov	a,r6
	xrl	a,#0x80
	mov	b,(_search_str_str_len_10001_215 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
	mov	a,r5
	add	a, _search_str_i_20001_216
	mov	r1,a
	mov	a,r6
	addc	a, (_search_str_i_20001_216 + 1)
	mov	r2,a
	mov	a,r1
	add	a, _search_str_base_10000_213
	mov	r1,a
	mov	a,r2
	addc	a, (_search_str_base_10000_213 + 1)
	mov	r2,a
	mov	r7,(_search_str_base_10000_213 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	mov	a,r5
	add	a, _search_str_PARM_2
	mov	r2,a
	mov	a,r6
	addc	a, (_search_str_PARM_2 + 1)
	mov	r3,a
	mov	r7,(_search_str_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	a,r1
	cjne	a,ar2,00109$
;	../Firmware/src/utils.c:537: j++;
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
	sjmp	00107$
00109$:
;	../Firmware/src/utils.c:539: if (j == str_len) return i;
	mov	a,r5
	cjne	a,_search_str_str_len_10001_215,00115$
	mov	a,r6
	cjne	a,(_search_str_str_len_10001_215 + 1),00115$
	mov	dpl, r0
	mov	dph, r4
	ret
00115$:
;	../Firmware/src/utils.c:534: for (int i = 0; i <= base_len - str_len; i++) {
	inc	_search_str_i_20001_216
	clr	a
	cjne	a,_search_str_i_20001_216,00177$
	inc	(_search_str_i_20001_216 + 1)
00177$:
	mov	r0,_search_str_i_20001_216
	mov	r4,(_search_str_i_20001_216 + 1)
	sjmp	00114$
00112$:
;	../Firmware/src/utils.c:542: return -1;
	mov	dptr,#0xffff
;	../Firmware/src/utils.c:543: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'convert_to_percentage'
;------------------------------------------------------------
;_number                   Allocated to registers r7 
;------------------------------------------------------------
;	../Firmware/src/utils.c:602: UINT8 convert_to_percentage(UINT8 _number){
;	-----------------------------------------
;	 function convert_to_percentage
;	-----------------------------------------
_convert_to_percentage:
	mov	r7, dpl
;	../Firmware/src/utils.c:603: return (_number * 100) / 255;
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dptr,#0x0064
	lcall	__mulint
	mov	__divsint_PARM_2,#0xff
	mov	(__divsint_PARM_2 + 1),#0x00
;	../Firmware/src/utils.c:604: }
	ljmp	__divsint
;------------------------------------------------------------
;Allocation info for local variables in function 'convert'
;------------------------------------------------------------
;number                    Allocated with name '_convert_PARM_2'
;num                       Allocated with name '_convert_num_10000_221'
;i                         Allocated with name '_convert_i_10001_223'
;temp                      Allocated with name '_convert_temp_10001_223'
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	../Firmware/src/utils.c:605: void convert(char *num, UINT8 number) {
;	-----------------------------------------
;	 function convert
;	-----------------------------------------
_convert:
	mov	_convert_num_10000_221,dpl
	mov	(_convert_num_10000_221 + 1),dph
	mov	(_convert_num_10000_221 + 2),b
;	../Firmware/src/utils.c:606: if (num == NULL) return;
	mov	a,_convert_num_10000_221
	orl	a,(_convert_num_10000_221 + 1)
	jnz	00102$
	ret
00102$:
;	../Firmware/src/utils.c:609: char temp[4] = {0};  
;	../Firmware/src/utils.c:610: if (number == 0) {
	clr	a
	mov	_convert_temp_10001_223,a
	mov	(_convert_temp_10001_223 + 0x0001),a
	mov	(_convert_temp_10001_223 + 0x0002),a
	mov	(_convert_temp_10001_223 + 0x0003),a
	mov	a,_convert_PARM_2
	jnz	00117$
;	../Firmware/src/utils.c:611: num[i++] = '0';
	mov	dpl,_convert_num_10000_221
	mov	dph,(_convert_num_10000_221 + 1)
	mov	b,(_convert_num_10000_221 + 2)
	mov	a,#0x30
	lcall	__gptrput
;	../Firmware/src/utils.c:612: num[i] = '\0';
	mov	a,#0x01
	add	a, _convert_num_10000_221
	mov	r2,a
	clr	a
	addc	a, (_convert_num_10000_221 + 1)
	mov	r3,a
	mov	r4,(_convert_num_10000_221 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	../Firmware/src/utils.c:613: return;
	ljmp	__gptrput
;	../Firmware/src/utils.c:616: while (number > 0) {
00117$:
	mov	_convert_i_10001_223,#0x00
00105$:
	mov	a,_convert_PARM_2
	jz	00120$
;	../Firmware/src/utils.c:617: temp[i++] = (number % 10) + '0';
	mov	a,_convert_i_10001_223
	add	a, #_convert_temp_10001_223
	mov	r1,a
	inc	_convert_i_10001_223
	mov	r2,_convert_PARM_2
	mov	r3,#0x00
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),r3
	mov	dpl, r2
	mov	dph, r3
	push	ar3
	push	ar2
	push	ar1
	lcall	__modsint
	mov	r4, dpl
	pop	ar1
	pop	ar2
	pop	ar3
	mov	a,#0x30
	add	a, r4
	mov	@r1,a
;	../Firmware/src/utils.c:618: number /= 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl, r2
	mov	dph, r3
	lcall	__divsint
	mov	r6, dpl
	mov	_convert_PARM_2,r6
	sjmp	00105$
00120$:
	mov	r7,_convert_i_10001_223
;	../Firmware/src/utils.c:621: for (UINT8 j = 0; j < i; j++) {
	mov	r6,#0x00
00110$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00108$
;	../Firmware/src/utils.c:622: num[j] = temp[i - j - 1];
	mov	a,r6
	add	a, _convert_num_10000_221
	mov	r3,a
	clr	a
	addc	a, (_convert_num_10000_221 + 1)
	mov	r4,a
	mov	r5,(_convert_num_10000_221 + 2)
	mov	a,r7
	clr	c
	subb	a,r6
	dec	a
	add	a, #_convert_temp_10001_223
	mov	r1,a
	mov	ar2,@r1
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	../Firmware/src/utils.c:621: for (UINT8 j = 0; j < i; j++) {
	inc	r6
	sjmp	00110$
00108$:
;	../Firmware/src/utils.c:624: num[i] = '\0';
	mov	a,r7
	add	a, _convert_num_10000_221
	mov	r7,a
	clr	a
	addc	a, (_convert_num_10000_221 + 1)
	mov	r6,a
	mov	r5,(_convert_num_10000_221 + 2)
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	clr	a
;	../Firmware/src/utils.c:625: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'getURL'
;------------------------------------------------------------
;latitude                  Allocated with name '_getURL_PARM_2'
;longitude                 Allocated with name '_getURL_PARM_3'
;level                     Allocated with name '_getURL_PARM_4'
;url                       Allocated to registers r5 r6 r7 
;id                        Allocated with name '_getURL_id_10000_229'
;------------------------------------------------------------
;	../Firmware/src/utils.c:627: UINT8 getURL(char * url, char * latitude, char * longitude, char * level){
;	-----------------------------------------
;	 function getURL
;	-----------------------------------------
_getURL:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/utils.c:628: __xdata unsigned char id[15] = {0};
	mov	dptr,#_getURL_id_10000_229
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_getURL_id_10000_229 + 0x000e)
	movx	@dptr,a
;	../Firmware/src/utils.c:629: DeviceSerialNumber(id);
	mov	dptr,#_getURL_id_10000_229
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_DeviceSerialNumber
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:630: strcpy(url,"GET /api/v1/device_log?device_id=");
	mov	_strcpy_PARM_2,#___str_0
	mov	(_strcpy_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_strcpy_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:631: strcat(url,id);
	mov	_strcat_PARM_2,#_getURL_id_10000_229
	mov	(_strcat_PARM_2 + 1),#(_getURL_id_10000_229 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x00
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:632: strcat(url,"&latitude=");
	mov	_strcat_PARM_2,#___str_1
	mov	(_strcat_PARM_2 + 1),#(___str_1 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:633: strcat(url,latitude);
	mov	_strcat_PARM_2,_getURL_PARM_2
	mov	(_strcat_PARM_2 + 1),(_getURL_PARM_2 + 1)
	mov	(_strcat_PARM_2 + 2),(_getURL_PARM_2 + 2)
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:634: strcat(url,"&longitude=");
	mov	_strcat_PARM_2,#___str_2
	mov	(_strcat_PARM_2 + 1),#(___str_2 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:635: strcat(url,longitude);
	mov	_strcat_PARM_2,_getURL_PARM_3
	mov	(_strcat_PARM_2 + 1),(_getURL_PARM_3 + 1)
	mov	(_strcat_PARM_2 + 2),(_getURL_PARM_3 + 2)
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:636: strcat(url,"&level=");
	mov	_strcat_PARM_2,#___str_3
	mov	(_strcat_PARM_2 + 1),#(___str_3 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:637: strcat(url,level);
	mov	_strcat_PARM_2,_getURL_PARM_4
	mov	(_strcat_PARM_2 + 1),(_getURL_PARM_4 + 1)
	mov	(_strcat_PARM_2 + 2),(_getURL_PARM_4 + 2)
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:638: strcat(url,".00 HTTP/1.1\n");
	mov	_strcat_PARM_2,#___str_4
	mov	(_strcat_PARM_2 + 1),#(___str_4 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:639: strcat(url,"Host: gastrackafrica.com.ng\nConnection: close");
	mov	_strcat_PARM_2,#___str_5
	mov	(_strcat_PARM_2 + 1),#(___str_5 >> 8)
	mov	(_strcat_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strcat
	pop	ar5
	pop	ar6
	pop	ar7
;	../Firmware/src/utils.c:641: return (UINT8)strlen(url);
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
;	../Firmware/src/utils.c:642: }
	ljmp	_strlen
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "GET /api/v1/device_log?device_id="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "&latitude="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "&longitude="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "&level="
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii ".00 HTTP/1.1"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Host: gastrackafrica.com.ng"
	.db 0x0a
	.ascii "Connection: close"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

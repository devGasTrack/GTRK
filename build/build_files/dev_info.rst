                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (Mac OS X x86_64)
                                      4 ;--------------------------------------------------------
                                      5 	.module dev_info
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _strcpy
                                     12 	.globl _DeviceSerialNumber
                                     13 	.globl _DeviceType
                                     14 	.globl _DeviceManufactureDate
                                     15 ;--------------------------------------------------------
                                     16 ; special function registers
                                     17 ;--------------------------------------------------------
                                     18 	.area RSEG    (ABS,DATA)
      000000                         19 	.org 0x0000
                                     20 ;--------------------------------------------------------
                                     21 ; special function bits
                                     22 ;--------------------------------------------------------
                                     23 	.area RSEG    (ABS,DATA)
      000000                         24 	.org 0x0000
                                     25 ;--------------------------------------------------------
                                     26 ; overlayable register banks
                                     27 ;--------------------------------------------------------
                                     28 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         29 	.ds 8
                                     30 ;--------------------------------------------------------
                                     31 ; internal ram data
                                     32 ;--------------------------------------------------------
                                     33 	.area DSEG    (DATA)
                                     34 ;--------------------------------------------------------
                                     35 ; overlayable items in internal ram
                                     36 ;--------------------------------------------------------
                                     37 ;--------------------------------------------------------
                                     38 ; indirectly addressable internal ram data
                                     39 ;--------------------------------------------------------
                                     40 	.area ISEG    (DATA)
                                     41 ;--------------------------------------------------------
                                     42 ; absolute internal ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area IABS    (ABS,DATA)
                                     45 	.area IABS    (ABS,DATA)
                                     46 ;--------------------------------------------------------
                                     47 ; bit data
                                     48 ;--------------------------------------------------------
                                     49 	.area BSEG    (BIT)
                                     50 ;--------------------------------------------------------
                                     51 ; paged external ram data
                                     52 ;--------------------------------------------------------
                                     53 	.area PSEG    (PAG,XDATA)
                                     54 ;--------------------------------------------------------
                                     55 ; uninitialized external ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area XSEG    (XDATA)
                                     58 ;--------------------------------------------------------
                                     59 ; absolute external ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area XABS    (ABS,XDATA)
                                     62 ;--------------------------------------------------------
                                     63 ; initialized external ram data
                                     64 ;--------------------------------------------------------
                                     65 	.area XISEG   (XDATA)
                                     66 	.area HOME    (CODE)
                                     67 	.area GSINIT0 (CODE)
                                     68 	.area GSINIT1 (CODE)
                                     69 	.area GSINIT2 (CODE)
                                     70 	.area GSINIT3 (CODE)
                                     71 	.area GSINIT4 (CODE)
                                     72 	.area GSINIT5 (CODE)
                                     73 	.area GSINIT  (CODE)
                                     74 	.area GSFINAL (CODE)
                                     75 	.area CSEG    (CODE)
                                     76 ;--------------------------------------------------------
                                     77 ; global & static initialisations
                                     78 ;--------------------------------------------------------
                                     79 	.area HOME    (CODE)
                                     80 	.area GSINIT  (CODE)
                                     81 	.area GSFINAL (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 ;--------------------------------------------------------
                                     84 ; Home
                                     85 ;--------------------------------------------------------
                                     86 	.area HOME    (CODE)
                                     87 	.area HOME    (CODE)
                                     88 ;--------------------------------------------------------
                                     89 ; code
                                     90 ;--------------------------------------------------------
                                     91 	.area CSEG    (CODE)
                                     92 ;------------------------------------------------------------
                                     93 ;Allocation info for local variables in function 'DeviceSerialNumber'
                                     94 ;------------------------------------------------------------
                                     95 ;sn                        Allocated to registers r5 r6 r7 
                                     96 ;------------------------------------------------------------
                                     97 ;	../Firmware/src/dev_info.c:4: void DeviceSerialNumber(char * sn){
                                     98 ;	-----------------------------------------
                                     99 ;	 function DeviceSerialNumber
                                    100 ;	-----------------------------------------
      0011DB                        101 _DeviceSerialNumber:
                           000007   102 	ar7 = 0x07
                           000006   103 	ar6 = 0x06
                           000005   104 	ar5 = 0x05
                           000004   105 	ar4 = 0x04
                           000003   106 	ar3 = 0x03
                           000002   107 	ar2 = 0x02
                           000001   108 	ar1 = 0x01
                           000000   109 	ar0 = 0x00
      0011DB AD 82            [24]  110 	mov	r5, dpl
      0011DD AE 83            [24]  111 	mov	r6, dph
      0011DF AF F0            [24]  112 	mov	r7, b
                                    113 ;	../Firmware/src/dev_info.c:5: strcpy(sn, SERIAL_NUMBER);
      0011E1 75 41 B4         [24]  114 	mov	_strcpy_PARM_2,#___str_0
      0011E4 75 42 19         [24]  115 	mov	(_strcpy_PARM_2 + 1),#(___str_0 >> 8)
      0011E7 75 43 80         [24]  116 	mov	(_strcpy_PARM_2 + 2),#0x80
      0011EA 8D 82            [24]  117 	mov	dpl, r5
      0011EC 8E 83            [24]  118 	mov	dph, r6
      0011EE 8F F0            [24]  119 	mov	b, r7
                                    120 ;	../Firmware/src/dev_info.c:6: }
      0011F0 02 16 6B         [24]  121 	ljmp	_strcpy
                                    122 ;------------------------------------------------------------
                                    123 ;Allocation info for local variables in function 'DeviceType'
                                    124 ;------------------------------------------------------------
                                    125 ;type                      Allocated to registers r5 r6 r7 
                                    126 ;------------------------------------------------------------
                                    127 ;	../Firmware/src/dev_info.c:8: void DeviceType(char * type){
                                    128 ;	-----------------------------------------
                                    129 ;	 function DeviceType
                                    130 ;	-----------------------------------------
      0011F3                        131 _DeviceType:
      0011F3 AD 82            [24]  132 	mov	r5, dpl
      0011F5 AE 83            [24]  133 	mov	r6, dph
      0011F7 AF F0            [24]  134 	mov	r7, b
                                    135 ;	../Firmware/src/dev_info.c:9: strcpy(type, MODEL);
      0011F9 75 41 C9         [24]  136 	mov	_strcpy_PARM_2,#___str_1
      0011FC 75 42 19         [24]  137 	mov	(_strcpy_PARM_2 + 1),#(___str_1 >> 8)
      0011FF 75 43 80         [24]  138 	mov	(_strcpy_PARM_2 + 2),#0x80
      001202 8D 82            [24]  139 	mov	dpl, r5
      001204 8E 83            [24]  140 	mov	dph, r6
      001206 8F F0            [24]  141 	mov	b, r7
                                    142 ;	../Firmware/src/dev_info.c:10: }
      001208 02 16 6B         [24]  143 	ljmp	_strcpy
                                    144 ;------------------------------------------------------------
                                    145 ;Allocation info for local variables in function 'DeviceManufactureDate'
                                    146 ;------------------------------------------------------------
                                    147 ;date                      Allocated to registers r5 r6 r7 
                                    148 ;------------------------------------------------------------
                                    149 ;	../Firmware/src/dev_info.c:12: void DeviceManufactureDate(char * date){
                                    150 ;	-----------------------------------------
                                    151 ;	 function DeviceManufactureDate
                                    152 ;	-----------------------------------------
      00120B                        153 _DeviceManufactureDate:
      00120B AD 82            [24]  154 	mov	r5, dpl
      00120D AE 83            [24]  155 	mov	r6, dph
      00120F AF F0            [24]  156 	mov	r7, b
                                    157 ;	../Firmware/src/dev_info.c:13: strcpy(date, MANUFACTURE_DATE);
      001211 75 41 CC         [24]  158 	mov	_strcpy_PARM_2,#___str_2
      001214 75 42 19         [24]  159 	mov	(_strcpy_PARM_2 + 1),#(___str_2 >> 8)
      001217 75 43 80         [24]  160 	mov	(_strcpy_PARM_2 + 2),#0x80
      00121A 8D 82            [24]  161 	mov	dpl, r5
      00121C 8E 83            [24]  162 	mov	dph, r6
      00121E 8F F0            [24]  163 	mov	b, r7
                                    164 ;	../Firmware/src/dev_info.c:14: }
      001220 02 16 6B         [24]  165 	ljmp	_strcpy
                                    166 	.area CSEG    (CODE)
                                    167 	.area CONST   (CODE)
                                    168 	.area CONST   (CODE)
      0019B4                        169 ___str_0:
      0019B4 41 30 30 30 30 30 30   170 	.ascii "A0000000000000000009"
             30 30 30 30 30 30 30
             30 30 30 30 30 39
      0019C8 00                     171 	.db 0x00
                                    172 	.area CSEG    (CODE)
                                    173 	.area CONST   (CODE)
      0019C9                        174 ___str_1:
      0019C9 41 30                  175 	.ascii "A0"
      0019CB 00                     176 	.db 0x00
                                    177 	.area CSEG    (CODE)
                                    178 	.area CONST   (CODE)
      0019CC                        179 ___str_2:
      0019CC 32 30 32 34 31 31 30   180 	.ascii "20241103_045932"
             33 5F 30 34 35 39 33
             32
      0019DB 00                     181 	.db 0x00
                                    182 	.area CSEG    (CODE)
                                    183 	.area XINIT   (CODE)
                                    184 	.area CABS    (ABS,CODE)

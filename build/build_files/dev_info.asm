;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Mac OS X x86_64)
;--------------------------------------------------------
	.module dev_info
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy
	.globl _DeviceSerialNumber
	.globl _DeviceType
	.globl _DeviceManufactureDate
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;Allocation info for local variables in function 'DeviceSerialNumber'
;------------------------------------------------------------
;sn                        Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../Firmware/src/dev_info.c:4: void DeviceSerialNumber(char * sn){
;	-----------------------------------------
;	 function DeviceSerialNumber
;	-----------------------------------------
_DeviceSerialNumber:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/dev_info.c:5: strcpy(sn, SERIAL_NUMBER);
	mov	_strcpy_PARM_2,#___str_0
	mov	(_strcpy_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_strcpy_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
;	../Firmware/src/dev_info.c:6: }
	ljmp	_strcpy
;------------------------------------------------------------
;Allocation info for local variables in function 'DeviceType'
;------------------------------------------------------------
;type                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../Firmware/src/dev_info.c:8: void DeviceType(char * type){
;	-----------------------------------------
;	 function DeviceType
;	-----------------------------------------
_DeviceType:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/dev_info.c:9: strcpy(type, MODEL);
	mov	_strcpy_PARM_2,#___str_1
	mov	(_strcpy_PARM_2 + 1),#(___str_1 >> 8)
	mov	(_strcpy_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
;	../Firmware/src/dev_info.c:10: }
	ljmp	_strcpy
;------------------------------------------------------------
;Allocation info for local variables in function 'DeviceManufactureDate'
;------------------------------------------------------------
;date                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../Firmware/src/dev_info.c:12: void DeviceManufactureDate(char * date){
;	-----------------------------------------
;	 function DeviceManufactureDate
;	-----------------------------------------
_DeviceManufactureDate:
	mov	r5, dpl
	mov	r6, dph
	mov	r7, b
;	../Firmware/src/dev_info.c:13: strcpy(date, MANUFACTURE_DATE);
	mov	_strcpy_PARM_2,#___str_2
	mov	(_strcpy_PARM_2 + 1),#(___str_2 >> 8)
	mov	(_strcpy_PARM_2 + 2),#0x80
	mov	dpl, r5
	mov	dph, r6
	mov	b, r7
;	../Firmware/src/dev_info.c:14: }
	ljmp	_strcpy
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "A0000000000000000009"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "A0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "20241103_045932"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)

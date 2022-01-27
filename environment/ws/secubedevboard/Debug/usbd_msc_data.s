	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"usbd_msc_data.c"
	.text
	.global	MSC_Page00_Inquiry_Data
	.section	.rodata.MSC_Page00_Inquiry_Data,"a"
	.align	2
	.type	MSC_Page00_Inquiry_Data, %object
	.size	MSC_Page00_Inquiry_Data, 7
MSC_Page00_Inquiry_Data:
	.ascii	"\000\000\000\003\000\200\203"
	.global	MSC_Mode_Sense6_data
	.section	.rodata.MSC_Mode_Sense6_data,"a"
	.align	2
	.type	MSC_Mode_Sense6_data, %object
	.size	MSC_Mode_Sense6_data, 8
MSC_Mode_Sense6_data:
	.space	8
	.global	MSC_Mode_Sense10_data
	.section	.rodata.MSC_Mode_Sense10_data,"a"
	.align	2
	.type	MSC_Mode_Sense10_data, %object
	.size	MSC_Mode_Sense10_data, 8
MSC_Mode_Sense10_data:
	.ascii	"\000\006\000\000\000\000\000\000"
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

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
	.file	"usb_device.c"
	.text
	.comm	hUsbDeviceHS,548,4
	.section	.text.MX_USB_DEVICE_Init,"ax",%progbits
	.align	1
	.global	MX_USB_DEVICE_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_USB_DEVICE_Init, %function
MX_USB_DEVICE_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r2, #1
	ldr	r1, .L2
	ldr	r0, .L2+4
	bl	USBD_Init
	ldr	r1, .L2+8
	ldr	r0, .L2+4
	bl	USBD_RegisterClass
	ldr	r1, .L2+12
	ldr	r0, .L2+4
	bl	USBD_MSC_RegisterStorage
	ldr	r0, .L2+4
	bl	USBD_Start
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	HS_Desc
	.word	hUsbDeviceHS
	.word	USBD_MSC
	.word	USBD_Storage_Interface_fops_HS
	.size	MX_USB_DEVICE_Init, .-MX_USB_DEVICE_Init
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

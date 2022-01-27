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
	.file	"usbd_desc.c"
	.text
	.global	HS_Desc
	.section	.data.HS_Desc,"aw"
	.align	2
	.type	HS_Desc, %object
	.size	HS_Desc, 28
HS_Desc:
	.word	USBD_HS_DeviceDescriptor
	.word	USBD_HS_LangIDStrDescriptor
	.word	USBD_HS_ManufacturerStrDescriptor
	.word	USBD_HS_ProductStrDescriptor
	.word	USBD_HS_SerialStrDescriptor
	.word	USBD_HS_ConfigStrDescriptor
	.word	USBD_HS_InterfaceStrDescriptor
	.global	USBD_HS_DeviceDesc
	.section	.data.USBD_HS_DeviceDesc,"aw"
	.align	2
	.type	USBD_HS_DeviceDesc, %object
	.size	USBD_HS_DeviceDesc, 18
USBD_HS_DeviceDesc:
	.ascii	"\022\001\000\002\000\000\000@\203\004*W\000\002\001"
	.ascii	"\002\003\001"
	.global	USBD_LangIDDesc
	.section	.data.USBD_LangIDDesc,"aw"
	.align	2
	.type	USBD_LangIDDesc, %object
	.size	USBD_LangIDDesc, 4
USBD_LangIDDesc:
	.ascii	"\004\003\011\004"
	.comm	USBD_StrDesc,512,4
	.section	.text.USBD_HS_DeviceDescriptor,"ax",%progbits
	.align	1
	.global	USBD_HS_DeviceDescriptor
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_HS_DeviceDescriptor, %function
USBD_HS_DeviceDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, [r7]
	movs	r2, #18
	strh	r2, [r3]	@ movhi
	ldr	r3, .L3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L4:
	.align	2
.L3:
	.word	USBD_HS_DeviceDesc
	.size	USBD_HS_DeviceDescriptor, .-USBD_HS_DeviceDescriptor
	.section	.text.USBD_HS_LangIDStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_HS_LangIDStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_HS_LangIDStrDescriptor, %function
USBD_HS_LangIDStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, [r7]
	movs	r2, #4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L7
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L8:
	.align	2
.L7:
	.word	USBD_LangIDDesc
	.size	USBD_HS_LangIDStrDescriptor, .-USBD_HS_LangIDStrDescriptor
	.section	.rodata
	.align	2
.LC0:
	.ascii	"SECube\000"
	.section	.text.USBD_HS_ProductStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_HS_ProductStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_HS_ProductStrDescriptor, %function
USBD_HS_ProductStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	ldr	r2, [r7]
	ldr	r1, .L13
	ldr	r0, .L13+4
	bl	USBD_GetString
	b	.L11
.L10:
	ldr	r2, [r7]
	ldr	r1, .L13
	ldr	r0, .L13+4
	bl	USBD_GetString
.L11:
	ldr	r3, .L13
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	USBD_StrDesc
	.word	.LC0
	.size	USBD_HS_ProductStrDescriptor, .-USBD_HS_ProductStrDescriptor
	.section	.text.USBD_HS_ManufacturerStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_HS_ManufacturerStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_HS_ManufacturerStrDescriptor, %function
USBD_HS_ManufacturerStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r2, [r7]
	ldr	r1, .L17
	ldr	r0, .L17+4
	bl	USBD_GetString
	ldr	r3, .L17
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	USBD_StrDesc
	.word	.LC0
	.size	USBD_HS_ManufacturerStrDescriptor, .-USBD_HS_ManufacturerStrDescriptor
	.section	.rodata
	.align	2
.LC1:
	.ascii	"00000000001A\000"
	.section	.text.USBD_HS_SerialStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_HS_SerialStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_HS_SerialStrDescriptor, %function
USBD_HS_SerialStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L20
	ldr	r2, [r7]
	ldr	r1, .L23
	ldr	r0, .L23+4
	bl	USBD_GetString
	b	.L21
.L20:
	ldr	r2, [r7]
	ldr	r1, .L23
	ldr	r0, .L23+4
	bl	USBD_GetString
.L21:
	ldr	r3, .L23
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	USBD_StrDesc
	.word	.LC1
	.size	USBD_HS_SerialStrDescriptor, .-USBD_HS_SerialStrDescriptor
	.section	.rodata
	.align	2
.LC2:
	.ascii	"MSC Config\000"
	.section	.text.USBD_HS_ConfigStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_HS_ConfigStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_HS_ConfigStrDescriptor, %function
USBD_HS_ConfigStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L26
	ldr	r2, [r7]
	ldr	r1, .L29
	ldr	r0, .L29+4
	bl	USBD_GetString
	b	.L27
.L26:
	ldr	r2, [r7]
	ldr	r1, .L29
	ldr	r0, .L29+4
	bl	USBD_GetString
.L27:
	ldr	r3, .L29
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	USBD_StrDesc
	.word	.LC2
	.size	USBD_HS_ConfigStrDescriptor, .-USBD_HS_ConfigStrDescriptor
	.section	.rodata
	.align	2
.LC3:
	.ascii	"MSC Interface\000"
	.section	.text.USBD_HS_InterfaceStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_HS_InterfaceStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_HS_InterfaceStrDescriptor, %function
USBD_HS_InterfaceStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L32
	ldr	r2, [r7]
	ldr	r1, .L35
	ldr	r0, .L35+4
	bl	USBD_GetString
	b	.L33
.L32:
	ldr	r2, [r7]
	ldr	r1, .L35
	ldr	r0, .L35+4
	bl	USBD_GetString
.L33:
	ldr	r3, .L35
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L36:
	.align	2
.L35:
	.word	USBD_StrDesc
	.word	.LC3
	.size	USBD_HS_InterfaceStrDescriptor, .-USBD_HS_InterfaceStrDescriptor
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

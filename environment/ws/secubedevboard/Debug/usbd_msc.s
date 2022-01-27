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
	.file	"usbd_msc.c"
	.text
	.global	USBD_MSC
	.section	.data.USBD_MSC,"aw"
	.align	2
	.type	USBD_MSC, %object
	.size	USBD_MSC, 56
USBD_MSC:
	.word	USBD_MSC_Init
	.word	USBD_MSC_DeInit
	.word	USBD_MSC_Setup
	.word	0
	.word	0
	.word	USBD_MSC_DataIn
	.word	USBD_MSC_DataOut
	.word	0
	.word	0
	.word	0
	.word	USBD_MSC_GetHSCfgDesc
	.word	USBD_MSC_GetFSCfgDesc
	.word	USBD_MSC_GetOtherSpeedCfgDesc
	.word	USBD_MSC_GetDeviceQualifierDescriptor
	.global	USBD_MSC_CfgHSDesc
	.section	.data.USBD_MSC_CfgHSDesc,"aw"
	.align	2
	.type	USBD_MSC_CfgHSDesc, %object
	.size	USBD_MSC_CfgHSDesc, 32
USBD_MSC_CfgHSDesc:
	.ascii	"\011\002 \000\001\001\004\3002\011\004\000\000\002\010"
	.ascii	"\006P\005\007\005\201\002\000\002\000\007\005\001\002"
	.ascii	"\000\002\000"
	.global	USBD_MSC_CfgFSDesc
	.section	.data.USBD_MSC_CfgFSDesc,"aw"
	.align	2
	.type	USBD_MSC_CfgFSDesc, %object
	.size	USBD_MSC_CfgFSDesc, 32
USBD_MSC_CfgFSDesc:
	.ascii	"\011\002 \000\001\001\004\3002\011\004\000\000\002\010"
	.ascii	"\006P\005\007\005\201\002@\000\000\007\005\001\002@"
	.ascii	"\000\000"
	.global	USBD_MSC_OtherSpeedCfgDesc
	.section	.data.USBD_MSC_OtherSpeedCfgDesc,"aw"
	.align	2
	.type	USBD_MSC_OtherSpeedCfgDesc, %object
	.size	USBD_MSC_OtherSpeedCfgDesc, 32
USBD_MSC_OtherSpeedCfgDesc:
	.ascii	"\011\007 \000\001\001\004\3002\011\004\000\000\002\010"
	.ascii	"\006P\005\007\005\201\002@\000\000\007\005\001\002@"
	.ascii	"\000\000"
	.global	USBD_MSC_DeviceQualifierDesc
	.section	.data.USBD_MSC_DeviceQualifierDesc,"aw"
	.align	2
	.type	USBD_MSC_DeviceQualifierDesc, %object
	.size	USBD_MSC_DeviceQualifierDesc, 10
USBD_MSC_DeviceQualifierDesc:
	.ascii	"\012\006\000\002\000\000\000@\001\000"
	.section	.text.USBD_MSC_Init,"ax",%progbits
	.align	1
	.global	USBD_MSC_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_Init, %function
USBD_MSC_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2
	mov	r3, #512
	movs	r2, #2
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
	mov	r3, #512
	movs	r2, #2
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
	b	.L3
.L2:
	movs	r3, #64
	movs	r2, #2
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
	movs	r3, #64
	movs	r2, #2
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
.L3:
	movw	r0, #16492
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #536]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	cmp	r3, #0
	bne	.L4
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	b	.L5
.L4:
	ldr	r0, [r7, #4]
	bl	MSC_BOT_Init
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
.L5:
	ldrh	r3, [r7, #14]	@ movhi
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_Init, .-USBD_MSC_Init
	.section	.text.USBD_MSC_DeInit,"ax",%progbits
	.align	1
	.global	USBD_MSC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_DeInit, %function
USBD_MSC_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_CloseEP
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_CloseEP
	ldr	r0, [r7, #4]
	bl	MSC_BOT_DeInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	mov	r0, r3
	bl	free
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #536]
.L8:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_DeInit, .-USBD_MSC_DeInit
	.section	.text.USBD_MSC_Setup,"ax",%progbits
	.align	1
	.global	USBD_MSC_Setup
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_Setup, %function
USBD_MSC_Setup:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #96
	cmp	r3, #0
	beq	.L11
	cmp	r3, #32
	bne	.L29
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #254
	beq	.L13
	cmp	r3, #255
	beq	.L14
	b	.L28
.L13:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L16
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #1
	bne	.L16
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #540]
	ldr	r3, [r3, #24]
	blx	r3
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #1
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L17
.L16:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L18
.L14:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L19
	ldr	r0, [r7, #4]
	bl	MSC_BOT_Reset
	b	.L17
.L19:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L18
.L28:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	movs	r3, #2
	b	.L18
.L17:
	b	.L20
.L11:
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #11
	beq	.L21
	cmp	r3, #11
	bgt	.L30
	cmp	r3, #1
	beq	.L23
	cmp	r3, #10
	bne	.L30
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	movs	r2, #1
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L22
.L21:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	b	.L22
.L23:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_FlushEP
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_CloseEP
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L24
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L25
	mov	r3, #512
	movs	r2, #2
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
	b	.L26
.L25:
	movs	r3, #64
	movs	r2, #2
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
	b	.L26
.L24:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L27
	mov	r3, #512
	movs	r2, #2
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
	b	.L26
.L27:
	movs	r3, #64
	movs	r2, #2
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
.L26:
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	MSC_BOT_CplClrFeature
	nop
.L22:
	b	.L30
.L29:
	nop
	b	.L20
.L30:
	nop
.L20:
	movs	r3, #0
.L18:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_Setup, .-USBD_MSC_Setup
	.section	.text.USBD_MSC_DataIn,"ax",%progbits
	.align	1
	.global	USBD_MSC_DataIn
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_DataIn, %function
USBD_MSC_DataIn:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	MSC_BOT_DataIn
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_DataIn, .-USBD_MSC_DataIn
	.section	.text.USBD_MSC_DataOut,"ax",%progbits
	.align	1
	.global	USBD_MSC_DataOut
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_DataOut, %function
USBD_MSC_DataOut:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	MSC_BOT_DataOut
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_MSC_DataOut, .-USBD_MSC_DataOut
	.section	.text.USBD_MSC_GetHSCfgDesc,"ax",%progbits
	.align	1
	.global	USBD_MSC_GetHSCfgDesc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_GetHSCfgDesc, %function
USBD_MSC_GetHSCfgDesc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strh	r2, [r3]	@ movhi
	ldr	r3, .L37
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L38:
	.align	2
.L37:
	.word	USBD_MSC_CfgHSDesc
	.size	USBD_MSC_GetHSCfgDesc, .-USBD_MSC_GetHSCfgDesc
	.section	.text.USBD_MSC_GetFSCfgDesc,"ax",%progbits
	.align	1
	.global	USBD_MSC_GetFSCfgDesc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_GetFSCfgDesc, %function
USBD_MSC_GetFSCfgDesc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strh	r2, [r3]	@ movhi
	ldr	r3, .L41
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L42:
	.align	2
.L41:
	.word	USBD_MSC_CfgFSDesc
	.size	USBD_MSC_GetFSCfgDesc, .-USBD_MSC_GetFSCfgDesc
	.section	.text.USBD_MSC_GetOtherSpeedCfgDesc,"ax",%progbits
	.align	1
	.global	USBD_MSC_GetOtherSpeedCfgDesc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_GetOtherSpeedCfgDesc, %function
USBD_MSC_GetOtherSpeedCfgDesc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strh	r2, [r3]	@ movhi
	ldr	r3, .L45
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L46:
	.align	2
.L45:
	.word	USBD_MSC_OtherSpeedCfgDesc
	.size	USBD_MSC_GetOtherSpeedCfgDesc, .-USBD_MSC_GetOtherSpeedCfgDesc
	.section	.text.USBD_MSC_GetDeviceQualifierDescriptor,"ax",%progbits
	.align	1
	.global	USBD_MSC_GetDeviceQualifierDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_GetDeviceQualifierDescriptor, %function
USBD_MSC_GetDeviceQualifierDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #10
	strh	r2, [r3]	@ movhi
	ldr	r3, .L49
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L50:
	.align	2
.L49:
	.word	USBD_MSC_DeviceQualifierDesc
	.size	USBD_MSC_GetDeviceQualifierDescriptor, .-USBD_MSC_GetDeviceQualifierDescriptor
	.section	.text.USBD_MSC_RegisterStorage,"ax",%progbits
	.align	1
	.global	USBD_MSC_RegisterStorage
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_MSC_RegisterStorage, %function
USBD_MSC_RegisterStorage:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #540]
.L52:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_MSC_RegisterStorage, .-USBD_MSC_RegisterStorage
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

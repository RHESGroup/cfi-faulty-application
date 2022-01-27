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
	.file	"system_stm32f4xx.c"
	.text
	.global	SystemCoreClock
	.section	.data.SystemCoreClock,"aw"
	.align	2
	.type	SystemCoreClock, %object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.word	16000000
	.global	AHBPrescTable
	.section	.rodata.AHBPrescTable,"a"
	.align	2
	.type	AHBPrescTable, %object
	.size	AHBPrescTable, 16
AHBPrescTable:
	.ascii	"\000\000\000\000\000\000\000\000\001\002\003\004\006"
	.ascii	"\007\010\011"
	.section	.text.SystemInit,"ax",%progbits
	.align	1
	.global	SystemInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SystemInit, %function
SystemInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	orr	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	bic	r3, r3, #17301504
	bic	r3, r3, #65536
	str	r3, [r2]
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3, #4]
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	bic	r3, r3, #262144
	str	r3, [r2]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2+8
	mov	r2, #134217728
	str	r2, [r3, #8]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073887232
	.word	603992080
	.word	-536810240
	.size	SystemInit, .-SystemInit
	.section	.text.SystemCoreClockUpdate,"ax",%progbits
	.align	1
	.global	SystemCoreClockUpdate
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #2
	str	r3, [r7, #4]
	ldr	r3, .L12
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #8
	beq	.L5
	ldr	r3, [r7, #16]
	cmp	r3, #8
	bhi	.L6
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #16]
	cmp	r3, #4
	beq	.L8
	b	.L6
.L7:
	ldr	r3, .L12+4
	ldr	r2, .L12+8
	str	r2, [r3]
	b	.L9
.L8:
	ldr	r3, .L12+4
	ldr	r2, .L12+8
	str	r2, [r3]
	b	.L9
.L5:
	ldr	r3, .L12
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #22
	and	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, .L12
	ldr	r3, [r3, #4]
	and	r3, r3, #63
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L10
	ldr	r2, .L12+8
	ldr	r3, [r7, #4]
	udiv	r3, r2, r3
	ldr	r2, .L12
	ldr	r2, [r2, #4]
	lsrs	r2, r2, #6
	ubfx	r2, r2, #0, #9
	mul	r3, r2, r3
	str	r3, [r7, #20]
	b	.L11
.L10:
	ldr	r2, .L12+8
	ldr	r3, [r7, #4]
	udiv	r3, r2, r3
	ldr	r2, .L12
	ldr	r2, [r2, #4]
	lsrs	r2, r2, #6
	ubfx	r2, r2, #0, #9
	mul	r3, r2, r3
	str	r3, [r7, #20]
.L11:
	ldr	r3, .L12
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #16
	and	r3, r3, #3
	adds	r3, r3, #1
	lsls	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	udiv	r3, r2, r3
	ldr	r2, .L12+4
	str	r3, [r2]
	b	.L9
.L6:
	ldr	r3, .L12+4
	ldr	r2, .L12+8
	str	r2, [r3]
	nop
.L9:
	ldr	r3, .L12
	ldr	r3, [r3, #8]
	lsrs	r3, r3, #4
	and	r3, r3, #15
	ldr	r2, .L12+12
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	str	r3, [r7, #16]
	ldr	r3, .L12+4
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	lsr	r3, r2, r3
	ldr	r2, .L12+4
	str	r3, [r2]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073887232
	.word	SystemCoreClock
	.word	16000000
	.word	AHBPrescTable
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

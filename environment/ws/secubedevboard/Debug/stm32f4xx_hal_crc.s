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
	.file	"stm32f4xx_hal_crc.c"
	.text
	.section	.text.HAL_CRC_Init,"ax",%progbits
	.align	1
	.global	HAL_CRC_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_Init, %function
HAL_CRC_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	HAL_CRC_MspInit
.L4:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #5]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_CRC_Init, .-HAL_CRC_Init
	.section	.text.HAL_CRC_DeInit,"ax",%progbits
	.align	1
	.global	HAL_CRC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_DeInit, %function
HAL_CRC_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L6
	movs	r3, #1
	b	.L7
.L6:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #5]
	ldr	r0, [r7, #4]
	bl	HAL_CRC_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	movs	r3, #0
.L7:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_CRC_DeInit, .-HAL_CRC_DeInit
	.section	.text.HAL_CRC_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_CRC_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_MspInit, %function
HAL_CRC_MspInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_CRC_MspInit, .-HAL_CRC_MspInit
	.section	.text.HAL_CRC_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_CRC_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_MspDeInit, %function
HAL_CRC_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_CRC_MspDeInit, .-HAL_CRC_MspDeInit
	.section	.text.HAL_CRC_Accumulate,"ax",%progbits
	.align	1
	.global	HAL_CRC_Accumulate
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_Accumulate, %function
HAL_CRC_Accumulate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L11
	movs	r3, #2
	b	.L12
.L11:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #5]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L13
.L14:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L13:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L14
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
.L12:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_CRC_Accumulate, .-HAL_CRC_Accumulate
	.section	.text.HAL_CRC_Calculate,"ax",%progbits
	.align	1
	.global	HAL_CRC_Calculate
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_Calculate, %function
HAL_CRC_Calculate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L16
	movs	r3, #2
	b	.L17
.L16:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L18
.L19:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L18:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L19
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
.L17:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_CRC_Calculate, .-HAL_CRC_Calculate
	.section	.text.HAL_CRC_GetState,"ax",%progbits
	.align	1
	.global	HAL_CRC_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_GetState, %function
HAL_CRC_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_CRC_GetState, .-HAL_CRC_GetState
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

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
	.file	"stm32f4xx_hal_rng.c"
	.text
	.section	.text.HAL_RNG_Init,"ax",%progbits
	.align	1
	.global	HAL_RNG_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_Init, %function
HAL_RNG_Init:
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
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L4
	movs	r3, #2
	b	.L3
.L4:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L5
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	HAL_RNG_MspInit
.L5:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_RNG_Init, .-HAL_RNG_Init
	.section	.text.HAL_RNG_DeInit,"ax",%progbits
	.align	1
	.global	HAL_RNG_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_DeInit, %function
HAL_RNG_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L7
	movs	r3, #1
	b	.L8
.L7:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #12
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #96
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	HAL_RNG_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	movs	r3, #0
.L8:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_RNG_DeInit, .-HAL_RNG_DeInit
	.section	.text.HAL_RNG_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_RNG_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_MspInit, %function
HAL_RNG_MspInit:
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
	.size	HAL_RNG_MspInit, .-HAL_RNG_MspInit
	.section	.text.HAL_RNG_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_RNG_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_MspDeInit, %function
HAL_RNG_MspDeInit:
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
	.size	HAL_RNG_MspDeInit, .-HAL_RNG_MspDeInit
	.section	.text.HAL_RNG_GenerateRandomNumber,"ax",%progbits
	.align	1
	.global	HAL_RNG_GenerateRandomNumber
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_GenerateRandomNumber, %function
HAL_RNG_GenerateRandomNumber:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L12
	movs	r3, #2
	b	.L13
.L12:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L14
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #5]
	bl	HAL_GetTick
	str	r0, [r7, #8]
	b	.L15
.L16:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L15
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	movs	r3, #3
	b	.L13
.L15:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #5]
	b	.L17
.L14:
	movs	r3, #1
	strb	r3, [r7, #15]
.L17:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L13:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_RNG_GenerateRandomNumber, .-HAL_RNG_GenerateRandomNumber
	.section	.text.HAL_RNG_GenerateRandomNumber_IT,"ax",%progbits
	.align	1
	.global	HAL_RNG_GenerateRandomNumber_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_GenerateRandomNumber_IT, %function
HAL_RNG_GenerateRandomNumber_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L19
	movs	r3, #2
	b	.L20
.L19:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L21
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3]
	b	.L22
.L21:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	movs	r3, #1
	strb	r3, [r7, #15]
.L22:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L20:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_RNG_GenerateRandomNumber_IT, .-HAL_RNG_GenerateRandomNumber_IT
	.section	.text.HAL_RNG_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_RNG_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_IRQHandler, %function
HAL_RNG_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #32
	cmp	r3, #32
	beq	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #64
	cmp	r3, #64
	bne	.L25
.L24:
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #5]
	ldr	r0, [r7, #4]
	bl	HAL_RNG_ErrorCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #96
	str	r2, [r3, #4]
.L25:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L27
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]
	uxtb	r3, r3
	cmp	r3, #4
	beq	.L27
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	HAL_RNG_ReadyDataCallback
.L27:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_RNG_IRQHandler, .-HAL_RNG_IRQHandler
	.section	.text.HAL_RNG_GetRandomNumber,"ax",%progbits
	.align	1
	.global	HAL_RNG_GetRandomNumber
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_GetRandomNumber, %function
HAL_RNG_GetRandomNumber:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	HAL_RNG_GenerateRandomNumber
	mov	r3, r0
	cmp	r3, #0
	bne	.L29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	b	.L30
.L29:
	movs	r3, #0
.L30:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_RNG_GetRandomNumber, .-HAL_RNG_GetRandomNumber
	.section	.text.HAL_RNG_GetRandomNumber_IT,"ax",%progbits
	.align	1
	.global	HAL_RNG_GetRandomNumber_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_GetRandomNumber_IT, %function
HAL_RNG_GetRandomNumber_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L32
	movs	r3, #2
	b	.L33
.L32:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
.L33:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_RNG_GetRandomNumber_IT, .-HAL_RNG_GetRandomNumber_IT
	.section	.text.HAL_RNG_ReadLastRandomNumber,"ax",%progbits
	.align	1
	.global	HAL_RNG_ReadLastRandomNumber
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_ReadLastRandomNumber, %function
HAL_RNG_ReadLastRandomNumber:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_RNG_ReadLastRandomNumber, .-HAL_RNG_ReadLastRandomNumber
	.section	.text.HAL_RNG_ReadyDataCallback,"ax",%progbits
	.align	1
	.weak	HAL_RNG_ReadyDataCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_ReadyDataCallback, %function
HAL_RNG_ReadyDataCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_RNG_ReadyDataCallback, .-HAL_RNG_ReadyDataCallback
	.section	.text.HAL_RNG_ErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_RNG_ErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_ErrorCallback, %function
HAL_RNG_ErrorCallback:
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
	.size	HAL_RNG_ErrorCallback, .-HAL_RNG_ErrorCallback
	.section	.text.HAL_RNG_GetState,"ax",%progbits
	.align	1
	.global	HAL_RNG_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_GetState, %function
HAL_RNG_GetState:
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
	.size	HAL_RNG_GetState, .-HAL_RNG_GetState
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

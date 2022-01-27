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
	.file	"stm32f4xx_hal_adc_ex.c"
	.text
	.section	.text.HAL_ADCEx_InjectedStart,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_InjectedStart
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_InjectedStart, %function
HAL_ADCEx_InjectedStart:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L2
	movs	r3, #2
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	beq	.L4
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, .L10
	ldr	r3, [r3]
	ldr	r2, .L10+4
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L5
.L6:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L5:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L6
.L4:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #12288
	bic	r3, r3, #1
	orr	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L8
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
.L8:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #4
	str	r2, [r3]
	ldr	r3, .L10+8
	ldr	r3, [r3, #4]
	and	r3, r3, #31
	cmp	r3, #0
	bne	.L9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #3145728
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4194304
	str	r2, [r3, #8]
	b	.L7
.L9:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #3145728
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L10+12
	cmp	r3, r2
	bne	.L7
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4194304
	str	r2, [r3, #8]
.L7:
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L11:
	.align	2
.L10:
	.word	SystemCoreClock
	.word	1125899907
	.word	1073816320
	.word	1073815552
	.size	HAL_ADCEx_InjectedStart, .-HAL_ADCEx_InjectedStart
	.section	.text.HAL_ADCEx_InjectedStart_IT,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_InjectedStart_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_InjectedStart_IT, %function
HAL_ADCEx_InjectedStart_IT:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L13
	movs	r3, #2
	b	.L14
.L13:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	beq	.L15
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, .L21
	ldr	r3, [r3]
	ldr	r2, .L21+4
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L16
.L17:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L16:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L17
.L15:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #12288
	bic	r3, r3, #1
	orr	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
.L19:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #4
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #4]
	ldr	r3, .L21+8
	ldr	r3, [r3, #4]
	and	r3, r3, #31
	cmp	r3, #0
	bne	.L20
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #3145728
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4194304
	str	r2, [r3, #8]
	b	.L18
.L20:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #3145728
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L21+12
	cmp	r3, r2
	bne	.L18
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4194304
	str	r2, [r3, #8]
.L18:
	movs	r3, #0
.L14:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L22:
	.align	2
.L21:
	.word	SystemCoreClock
	.word	1125899907
	.word	1073816320
	.word	1073815552
	.size	HAL_ADCEx_InjectedStart_IT, .-HAL_ADCEx_InjectedStart_IT
	.section	.text.HAL_ADCEx_InjectedStop,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_InjectedStop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_InjectedStop, %function
HAL_ADCEx_InjectedStop:
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
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L24
	movs	r3, #2
	b	.L25
.L24:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L26
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L26
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #4352
	bic	r3, r3, #1
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	b	.L28
.L26:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	movs	r3, #1
	strb	r3, [r7, #15]
.L28:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L25:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_ADCEx_InjectedStop, .-HAL_ADCEx_InjectedStop
	.section	.text.HAL_ADCEx_InjectedPollForConversion,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_InjectedPollForConversion
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_InjectedPollForConversion, %function
HAL_ADCEx_InjectedPollForConversion:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L30
.L33:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L30
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L31
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L30
.L31:
	ldr	r3, [r7, #4]
	movs	r2, #4
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L32
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L33
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #12
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #8192
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #3145728
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #56]
	and	r3, r3, #3145728
	cmp	r3, #0
	beq	.L35
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L34
.L35:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L34:
	movs	r3, #0
.L32:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_ADCEx_InjectedPollForConversion, .-HAL_ADCEx_InjectedPollForConversion
	.section	.text.HAL_ADCEx_InjectedStop_IT,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_InjectedStop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_InjectedStop_IT, %function
HAL_ADCEx_InjectedStop_IT:
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
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L37
	movs	r3, #2
	b	.L38
.L37:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L41
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #4352
	bic	r3, r3, #1
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	b	.L41
.L39:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	movs	r3, #1
	strb	r3, [r7, #15]
.L41:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L38:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_ADCEx_InjectedStop_IT, .-HAL_ADCEx_InjectedStop_IT
	.section	.text.HAL_ADCEx_InjectedGetValue,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_InjectedGetValue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_InjectedGetValue, %function
HAL_ADCEx_InjectedGetValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #4
	str	r2, [r3]
	ldr	r3, [r7]
	subs	r3, r3, #1
	cmp	r3, #3
	bhi	.L51
	adr	r2, .L45
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L45:
	.word	.L48+1
	.word	.L47+1
	.word	.L46+1
	.word	.L44+1
	.p2align 1
.L44:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #72]
	str	r3, [r7, #12]
	b	.L49
.L46:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #68]
	str	r3, [r7, #12]
	b	.L49
.L47:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #64]
	str	r3, [r7, #12]
	b	.L49
.L48:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #60]
	str	r3, [r7, #12]
	b	.L49
.L51:
	nop
.L49:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_ADCEx_InjectedGetValue, .-HAL_ADCEx_InjectedGetValue
	.section	.text.HAL_ADCEx_MultiModeStart_DMA,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_MultiModeStart_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_MultiModeStart_DMA, %function
HAL_ADCEx_MultiModeStart_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L53
	movs	r3, #2
	b	.L54
.L53:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	beq	.L55
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, .L64
	ldr	r3, [r3]
	ldr	r2, .L64+4
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #20]
	b	.L56
.L57:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L56:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L57
.L55:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L58
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	bic	r3, r3, #1792
	bic	r3, r3, #1
	orr	r2, r3, #256
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	bic	r3, r3, #12288
	orr	r2, r3, #4096
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
.L59:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	bic	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	b	.L61
.L60:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
.L61:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L64+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L64+12
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L64+16
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #67108864
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L62
	ldr	r3, .L64+20
	ldr	r3, [r3, #4]
	ldr	r2, .L64+20
	orr	r3, r3, #8192
	str	r3, [r2, #4]
	b	.L63
.L62:
	ldr	r3, .L64+20
	ldr	r3, [r3, #4]
	ldr	r2, .L64+20
	bic	r3, r3, #8192
	str	r3, [r2, #4]
.L63:
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #56]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r1, .L64+24
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L58
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1073741824
	str	r2, [r3, #8]
.L58:
	movs	r3, #0
.L54:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L65:
	.align	2
.L64:
	.word	SystemCoreClock
	.word	1125899907
	.word	ADC_MultiModeDMAConvCplt
	.word	ADC_MultiModeDMAHalfConvCplt
	.word	ADC_MultiModeDMAError
	.word	1073816320
	.word	1073816328
	.size	HAL_ADCEx_MultiModeStart_DMA, .-HAL_ADCEx_MultiModeStart_DMA
	.section	.text.HAL_ADCEx_MultiModeStop_DMA,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_MultiModeStop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_MultiModeStop_DMA, %function
HAL_ADCEx_MultiModeStop_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L67
	movs	r3, #2
	b	.L68
.L67:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L69
	ldr	r3, .L70
	ldr	r3, [r3, #4]
	ldr	r2, .L70
	bic	r3, r3, #8192
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r0, r3
	bl	HAL_DMA_Abort
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #67108864
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #4352
	bic	r3, r3, #1
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L69:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L68:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L71:
	.align	2
.L70:
	.word	1073816320
	.size	HAL_ADCEx_MultiModeStop_DMA, .-HAL_ADCEx_MultiModeStop_DMA
	.section	.text.HAL_ADCEx_MultiModeGetValue,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_MultiModeGetValue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_MultiModeGetValue, %function
HAL_ADCEx_MultiModeGetValue:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L74
	ldr	r3, [r3, #8]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L75:
	.align	2
.L74:
	.word	1073816320
	.size	HAL_ADCEx_MultiModeGetValue, .-HAL_ADCEx_MultiModeGetValue
	.section	.text.HAL_ADCEx_InjectedConvCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_ADCEx_InjectedConvCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_InjectedConvCpltCallback, %function
HAL_ADCEx_InjectedConvCpltCallback:
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
	.size	HAL_ADCEx_InjectedConvCpltCallback, .-HAL_ADCEx_InjectedConvCpltCallback
	.section	.text.HAL_ADCEx_InjectedConfigChannel,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_InjectedConfigChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_InjectedConfigChannel, %function
HAL_ADCEx_InjectedConfigChannel:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L78
	movs	r3, #2
	b	.L79
.L78:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #9
	bls	.L80
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	subs	r3, r3, #30
	movs	r2, #7
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	subs	r3, r3, #30
	lsls	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #12]
	b	.L81
.L80:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #7
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	lsls	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #16]
.L81:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #3145728
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #56]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	subs	r3, r3, #1
	lsls	r2, r3, #20
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #56]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	uxtb	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	subs	r3, r2, r3
	uxtb	r3, r3
	adds	r3, r3, #3
	uxtb	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #31
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #56]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	uxtb	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	subs	r3, r2, r3
	uxtb	r3, r3
	adds	r3, r3, #3
	uxtb	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r0, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #56]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	ldr	r2, .L96
	cmp	r3, r2
	beq	.L82
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #983040
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #3145728
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	b	.L83
.L82:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #983040
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #3145728
	str	r2, [r3, #8]
.L83:
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3, #4]
	b	.L85
.L84:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #4]
.L85:
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3, #4]
	b	.L87
.L86:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4096
	str	r2, [r3, #4]
.L87:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L88
	cmp	r3, #3
	bhi	.L89
	cmp	r3, #1
	beq	.L90
	cmp	r3, #2
	beq	.L91
	b	.L89
.L90:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	bic	r3, r3, #4080
	bic	r3, r3, #15
	str	r3, [r2, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #20]
	b	.L92
.L91:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	bic	r3, r3, #4080
	bic	r3, r3, #15
	str	r3, [r2, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	b	.L92
.L88:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	bic	r3, r3, #4080
	bic	r3, r3, #15
	str	r3, [r2, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #28]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #28]
	b	.L92
.L89:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	bic	r3, r3, #4080
	bic	r3, r3, #15
	str	r3, [r2, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #32]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #32]
	nop
.L92:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L96+4
	cmp	r3, r2
	bne	.L93
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #18
	bne	.L93
	ldr	r3, .L96+8
	ldr	r3, [r3, #4]
	ldr	r2, .L96+8
	orr	r3, r3, #4194304
	str	r3, [r2, #4]
.L93:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L96+4
	cmp	r3, r2
	bne	.L94
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, .L96+12
	cmp	r3, r2
	beq	.L95
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #17
	bne	.L94
.L95:
	ldr	r3, .L96+8
	ldr	r3, [r3, #4]
	ldr	r2, .L96+8
	orr	r3, r3, #8388608
	str	r3, [r2, #4]
.L94:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
.L79:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L97:
	.align	2
.L96:
	.word	983041
	.word	1073815552
	.word	1073816320
	.word	268435474
	.size	HAL_ADCEx_InjectedConfigChannel, .-HAL_ADCEx_InjectedConfigChannel
	.section	.text.HAL_ADCEx_MultiModeConfigChannel,"ax",%progbits
	.align	1
	.global	HAL_ADCEx_MultiModeConfigChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADCEx_MultiModeConfigChannel, %function
HAL_ADCEx_MultiModeConfigChannel:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L99
	movs	r3, #2
	b	.L100
.L99:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, .L101
	ldr	r3, [r3, #4]
	ldr	r2, .L101
	bic	r3, r3, #31
	str	r3, [r2, #4]
	ldr	r3, .L101
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r1, .L101
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, .L101
	ldr	r3, [r3, #4]
	ldr	r2, .L101
	bic	r3, r3, #49152
	str	r3, [r2, #4]
	ldr	r3, .L101
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r1, .L101
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, .L101
	ldr	r3, [r3, #4]
	ldr	r2, .L101
	bic	r3, r3, #3840
	str	r3, [r2, #4]
	ldr	r3, .L101
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ldr	r1, .L101
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
.L100:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L102:
	.align	2
.L101:
	.word	1073816320
	.size	HAL_ADCEx_MultiModeConfigChannel, .-HAL_ADCEx_MultiModeConfigChannel
	.section	.text.ADC_MultiModeDMAConvCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADC_MultiModeDMAConvCplt, %function
ADC_MultiModeDMAConvCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	and	r3, r3, #80
	cmp	r3, #0
	bne	.L104
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #512
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L105
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L105
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #44]
	and	r3, r3, #15728640
	cmp	r3, #0
	beq	.L106
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L105
.L106:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	bic	r2, r3, #256
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	and	r3, r3, #4096
	cmp	r3, #0
	bne	.L105
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
.L105:
	ldr	r0, [r7, #12]
	bl	HAL_ADC_ConvCpltCallback
	b	.L108
.L104:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #72]
	ldr	r0, [r7, #4]
	blx	r3
.L108:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ADC_MultiModeDMAConvCplt, .-ADC_MultiModeDMAConvCplt
	.section	.text.ADC_MultiModeDMAHalfConvCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADC_MultiModeDMAHalfConvCplt, %function
ADC_MultiModeDMAHalfConvCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	HAL_ADC_ConvHalfCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ADC_MultiModeDMAHalfConvCplt, .-ADC_MultiModeDMAHalfConvCplt
	.section	.text.ADC_MultiModeDMAError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADC_MultiModeDMAError, %function
ADC_MultiModeDMAError:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #64
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	orr	r2, r3, #4
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r0, [r7, #12]
	bl	HAL_ADC_ErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ADC_MultiModeDMAError, .-ADC_MultiModeDMAError
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

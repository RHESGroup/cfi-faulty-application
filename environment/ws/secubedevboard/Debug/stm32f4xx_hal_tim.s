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
	.file	"stm32f4xx_hal_tim.c"
	.text
	.section	.text.HAL_TIM_Base_Init,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_Init, %function
HAL_TIM_Base_Init:
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
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #4]
	bl	HAL_TIM_Base_MspInit
.L4:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	TIM_Base_SetConfig
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Base_Init, .-HAL_TIM_Base_Init
	.section	.text.HAL_TIM_Base_DeInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_DeInit, %function
HAL_TIM_Base_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L6
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L6
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L6:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_Base_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Base_DeInit, .-HAL_TIM_Base_DeInit
	.section	.text.HAL_TIM_Base_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_Base_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_MspInit, %function
HAL_TIM_Base_MspInit:
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
	.size	HAL_TIM_Base_MspInit, .-HAL_TIM_Base_MspInit
	.section	.text.HAL_TIM_Base_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_Base_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_MspDeInit, %function
HAL_TIM_Base_MspDeInit:
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
	.size	HAL_TIM_Base_MspDeInit, .-HAL_TIM_Base_MspDeInit
	.section	.text.HAL_TIM_Base_Start,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_Start, %function
HAL_TIM_Base_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_Base_Start, .-HAL_TIM_Base_Start
	.section	.text.HAL_TIM_Base_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_Stop, %function
HAL_TIM_Base_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L13
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L13
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L13:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_Base_Stop, .-HAL_TIM_Base_Stop
	.section	.text.HAL_TIM_Base_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_Start_IT, %function
HAL_TIM_Base_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_Base_Start_IT, .-HAL_TIM_Base_Start_IT
	.section	.text.HAL_TIM_Base_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_Stop_IT, %function
HAL_TIM_Base_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L18:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_Base_Stop_IT, .-HAL_TIM_Base_Stop_IT
	.section	.text.HAL_TIM_Base_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_Start_DMA, %function
HAL_TIM_Base_Start_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L21
	movs	r3, #2
	b	.L22
.L21:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L23
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L24
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	beq	.L24
	movs	r3, #1
	b	.L22
.L24:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L23:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, .L25
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, .L25+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #28]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #44
	mov	r2, r3
	ldrh	r3, [r7, #6]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L22:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L26:
	.align	2
.L25:
	.word	TIM_DMAPeriodElapsedCplt
	.word	TIM_DMAError
	.size	HAL_TIM_Base_Start_DMA, .-HAL_TIM_Base_Start_DMA
	.section	.text.HAL_TIM_Base_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_Stop_DMA, %function
HAL_TIM_Base_Stop_DMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #256
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L28:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_Base_Stop_DMA, .-HAL_TIM_Base_Stop_DMA
	.section	.text.HAL_TIM_OC_Init,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_Init, %function
HAL_TIM_OC_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L31
	movs	r3, #1
	b	.L32
.L31:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #4]
	bl	HAL_TIM_OC_MspInit
.L33:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	TIM_Base_SetConfig
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L32:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_OC_Init, .-HAL_TIM_OC_Init
	.section	.text.HAL_TIM_OC_DeInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_DeInit, %function
HAL_TIM_OC_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L35
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L35
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L35:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_OC_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_OC_DeInit, .-HAL_TIM_OC_DeInit
	.section	.text.HAL_TIM_OC_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_OC_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_MspInit, %function
HAL_TIM_OC_MspInit:
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
	.size	HAL_TIM_OC_MspInit, .-HAL_TIM_OC_MspInit
	.section	.text.HAL_TIM_OC_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_OC_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_MspDeInit, %function
HAL_TIM_OC_MspDeInit:
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
	.size	HAL_TIM_OC_MspDeInit, .-HAL_TIM_OC_MspDeInit
	.section	.text.HAL_TIM_OC_Start,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_Start, %function
HAL_TIM_OC_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L45
	cmp	r3, r2
	beq	.L40
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L45+4
	cmp	r3, r2
	bne	.L41
.L40:
	movs	r3, #1
	b	.L42
.L41:
	movs	r3, #0
.L42:
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
.L43:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OC_Start, .-HAL_TIM_OC_Start
	.section	.text.HAL_TIM_OC_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_Stop, %function
HAL_TIM_OC_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L54
	cmp	r3, r2
	beq	.L48
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L54+4
	cmp	r3, r2
	bne	.L49
.L48:
	movs	r3, #1
	b	.L50
.L49:
	movs	r3, #0
.L50:
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L52
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L52
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L52:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OC_Stop, .-HAL_TIM_OC_Stop
	.section	.text.HAL_TIM_OC_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_Start_IT, %function
HAL_TIM_OC_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L69
	adr	r2, .L59
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L59:
	.word	.L62+1
	.word	.L69+1
	.word	.L69+1
	.word	.L69+1
	.word	.L61+1
	.word	.L69+1
	.word	.L69+1
	.word	.L69+1
	.word	.L60+1
	.word	.L69+1
	.word	.L69+1
	.word	.L69+1
	.word	.L58+1
	.p2align 1
.L62:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	b	.L63
.L61:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	b	.L63
.L60:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3, #12]
	b	.L63
.L58:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3, #12]
	b	.L63
.L69:
	nop
.L63:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L70
	cmp	r3, r2
	beq	.L64
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L70+4
	cmp	r3, r2
	bne	.L65
.L64:
	movs	r3, #1
	b	.L66
.L65:
	movs	r3, #0
.L66:
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
.L67:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L71:
	.align	2
.L70:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OC_Start_IT, .-HAL_TIM_OC_Start_IT
	.section	.text.HAL_TIM_OC_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_Stop_IT, %function
HAL_TIM_OC_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L86
	adr	r2, .L75
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L75:
	.word	.L78+1
	.word	.L86+1
	.word	.L86+1
	.word	.L86+1
	.word	.L77+1
	.word	.L86+1
	.word	.L86+1
	.word	.L86+1
	.word	.L76+1
	.word	.L86+1
	.word	.L86+1
	.word	.L86+1
	.word	.L74+1
	.p2align 1
.L78:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	b	.L79
.L77:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
	b	.L79
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8
	str	r2, [r3, #12]
	b	.L79
.L74:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3, #12]
	b	.L79
.L86:
	nop
.L79:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L87
	cmp	r3, r2
	beq	.L80
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L87+4
	cmp	r3, r2
	bne	.L81
.L80:
	movs	r3, #1
	b	.L82
.L81:
	movs	r3, #0
.L82:
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L83:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L84:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L88:
	.align	2
.L87:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OC_Stop_IT, .-HAL_TIM_OC_Stop_IT
	.section	.text.HAL_TIM_OC_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_Start_DMA, %function
HAL_TIM_OC_Start_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L90
	movs	r3, #2
	b	.L91
.L90:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L92
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L93
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	beq	.L93
	movs	r3, #1
	b	.L91
.L93:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L92:
	ldr	r3, [r7, #8]
	cmp	r3, #12
	bhi	.L105
	adr	r2, .L96
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L96:
	.word	.L99+1
	.word	.L105+1
	.word	.L105+1
	.word	.L105+1
	.word	.L98+1
	.word	.L105+1
	.word	.L105+1
	.word	.L105+1
	.word	.L97+1
	.word	.L105+1
	.word	.L105+1
	.word	.L105+1
	.word	.L95+1
	.p2align 1
.L99:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L106
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L106+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #52
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3, #12]
	b	.L100
.L98:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L106
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L106+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #56
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L100
.L97:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L106
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L106+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #60
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L100
.L95:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L106
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L106+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #44]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #64
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L100
.L105:
	nop
.L100:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, .L106+8
	cmp	r3, r2
	beq	.L101
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, .L106+12
	cmp	r3, r2
	bne	.L102
.L101:
	movs	r3, #1
	b	.L103
.L102:
	movs	r3, #0
.L103:
	cmp	r3, #0
	beq	.L104
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
.L104:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L91:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L107:
	.align	2
.L106:
	.word	TIM_DMADelayPulseCplt
	.word	TIM_DMAError
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OC_Start_DMA, .-HAL_TIM_OC_Start_DMA
	.section	.text.HAL_TIM_OC_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_Stop_DMA, %function
HAL_TIM_OC_Stop_DMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L122
	adr	r2, .L111
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L111:
	.word	.L114+1
	.word	.L122+1
	.word	.L122+1
	.word	.L122+1
	.word	.L113+1
	.word	.L122+1
	.word	.L122+1
	.word	.L122+1
	.word	.L112+1
	.word	.L122+1
	.word	.L122+1
	.word	.L122+1
	.word	.L110+1
	.p2align 1
.L114:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #12]
	b	.L115
.L113:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L115
.L112:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L115
.L110:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L115
.L122:
	nop
.L115:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L123
	cmp	r3, r2
	beq	.L116
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L123+4
	cmp	r3, r2
	bne	.L117
.L116:
	movs	r3, #1
	b	.L118
.L117:
	movs	r3, #0
.L118:
	cmp	r3, #0
	beq	.L119
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L119
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L119
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L119:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L120:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L124:
	.align	2
.L123:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OC_Stop_DMA, .-HAL_TIM_OC_Stop_DMA
	.section	.text.HAL_TIM_PWM_Init,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_Init, %function
HAL_TIM_PWM_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L126
	movs	r3, #1
	b	.L127
.L126:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L128
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #4]
	bl	HAL_TIM_PWM_MspInit
.L128:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	TIM_Base_SetConfig
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L127:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_PWM_Init, .-HAL_TIM_PWM_Init
	.section	.text.HAL_TIM_PWM_DeInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_DeInit, %function
HAL_TIM_PWM_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L130
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L130
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L130:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_PWM_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_PWM_DeInit, .-HAL_TIM_PWM_DeInit
	.section	.text.HAL_TIM_PWM_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_PWM_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_MspInit, %function
HAL_TIM_PWM_MspInit:
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
	.size	HAL_TIM_PWM_MspInit, .-HAL_TIM_PWM_MspInit
	.section	.text.HAL_TIM_PWM_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_PWM_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_MspDeInit, %function
HAL_TIM_PWM_MspDeInit:
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
	.size	HAL_TIM_PWM_MspDeInit, .-HAL_TIM_PWM_MspDeInit
	.section	.text.HAL_TIM_PWM_Start,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_Start, %function
HAL_TIM_PWM_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L140
	cmp	r3, r2
	beq	.L135
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L140+4
	cmp	r3, r2
	bne	.L136
.L135:
	movs	r3, #1
	b	.L137
.L136:
	movs	r3, #0
.L137:
	cmp	r3, #0
	beq	.L138
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
.L138:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L141:
	.align	2
.L140:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_PWM_Start, .-HAL_TIM_PWM_Start
	.section	.text.HAL_TIM_PWM_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_Stop, %function
HAL_TIM_PWM_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L149
	cmp	r3, r2
	beq	.L143
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L149+4
	cmp	r3, r2
	bne	.L144
.L143:
	movs	r3, #1
	b	.L145
.L144:
	movs	r3, #0
.L145:
	cmp	r3, #0
	beq	.L146
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L146
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L146
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L146:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L147
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L147
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L147:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L150:
	.align	2
.L149:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_PWM_Stop, .-HAL_TIM_PWM_Stop
	.section	.text.HAL_TIM_PWM_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_Start_IT, %function
HAL_TIM_PWM_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L164
	adr	r2, .L154
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L154:
	.word	.L157+1
	.word	.L164+1
	.word	.L164+1
	.word	.L164+1
	.word	.L156+1
	.word	.L164+1
	.word	.L164+1
	.word	.L164+1
	.word	.L155+1
	.word	.L164+1
	.word	.L164+1
	.word	.L164+1
	.word	.L153+1
	.p2align 1
.L157:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	b	.L158
.L156:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	b	.L158
.L155:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3, #12]
	b	.L158
.L153:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3, #12]
	b	.L158
.L164:
	nop
.L158:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L165
	cmp	r3, r2
	beq	.L159
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L165+4
	cmp	r3, r2
	bne	.L160
.L159:
	movs	r3, #1
	b	.L161
.L160:
	movs	r3, #0
.L161:
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
.L162:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L166:
	.align	2
.L165:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_PWM_Start_IT, .-HAL_TIM_PWM_Start_IT
	.section	.text.HAL_TIM_PWM_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_Stop_IT, %function
HAL_TIM_PWM_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L181
	adr	r2, .L170
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L170:
	.word	.L173+1
	.word	.L181+1
	.word	.L181+1
	.word	.L181+1
	.word	.L172+1
	.word	.L181+1
	.word	.L181+1
	.word	.L181+1
	.word	.L171+1
	.word	.L181+1
	.word	.L181+1
	.word	.L181+1
	.word	.L169+1
	.p2align 1
.L173:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	b	.L174
.L172:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
	b	.L174
.L171:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8
	str	r2, [r3, #12]
	b	.L174
.L169:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3, #12]
	b	.L174
.L181:
	nop
.L174:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L182
	cmp	r3, r2
	beq	.L175
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L182+4
	cmp	r3, r2
	bne	.L176
.L175:
	movs	r3, #1
	b	.L177
.L176:
	movs	r3, #0
.L177:
	cmp	r3, #0
	beq	.L178
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L178
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L178
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L178:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L179
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L179
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L179:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L183:
	.align	2
.L182:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_PWM_Stop_IT, .-HAL_TIM_PWM_Stop_IT
	.section	.text.HAL_TIM_PWM_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_Start_DMA, %function
HAL_TIM_PWM_Start_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L185
	movs	r3, #2
	b	.L186
.L185:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L187
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L188
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	beq	.L188
	movs	r3, #1
	b	.L186
.L188:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L187:
	ldr	r3, [r7, #8]
	cmp	r3, #12
	bhi	.L200
	adr	r2, .L191
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L191:
	.word	.L194+1
	.word	.L200+1
	.word	.L200+1
	.word	.L200+1
	.word	.L193+1
	.word	.L200+1
	.word	.L200+1
	.word	.L200+1
	.word	.L192+1
	.word	.L200+1
	.word	.L200+1
	.word	.L200+1
	.word	.L190+1
	.p2align 1
.L194:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L201
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L201+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #52
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3, #12]
	b	.L195
.L193:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L201
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L201+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #56
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L195
.L192:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L201
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L201+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #60
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L195
.L190:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L201
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L201+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #44]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #64
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L195
.L200:
	nop
.L195:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, .L201+8
	cmp	r3, r2
	beq	.L196
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, .L201+12
	cmp	r3, r2
	bne	.L197
.L196:
	movs	r3, #1
	b	.L198
.L197:
	movs	r3, #0
.L198:
	cmp	r3, #0
	beq	.L199
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
.L199:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L186:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L202:
	.align	2
.L201:
	.word	TIM_DMADelayPulseCplt
	.word	TIM_DMAError
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_PWM_Start_DMA, .-HAL_TIM_PWM_Start_DMA
	.section	.text.HAL_TIM_PWM_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_Stop_DMA, %function
HAL_TIM_PWM_Stop_DMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L217
	adr	r2, .L206
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L206:
	.word	.L209+1
	.word	.L217+1
	.word	.L217+1
	.word	.L217+1
	.word	.L208+1
	.word	.L217+1
	.word	.L217+1
	.word	.L217+1
	.word	.L207+1
	.word	.L217+1
	.word	.L217+1
	.word	.L217+1
	.word	.L205+1
	.p2align 1
.L209:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #12]
	b	.L210
.L208:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L210
.L207:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L210
.L205:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L210
.L217:
	nop
.L210:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L218
	cmp	r3, r2
	beq	.L211
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L218+4
	cmp	r3, r2
	bne	.L212
.L211:
	movs	r3, #1
	b	.L213
.L212:
	movs	r3, #0
.L213:
	cmp	r3, #0
	beq	.L214
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L214
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L214
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L214:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L215
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L215
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L215:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L219:
	.align	2
.L218:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_PWM_Stop_DMA, .-HAL_TIM_PWM_Stop_DMA
	.section	.text.HAL_TIM_IC_Init,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_Init, %function
HAL_TIM_IC_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L221
	movs	r3, #1
	b	.L222
.L221:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L223
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #4]
	bl	HAL_TIM_IC_MspInit
.L223:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	TIM_Base_SetConfig
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L222:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IC_Init, .-HAL_TIM_IC_Init
	.section	.text.HAL_TIM_IC_DeInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_DeInit, %function
HAL_TIM_IC_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L225
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L225
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L225:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_IC_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IC_DeInit, .-HAL_TIM_IC_DeInit
	.section	.text.HAL_TIM_IC_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_IC_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_MspInit, %function
HAL_TIM_IC_MspInit:
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
	.size	HAL_TIM_IC_MspInit, .-HAL_TIM_IC_MspInit
	.section	.text.HAL_TIM_IC_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_IC_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_MspDeInit, %function
HAL_TIM_IC_MspDeInit:
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
	.size	HAL_TIM_IC_MspDeInit, .-HAL_TIM_IC_MspDeInit
	.section	.text.HAL_TIM_IC_Start,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_Start, %function
HAL_TIM_IC_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IC_Start, .-HAL_TIM_IC_Start
	.section	.text.HAL_TIM_IC_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_Stop, %function
HAL_TIM_IC_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L232
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L232
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L232:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IC_Stop, .-HAL_TIM_IC_Stop
	.section	.text.HAL_TIM_IC_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_Start_IT, %function
HAL_TIM_IC_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L243
	adr	r2, .L237
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L237:
	.word	.L240+1
	.word	.L243+1
	.word	.L243+1
	.word	.L243+1
	.word	.L239+1
	.word	.L243+1
	.word	.L243+1
	.word	.L243+1
	.word	.L238+1
	.word	.L243+1
	.word	.L243+1
	.word	.L243+1
	.word	.L236+1
	.p2align 1
.L240:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	b	.L241
.L239:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	b	.L241
.L238:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3, #12]
	b	.L241
.L236:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3, #12]
	b	.L241
.L243:
	nop
.L241:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IC_Start_IT, .-HAL_TIM_IC_Start_IT
	.section	.text.HAL_TIM_IC_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_Stop_IT, %function
HAL_TIM_IC_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L254
	adr	r2, .L247
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L247:
	.word	.L250+1
	.word	.L254+1
	.word	.L254+1
	.word	.L254+1
	.word	.L249+1
	.word	.L254+1
	.word	.L254+1
	.word	.L254+1
	.word	.L248+1
	.word	.L254+1
	.word	.L254+1
	.word	.L254+1
	.word	.L246+1
	.p2align 1
.L250:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	b	.L251
.L249:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
	b	.L251
.L248:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8
	str	r2, [r3, #12]
	b	.L251
.L246:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3, #12]
	b	.L251
.L254:
	nop
.L251:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L252
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L252
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L252:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IC_Stop_IT, .-HAL_TIM_IC_Stop_IT
	.section	.text.HAL_TIM_IC_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_Start_DMA, %function
HAL_TIM_IC_Start_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L256
	movs	r3, #2
	b	.L257
.L256:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L258
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L259
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	beq	.L259
	movs	r3, #1
	b	.L257
.L259:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L258:
	ldr	r3, [r7, #8]
	cmp	r3, #12
	bhi	.L267
	adr	r2, .L262
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L262:
	.word	.L265+1
	.word	.L267+1
	.word	.L267+1
	.word	.L267+1
	.word	.L264+1
	.word	.L267+1
	.word	.L267+1
	.word	.L267+1
	.word	.L263+1
	.word	.L267+1
	.word	.L267+1
	.word	.L267+1
	.word	.L261+1
	.p2align 1
.L265:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L268
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L268+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #52
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3, #12]
	b	.L266
.L264:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L268
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L268+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #56
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L266
.L263:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L268
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L268+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #60
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L266
.L261:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L268
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L268+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #64
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L266
.L267:
	nop
.L266:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L257:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L269:
	.align	2
.L268:
	.word	TIM_DMACaptureCplt
	.word	TIM_DMAError
	.size	HAL_TIM_IC_Start_DMA, .-HAL_TIM_IC_Start_DMA
	.section	.text.HAL_TIM_IC_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_Stop_DMA, %function
HAL_TIM_IC_Stop_DMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L280
	adr	r2, .L273
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L273:
	.word	.L276+1
	.word	.L280+1
	.word	.L280+1
	.word	.L280+1
	.word	.L275+1
	.word	.L280+1
	.word	.L280+1
	.word	.L280+1
	.word	.L274+1
	.word	.L280+1
	.word	.L280+1
	.word	.L280+1
	.word	.L272+1
	.p2align 1
.L276:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #12]
	b	.L277
.L275:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L277
.L274:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L277
.L272:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L277
.L280:
	nop
.L277:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L278
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L278
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L278:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IC_Stop_DMA, .-HAL_TIM_IC_Stop_DMA
	.section	.text.HAL_TIM_OnePulse_Init,"ax",%progbits
	.align	1
	.global	HAL_TIM_OnePulse_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_Init, %function
HAL_TIM_OnePulse_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L282
	movs	r3, #1
	b	.L283
.L282:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L284
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #4]
	bl	HAL_TIM_OnePulse_MspInit
.L284:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	TIM_Base_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L283:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_OnePulse_Init, .-HAL_TIM_OnePulse_Init
	.section	.text.HAL_TIM_OnePulse_DeInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_OnePulse_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_DeInit, %function
HAL_TIM_OnePulse_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L286
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L286
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L286:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_OnePulse_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_OnePulse_DeInit, .-HAL_TIM_OnePulse_DeInit
	.section	.text.HAL_TIM_OnePulse_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_OnePulse_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_MspInit, %function
HAL_TIM_OnePulse_MspInit:
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
	.size	HAL_TIM_OnePulse_MspInit, .-HAL_TIM_OnePulse_MspInit
	.section	.text.HAL_TIM_OnePulse_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_OnePulse_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_MspDeInit, %function
HAL_TIM_OnePulse_MspDeInit:
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
	.size	HAL_TIM_OnePulse_MspDeInit, .-HAL_TIM_OnePulse_MspDeInit
	.section	.text.HAL_TIM_OnePulse_Start,"ax",%progbits
	.align	1
	.global	HAL_TIM_OnePulse_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_Start, %function
HAL_TIM_OnePulse_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L296
	cmp	r3, r2
	beq	.L291
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L296+4
	cmp	r3, r2
	bne	.L292
.L291:
	movs	r3, #1
	b	.L293
.L292:
	movs	r3, #0
.L293:
	cmp	r3, #0
	beq	.L294
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
.L294:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L297:
	.align	2
.L296:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OnePulse_Start, .-HAL_TIM_OnePulse_Start
	.section	.text.HAL_TIM_OnePulse_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIM_OnePulse_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_Stop, %function
HAL_TIM_OnePulse_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L305
	cmp	r3, r2
	beq	.L299
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L305+4
	cmp	r3, r2
	bne	.L300
.L299:
	movs	r3, #1
	b	.L301
.L300:
	movs	r3, #0
.L301:
	cmp	r3, #0
	beq	.L302
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L302
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L302
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L302:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L303
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L303
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L303:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L306:
	.align	2
.L305:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OnePulse_Stop, .-HAL_TIM_OnePulse_Stop
	.section	.text.HAL_TIM_OnePulse_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_OnePulse_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_Start_IT, %function
HAL_TIM_OnePulse_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L313
	cmp	r3, r2
	beq	.L308
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L313+4
	cmp	r3, r2
	bne	.L309
.L308:
	movs	r3, #1
	b	.L310
.L309:
	movs	r3, #0
.L310:
	cmp	r3, #0
	beq	.L311
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
.L311:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L314:
	.align	2
.L313:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OnePulse_Start_IT, .-HAL_TIM_OnePulse_Start_IT
	.section	.text.HAL_TIM_OnePulse_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_OnePulse_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_Stop_IT, %function
HAL_TIM_OnePulse_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L322
	cmp	r3, r2
	beq	.L316
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L322+4
	cmp	r3, r2
	bne	.L317
.L316:
	movs	r3, #1
	b	.L318
.L317:
	movs	r3, #0
.L318:
	cmp	r3, #0
	beq	.L319
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L319
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L319
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L319:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L320
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L320
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L320:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L323:
	.align	2
.L322:
	.word	1073807360
	.word	1073808384
	.size	HAL_TIM_OnePulse_Stop_IT, .-HAL_TIM_OnePulse_Stop_IT
	.section	.text.HAL_TIM_Encoder_Init,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_Init, %function
HAL_TIM_Encoder_Init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L325
	movs	r3, #1
	b	.L326
.L325:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L327
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #4]
	bl	HAL_TIM_Encoder_MspInit
.L327:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #7
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	TIM_Base_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #768
	bic	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	bic	r3, r3, #3072
	bic	r3, r3, #12
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	bic	r3, r3, #61440
	bic	r3, r3, #240
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	lsls	r2, r3, #4
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #12
	orrs	r3, r3, r2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	bic	r3, r3, #34
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #136
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #4
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L326:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Encoder_Init, .-HAL_TIM_Encoder_Init
	.section	.text.HAL_TIM_Encoder_DeInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_DeInit, %function
HAL_TIM_Encoder_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L329
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L329
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L329:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_Encoder_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Encoder_DeInit, .-HAL_TIM_Encoder_DeInit
	.section	.text.HAL_TIM_Encoder_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_Encoder_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_MspInit, %function
HAL_TIM_Encoder_MspInit:
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
	.size	HAL_TIM_Encoder_MspInit, .-HAL_TIM_Encoder_MspInit
	.section	.text.HAL_TIM_Encoder_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_TIM_Encoder_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_MspDeInit, %function
HAL_TIM_Encoder_MspDeInit:
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
	.size	HAL_TIM_Encoder_MspDeInit, .-HAL_TIM_Encoder_MspDeInit
	.section	.text.HAL_TIM_Encoder_Start,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_Start, %function
HAL_TIM_Encoder_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L334
	ldr	r3, [r7]
	cmp	r3, #4
	beq	.L335
	b	.L339
.L334:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	b	.L337
.L335:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	b	.L337
.L339:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	nop
.L337:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Encoder_Start, .-HAL_TIM_Encoder_Start
	.section	.text.HAL_TIM_Encoder_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_Stop, %function
HAL_TIM_Encoder_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L341
	ldr	r3, [r7]
	cmp	r3, #4
	beq	.L342
	b	.L347
.L341:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	b	.L344
.L342:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	b	.L344
.L347:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	nop
.L344:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L345
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L345
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L345:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Encoder_Stop, .-HAL_TIM_Encoder_Stop
	.section	.text.HAL_TIM_Encoder_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_Start_IT, %function
HAL_TIM_Encoder_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L349
	ldr	r3, [r7]
	cmp	r3, #4
	beq	.L350
	b	.L354
.L349:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	b	.L352
.L350:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	b	.L352
.L354:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	nop
.L352:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Encoder_Start_IT, .-HAL_TIM_Encoder_Start_IT
	.section	.text.HAL_TIM_Encoder_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_Stop_IT, %function
HAL_TIM_Encoder_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L356
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	b	.L357
.L356:
	ldr	r3, [r7]
	cmp	r3, #4
	bne	.L358
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
	b	.L357
.L358:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
.L357:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L359
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L359
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L359:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Encoder_Stop_IT, .-HAL_TIM_Encoder_Stop_IT
	.section	.text.HAL_TIM_Encoder_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_Start_DMA, %function
HAL_TIM_Encoder_Start_DMA:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L362
	movs	r3, #2
	b	.L363
.L362:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L364
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L365
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L366
.L365:
	ldrh	r3, [r7, #24]
	cmp	r3, #0
	beq	.L366
	movs	r3, #1
	b	.L363
.L366:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L364:
	ldr	r3, [r7, #8]
	cmp	r3, #24
	beq	.L367
	ldr	r3, [r7, #8]
	cmp	r3, #24
	bhi	.L372
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L369
	ldr	r3, [r7, #8]
	cmp	r3, #4
	beq	.L370
	b	.L372
.L369:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L373
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L373+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #52
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #24]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	b	.L371
.L370:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L373
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L373+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #56
	mov	r1, r3
	ldr	r2, [r7]
	ldrh	r3, [r7, #24]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	b	.L371
.L367:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L373
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L373+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #52
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #24]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L373
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L373+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #56
	mov	r1, r3
	ldr	r2, [r7]
	ldrh	r3, [r7, #24]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L371
.L372:
	nop
.L371:
	movs	r3, #0
.L363:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L374:
	.align	2
.L373:
	.word	TIM_DMACaptureCplt
	.word	TIM_DMAError
	.size	HAL_TIM_Encoder_Start_DMA, .-HAL_TIM_Encoder_Start_DMA
	.section	.text.HAL_TIM_Encoder_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_Stop_DMA, %function
HAL_TIM_Encoder_Stop_DMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L376
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #12]
	b	.L377
.L376:
	ldr	r3, [r7]
	cmp	r3, #4
	bne	.L378
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L377
.L378:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #4
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #12]
.L377:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L379
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L379
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L379:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_Encoder_Stop_DMA, .-HAL_TIM_Encoder_Stop_DMA
	.section	.text.HAL_TIM_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_TIM_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IRQHandler, %function
HAL_TIM_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L382
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L382
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L383
	ldr	r0, [r7, #4]
	bl	HAL_TIM_IC_CaptureCallback
	b	.L384
.L383:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_OC_DelayElapsedCallback
	ldr	r0, [r7, #4]
	bl	HAL_TIM_PWM_PulseFinishedCallback
.L384:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
.L382:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L385
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L385
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #4
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	and	r3, r3, #768
	cmp	r3, #0
	beq	.L386
	ldr	r0, [r7, #4]
	bl	HAL_TIM_IC_CaptureCallback
	b	.L387
.L386:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_OC_DelayElapsedCallback
	ldr	r0, [r7, #4]
	bl	HAL_TIM_PWM_PulseFinishedCallback
.L387:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
.L385:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	and	r3, r3, #8
	cmp	r3, #8
	bne	.L388
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #8
	cmp	r3, #8
	bne	.L388
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #8
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L389
	ldr	r0, [r7, #4]
	bl	HAL_TIM_IC_CaptureCallback
	b	.L390
.L389:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_OC_DelayElapsedCallback
	ldr	r0, [r7, #4]
	bl	HAL_TIM_PWM_PulseFinishedCallback
.L390:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
.L388:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L391
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L391
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #16
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #8
	strb	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	and	r3, r3, #768
	cmp	r3, #0
	beq	.L392
	ldr	r0, [r7, #4]
	bl	HAL_TIM_IC_CaptureCallback
	b	.L393
.L392:
	ldr	r0, [r7, #4]
	bl	HAL_TIM_OC_DelayElapsedCallback
	ldr	r0, [r7, #4]
	bl	HAL_TIM_PWM_PulseFinishedCallback
.L393:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
.L391:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L394
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L394
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #1
	str	r2, [r3, #16]
	ldr	r0, [r7, #4]
	bl	HAL_TIM_PeriodElapsedCallback
.L394:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	and	r3, r3, #128
	cmp	r3, #128
	bne	.L395
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #128
	cmp	r3, #128
	bne	.L395
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #128
	str	r2, [r3, #16]
	ldr	r0, [r7, #4]
	bl	HAL_TIMEx_BreakCallback
.L395:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	and	r3, r3, #64
	cmp	r3, #64
	bne	.L396
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #64
	cmp	r3, #64
	bne	.L396
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #64
	str	r2, [r3, #16]
	ldr	r0, [r7, #4]
	bl	HAL_TIM_TriggerCallback
.L396:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	and	r3, r3, #32
	cmp	r3, #32
	bne	.L398
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #32
	cmp	r3, #32
	bne	.L398
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #32
	str	r2, [r3, #16]
	ldr	r0, [r7, #4]
	bl	HAL_TIMEx_CommutationCallback
.L398:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IRQHandler, .-HAL_TIM_IRQHandler
	.section	.text.HAL_TIM_OC_ConfigChannel,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_ConfigChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_ConfigChannel, %function
HAL_TIM_OC_ConfigChannel:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L400
	movs	r3, #2
	b	.L401
.L400:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	cmp	r3, #12
	bhi	.L409
	adr	r2, .L404
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L404:
	.word	.L407+1
	.word	.L409+1
	.word	.L409+1
	.word	.L409+1
	.word	.L406+1
	.word	.L409+1
	.word	.L409+1
	.word	.L409+1
	.word	.L405+1
	.word	.L409+1
	.word	.L409+1
	.word	.L409+1
	.word	.L403+1
	.p2align 1
.L407:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_OC1_SetConfig
	b	.L408
.L406:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_OC2_SetConfig
	b	.L408
.L405:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_OC3_SetConfig
	b	.L408
.L403:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_OC4_SetConfig
	b	.L408
.L409:
	nop
.L408:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L401:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_OC_ConfigChannel, .-HAL_TIM_OC_ConfigChannel
	.section	.text.HAL_TIM_IC_ConfigChannel,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_ConfigChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_ConfigChannel, %function
HAL_TIM_IC_ConfigChannel:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L411
	movs	r3, #2
	b	.L412
.L411:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L413
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	ldr	r1, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	bl	TIM_TI1_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #12
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	b	.L414
.L413:
	ldr	r3, [r7, #4]
	cmp	r3, #4
	bne	.L415
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	ldr	r1, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	bl	TIM_TI2_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #3072
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	b	.L414
.L415:
	ldr	r3, [r7, #4]
	cmp	r3, #8
	bne	.L416
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	ldr	r1, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	bl	TIM_TI3_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #12
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #28]
	b	.L414
.L416:
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	ldr	r1, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	bl	TIM_TI4_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #3072
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #28]
.L414:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L412:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_IC_ConfigChannel, .-HAL_TIM_IC_ConfigChannel
	.section	.text.HAL_TIM_PWM_ConfigChannel,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_ConfigChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_ConfigChannel, %function
HAL_TIM_PWM_ConfigChannel:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L418
	movs	r3, #2
	b	.L419
.L418:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	cmp	r3, #12
	bhi	.L427
	adr	r2, .L422
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L422:
	.word	.L425+1
	.word	.L427+1
	.word	.L427+1
	.word	.L427+1
	.word	.L424+1
	.word	.L427+1
	.word	.L427+1
	.word	.L427+1
	.word	.L423+1
	.word	.L427+1
	.word	.L427+1
	.word	.L427+1
	.word	.L421+1
	.p2align 1
.L425:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_OC1_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	b	.L426
.L424:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_OC2_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	lsls	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	b	.L426
.L423:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_OC3_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #28]
	b	.L426
.L421:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_OC4_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	lsls	r2, r3, #8
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #28]
	b	.L426
.L427:
	nop
.L426:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L419:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_PWM_ConfigChannel, .-HAL_TIM_PWM_ConfigChannel
	.section	.text.HAL_TIM_OnePulse_ConfigChannel,"ax",%progbits
	.align	1
	.global	HAL_TIM_OnePulse_ConfigChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_ConfigChannel, %function
HAL_TIM_OnePulse_ConfigChannel:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L429
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L430
	movs	r3, #2
	b	.L440
.L430:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L432
	ldr	r3, [r7, #4]
	cmp	r3, #4
	beq	.L433
	b	.L435
.L432:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	TIM_OC1_SetConfig
	b	.L435
.L433:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	TIM_OC2_SetConfig
	nop
.L435:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L436
	ldr	r3, [r7]
	cmp	r3, #4
	beq	.L437
	b	.L439
.L436:
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	bl	TIM_TI1_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #12
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #112
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #80
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #7
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #6
	str	r2, [r3, #8]
	b	.L439
.L437:
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	bl	TIM_TI2_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #3072
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #112
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #96
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #7
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #6
	str	r2, [r3, #8]
	nop
.L439:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	b	.L440
.L429:
	movs	r3, #1
.L440:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_OnePulse_ConfigChannel, .-HAL_TIM_OnePulse_ConfigChannel
	.section	.text.HAL_TIM_DMABurst_WriteStart,"ax",%progbits
	.align	1
	.global	HAL_TIM_DMABurst_WriteStart
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_DMABurst_WriteStart, %function
HAL_TIM_DMABurst_WriteStart:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L442
	movs	r3, #2
	b	.L443
.L442:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L444
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L445
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L445
	movs	r3, #1
	b	.L443
.L445:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L444:
	ldr	r3, [r7, #4]
	cmp	r3, #16384
	beq	.L446
	ldr	r3, [r7, #4]
	cmp	r3, #16384
	bhi	.L455
	ldr	r3, [r7, #4]
	cmp	r3, #8192
	beq	.L448
	ldr	r3, [r7, #4]
	cmp	r3, #8192
	bhi	.L455
	ldr	r3, [r7, #4]
	cmp	r3, #4096
	beq	.L449
	ldr	r3, [r7, #4]
	cmp	r3, #4096
	bhi	.L455
	ldr	r3, [r7, #4]
	cmp	r3, #2048
	beq	.L450
	ldr	r3, [r7, #4]
	cmp	r3, #2048
	bhi	.L455
	ldr	r3, [r7, #4]
	cmp	r3, #1024
	beq	.L451
	ldr	r3, [r7, #4]
	cmp	r3, #1024
	bhi	.L455
	ldr	r3, [r7, #4]
	cmp	r3, #256
	beq	.L452
	ldr	r3, [r7, #4]
	cmp	r3, #512
	beq	.L453
	b	.L455
.L452:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, .L456
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, .L456+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #28]
	ldr	r1, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r2, r3
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L454
.L453:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L456+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L456+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r1, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r2, r3
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L454
.L451:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L456+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L456+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r1, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r2, r3
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L454
.L450:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L456+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L456+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r1, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r2, r3
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L454
.L449:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L456+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L456+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #44]
	ldr	r1, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r2, r3
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L454
.L448:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L456+12
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L456+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #48]
	ldr	r1, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r2, r3
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L454
.L446:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L456+16
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L456+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #52]
	ldr	r1, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r2, r3
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L454
.L455:
	nop
.L454:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #24]
	orrs	r2, r2, r1
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	orrs	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L443:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L457:
	.align	2
.L456:
	.word	TIM_DMAPeriodElapsedCplt
	.word	TIM_DMAError
	.word	TIM_DMADelayPulseCplt
	.word	TIMEx_DMACommutationCplt
	.word	TIM_DMATriggerCplt
	.size	HAL_TIM_DMABurst_WriteStart, .-HAL_TIM_DMABurst_WriteStart
	.section	.text.HAL_TIM_DMABurst_WriteStop,"ax",%progbits
	.align	1
	.global	HAL_TIM_DMABurst_WriteStop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_DMABurst_WriteStop, %function
HAL_TIM_DMABurst_WriteStop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #16384
	beq	.L459
	ldr	r3, [r7]
	cmp	r3, #16384
	bhi	.L469
	ldr	r3, [r7]
	cmp	r3, #8192
	beq	.L461
	ldr	r3, [r7]
	cmp	r3, #8192
	bhi	.L469
	ldr	r3, [r7]
	cmp	r3, #4096
	beq	.L462
	ldr	r3, [r7]
	cmp	r3, #4096
	bhi	.L469
	ldr	r3, [r7]
	cmp	r3, #2048
	beq	.L463
	ldr	r3, [r7]
	cmp	r3, #2048
	bhi	.L469
	ldr	r3, [r7]
	cmp	r3, #1024
	beq	.L464
	ldr	r3, [r7]
	cmp	r3, #1024
	bhi	.L469
	ldr	r3, [r7]
	cmp	r3, #256
	beq	.L465
	ldr	r3, [r7]
	cmp	r3, #512
	beq	.L466
	b	.L469
.L465:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L467
.L466:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L467
.L464:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L467
.L463:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L467
.L462:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L467
.L461:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L467
.L459:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L467
.L469:
	nop
.L467:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #12]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_DMABurst_WriteStop, .-HAL_TIM_DMABurst_WriteStop
	.section	.text.HAL_TIM_DMABurst_ReadStart,"ax",%progbits
	.align	1
	.global	HAL_TIM_DMABurst_ReadStart
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_DMABurst_ReadStart, %function
HAL_TIM_DMABurst_ReadStart:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L471
	movs	r3, #2
	b	.L472
.L471:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L473
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L474
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L474
	movs	r3, #1
	b	.L472
.L474:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L473:
	ldr	r3, [r7, #4]
	cmp	r3, #16384
	beq	.L475
	ldr	r3, [r7, #4]
	cmp	r3, #16384
	bhi	.L484
	ldr	r3, [r7, #4]
	cmp	r3, #8192
	beq	.L477
	ldr	r3, [r7, #4]
	cmp	r3, #8192
	bhi	.L484
	ldr	r3, [r7, #4]
	cmp	r3, #4096
	beq	.L478
	ldr	r3, [r7, #4]
	cmp	r3, #4096
	bhi	.L484
	ldr	r3, [r7, #4]
	cmp	r3, #2048
	beq	.L479
	ldr	r3, [r7, #4]
	cmp	r3, #2048
	bhi	.L484
	ldr	r3, [r7, #4]
	cmp	r3, #1024
	beq	.L480
	ldr	r3, [r7, #4]
	cmp	r3, #1024
	bhi	.L484
	ldr	r3, [r7, #4]
	cmp	r3, #256
	beq	.L481
	ldr	r3, [r7, #4]
	cmp	r3, #512
	beq	.L482
	b	.L484
.L481:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, .L485
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, .L485+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L483
.L482:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L485+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L485+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L483
.L480:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L485+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L485+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L483
.L479:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L485+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L485+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L483
.L478:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L485+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L485+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L483
.L477:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L485+12
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L485+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L483
.L475:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L485+16
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L485+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #8
	adds	r3, r3, #1
	bl	HAL_DMA_Start_IT
	b	.L483
.L484:
	nop
.L483:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #24]
	orrs	r2, r2, r1
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	orrs	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L472:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L486:
	.align	2
.L485:
	.word	TIM_DMAPeriodElapsedCplt
	.word	TIM_DMAError
	.word	TIM_DMACaptureCplt
	.word	TIMEx_DMACommutationCplt
	.word	TIM_DMATriggerCplt
	.size	HAL_TIM_DMABurst_ReadStart, .-HAL_TIM_DMABurst_ReadStart
	.section	.text.HAL_TIM_DMABurst_ReadStop,"ax",%progbits
	.align	1
	.global	HAL_TIM_DMABurst_ReadStop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_DMABurst_ReadStop, %function
HAL_TIM_DMABurst_ReadStop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #16384
	beq	.L488
	ldr	r3, [r7]
	cmp	r3, #16384
	bhi	.L498
	ldr	r3, [r7]
	cmp	r3, #8192
	beq	.L490
	ldr	r3, [r7]
	cmp	r3, #8192
	bhi	.L498
	ldr	r3, [r7]
	cmp	r3, #4096
	beq	.L491
	ldr	r3, [r7]
	cmp	r3, #4096
	bhi	.L498
	ldr	r3, [r7]
	cmp	r3, #2048
	beq	.L492
	ldr	r3, [r7]
	cmp	r3, #2048
	bhi	.L498
	ldr	r3, [r7]
	cmp	r3, #1024
	beq	.L493
	ldr	r3, [r7]
	cmp	r3, #1024
	bhi	.L498
	ldr	r3, [r7]
	cmp	r3, #256
	beq	.L494
	ldr	r3, [r7]
	cmp	r3, #512
	beq	.L495
	b	.L498
.L494:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L496
.L495:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L496
.L493:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L496
.L492:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L496
.L491:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L496
.L490:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L496
.L488:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	HAL_DMA_Abort
	b	.L496
.L498:
	nop
.L496:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #12]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_DMABurst_ReadStop, .-HAL_TIM_DMABurst_ReadStop
	.section	.text.HAL_TIM_GenerateEvent,"ax",%progbits
	.align	1
	.global	HAL_TIM_GenerateEvent
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_GenerateEvent, %function
HAL_TIM_GenerateEvent:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L500
	movs	r3, #2
	b	.L501
.L500:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L501:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_GenerateEvent, .-HAL_TIM_GenerateEvent
	.section	.text.HAL_TIM_ConfigOCrefClear,"ax",%progbits
	.align	1
	.global	HAL_TIM_ConfigOCrefClear
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_ConfigOCrefClear, %function
HAL_TIM_ConfigOCrefClear:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L503
	movs	r3, #2
	b	.L504
.L503:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L505
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	bl	TIM_ETR_SetConfig
.L505:
	ldr	r3, [r7, #4]
	cmp	r3, #12
	bhi	.L521
	adr	r2, .L508
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L508:
	.word	.L511+1
	.word	.L521+1
	.word	.L521+1
	.word	.L521+1
	.word	.L510+1
	.word	.L521+1
	.word	.L521+1
	.word	.L521+1
	.word	.L509+1
	.word	.L521+1
	.word	.L521+1
	.word	.L521+1
	.word	.L507+1
	.p2align 1
.L511:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L512
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #24]
	b	.L514
.L512:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #24]
	b	.L514
.L510:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L515
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #24]
	b	.L514
.L515:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #24]
	b	.L514
.L509:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L517
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #28]
	b	.L514
.L517:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #28]
	b	.L514
.L507:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L519
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #28]
	b	.L514
.L519:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #28]
	b	.L514
.L521:
	nop
.L514:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L504:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_ConfigOCrefClear, .-HAL_TIM_ConfigOCrefClear
	.section	.text.HAL_TIM_ConfigClockSource,"ax",%progbits
	.align	1
	.global	HAL_TIM_ConfigClockSource
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_ConfigClockSource, %function
HAL_TIM_ConfigClockSource:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L523
	movs	r3, #2
	b	.L524
.L523:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #119
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #65280
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #8192
	beq	.L525
	cmp	r3, #8192
	bhi	.L537
	cmp	r3, #4096
	beq	.L527
	cmp	r3, #4096
	bhi	.L537
	cmp	r3, #112
	beq	.L528
	cmp	r3, #112
	bhi	.L537
	cmp	r3, #96
	beq	.L529
	cmp	r3, #96
	bhi	.L537
	cmp	r3, #80
	beq	.L530
	cmp	r3, #80
	bhi	.L537
	cmp	r3, #64
	beq	.L531
	cmp	r3, #64
	bhi	.L537
	cmp	r3, #48
	beq	.L532
	cmp	r3, #48
	bhi	.L537
	cmp	r3, #32
	beq	.L533
	cmp	r3, #32
	bhi	.L537
	cmp	r3, #0
	beq	.L534
	cmp	r3, #16
	beq	.L535
	b	.L537
.L527:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #7
	str	r2, [r3, #8]
	b	.L536
.L528:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	bl	TIM_ETR_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #119
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	orr	r3, r3, #119
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	b	.L536
.L525:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	bl	TIM_ETR_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #16384
	str	r2, [r3, #8]
	b	.L536
.L530:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	mov	r2, r3
	bl	TIM_TI1_ConfigInputStage
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #80
	mov	r0, r3
	bl	TIM_ITRx_SetConfig
	b	.L536
.L529:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	mov	r2, r3
	bl	TIM_TI2_ConfigInputStage
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #96
	mov	r0, r3
	bl	TIM_ITRx_SetConfig
	b	.L536
.L531:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	mov	r2, r3
	bl	TIM_TI1_ConfigInputStage
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #64
	mov	r0, r3
	bl	TIM_ITRx_SetConfig
	b	.L536
.L534:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	TIM_ITRx_SetConfig
	b	.L536
.L535:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #16
	mov	r0, r3
	bl	TIM_ITRx_SetConfig
	b	.L536
.L533:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #32
	mov	r0, r3
	bl	TIM_ITRx_SetConfig
	b	.L536
.L532:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #48
	mov	r0, r3
	bl	TIM_ITRx_SetConfig
	b	.L536
.L537:
	nop
.L536:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L524:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_ConfigClockSource, .-HAL_TIM_ConfigClockSource
	.section	.text.HAL_TIM_ConfigTI1Input,"ax",%progbits
	.align	1
	.global	HAL_TIM_ConfigTI1Input
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_ConfigTI1Input, %function
HAL_TIM_ConfigTI1Input:
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
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #128
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_ConfigTI1Input, .-HAL_TIM_ConfigTI1Input
	.section	.text.HAL_TIM_SlaveConfigSynchronization,"ax",%progbits
	.align	1
	.global	HAL_TIM_SlaveConfigSynchronization
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_SlaveConfigSynchronization, %function
HAL_TIM_SlaveConfigSynchronization:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L541
	movs	r3, #2
	b	.L542
.L541:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	TIM_SlaveTimer_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16384
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L542:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_SlaveConfigSynchronization, .-HAL_TIM_SlaveConfigSynchronization
	.section	.text.HAL_TIM_SlaveConfigSynchronization_IT,"ax",%progbits
	.align	1
	.global	HAL_TIM_SlaveConfigSynchronization_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_SlaveConfigSynchronization_IT, %function
HAL_TIM_SlaveConfigSynchronization_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L544
	movs	r3, #2
	b	.L545
.L544:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	TIM_SlaveTimer_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16384
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L545:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIM_SlaveConfigSynchronization_IT, .-HAL_TIM_SlaveConfigSynchronization_IT
	.section	.text.HAL_TIM_ReadCapturedValue,"ax",%progbits
	.align	1
	.global	HAL_TIM_ReadCapturedValue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_ReadCapturedValue, %function
HAL_TIM_ReadCapturedValue:
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
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L547
	movs	r3, #2
	b	.L548
.L547:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L556
	adr	r2, .L551
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L551:
	.word	.L554+1
	.word	.L556+1
	.word	.L556+1
	.word	.L556+1
	.word	.L553+1
	.word	.L556+1
	.word	.L556+1
	.word	.L556+1
	.word	.L552+1
	.word	.L556+1
	.word	.L556+1
	.word	.L556+1
	.word	.L550+1
	.p2align 1
.L554:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	str	r3, [r7, #12]
	b	.L555
.L553:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	b	.L555
.L552:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #60]
	str	r3, [r7, #12]
	b	.L555
.L550:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #64]
	str	r3, [r7, #12]
	b	.L555
.L556:
	nop
.L555:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
.L548:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_ReadCapturedValue, .-HAL_TIM_ReadCapturedValue
	.section	.text.HAL_TIM_PeriodElapsedCallback,"ax",%progbits
	.align	1
	.weak	HAL_TIM_PeriodElapsedCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PeriodElapsedCallback, %function
HAL_TIM_PeriodElapsedCallback:
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
	.size	HAL_TIM_PeriodElapsedCallback, .-HAL_TIM_PeriodElapsedCallback
	.section	.text.HAL_TIM_OC_DelayElapsedCallback,"ax",%progbits
	.align	1
	.weak	HAL_TIM_OC_DelayElapsedCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_DelayElapsedCallback, %function
HAL_TIM_OC_DelayElapsedCallback:
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
	.size	HAL_TIM_OC_DelayElapsedCallback, .-HAL_TIM_OC_DelayElapsedCallback
	.section	.text.HAL_TIM_IC_CaptureCallback,"ax",%progbits
	.align	1
	.weak	HAL_TIM_IC_CaptureCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_CaptureCallback, %function
HAL_TIM_IC_CaptureCallback:
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
	.size	HAL_TIM_IC_CaptureCallback, .-HAL_TIM_IC_CaptureCallback
	.section	.text.HAL_TIM_PWM_PulseFinishedCallback,"ax",%progbits
	.align	1
	.weak	HAL_TIM_PWM_PulseFinishedCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_PulseFinishedCallback, %function
HAL_TIM_PWM_PulseFinishedCallback:
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
	.size	HAL_TIM_PWM_PulseFinishedCallback, .-HAL_TIM_PWM_PulseFinishedCallback
	.section	.text.HAL_TIM_TriggerCallback,"ax",%progbits
	.align	1
	.weak	HAL_TIM_TriggerCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_TriggerCallback, %function
HAL_TIM_TriggerCallback:
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
	.size	HAL_TIM_TriggerCallback, .-HAL_TIM_TriggerCallback
	.section	.text.HAL_TIM_ErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_TIM_ErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_ErrorCallback, %function
HAL_TIM_ErrorCallback:
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
	.size	HAL_TIM_ErrorCallback, .-HAL_TIM_ErrorCallback
	.section	.text.HAL_TIM_Base_GetState,"ax",%progbits
	.align	1
	.global	HAL_TIM_Base_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Base_GetState, %function
HAL_TIM_Base_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_Base_GetState, .-HAL_TIM_Base_GetState
	.section	.text.HAL_TIM_OC_GetState,"ax",%progbits
	.align	1
	.global	HAL_TIM_OC_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OC_GetState, %function
HAL_TIM_OC_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_OC_GetState, .-HAL_TIM_OC_GetState
	.section	.text.HAL_TIM_PWM_GetState,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_GetState, %function
HAL_TIM_PWM_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_PWM_GetState, .-HAL_TIM_PWM_GetState
	.section	.text.HAL_TIM_IC_GetState,"ax",%progbits
	.align	1
	.global	HAL_TIM_IC_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_IC_GetState, %function
HAL_TIM_IC_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_IC_GetState, .-HAL_TIM_IC_GetState
	.section	.text.HAL_TIM_OnePulse_GetState,"ax",%progbits
	.align	1
	.global	HAL_TIM_OnePulse_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_OnePulse_GetState, %function
HAL_TIM_OnePulse_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_OnePulse_GetState, .-HAL_TIM_OnePulse_GetState
	.section	.text.HAL_TIM_Encoder_GetState,"ax",%progbits
	.align	1
	.global	HAL_TIM_Encoder_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_Encoder_GetState, %function
HAL_TIM_Encoder_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIM_Encoder_GetState, .-HAL_TIM_Encoder_GetState
	.section	.text.TIM_Base_SetConfig,"ax",%progbits
	.align	1
	.global	TIM_Base_SetConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_Base_SetConfig, %function
TIM_Base_SetConfig:
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
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L588
	cmp	r3, r2
	beq	.L576
	ldr	r3, [r7, #4]
	cmp	r3, #1073741824
	beq	.L576
	ldr	r3, [r7, #4]
	ldr	r2, .L588+4
	cmp	r3, r2
	beq	.L576
	ldr	r3, [r7, #4]
	ldr	r2, .L588+8
	cmp	r3, r2
	beq	.L576
	ldr	r3, [r7, #4]
	ldr	r2, .L588+12
	cmp	r3, r2
	beq	.L576
	ldr	r3, [r7, #4]
	ldr	r2, .L588+16
	cmp	r3, r2
	bne	.L577
.L576:
	movs	r3, #1
	b	.L578
.L577:
	movs	r3, #0
.L578:
	cmp	r3, #0
	beq	.L579
	ldr	r3, [r7, #12]
	bic	r3, r3, #112
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L579:
	ldr	r3, [r7, #4]
	ldr	r2, .L588
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	cmp	r3, #1073741824
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+4
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+8
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+12
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+16
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+20
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+24
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+28
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+32
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+36
	cmp	r3, r2
	beq	.L580
	ldr	r3, [r7, #4]
	ldr	r2, .L588+40
	cmp	r3, r2
	bne	.L581
.L580:
	movs	r3, #1
	b	.L582
.L581:
	movs	r3, #0
.L582:
	cmp	r3, #0
	beq	.L583
	ldr	r3, [r7, #12]
	bic	r3, r3, #768
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L583:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r2, .L588
	cmp	r3, r2
	beq	.L584
	ldr	r3, [r7, #4]
	ldr	r2, .L588+16
	cmp	r3, r2
	bne	.L585
.L584:
	movs	r3, #1
	b	.L586
.L585:
	movs	r3, #0
.L586:
	cmp	r3, #0
	beq	.L587
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
.L587:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #20]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L589:
	.align	2
.L588:
	.word	1073807360
	.word	1073742848
	.word	1073743872
	.word	1073744896
	.word	1073808384
	.word	1073823744
	.word	1073824768
	.word	1073825792
	.word	1073747968
	.word	1073748992
	.word	1073750016
	.size	TIM_Base_SetConfig, .-TIM_Base_SetConfig
	.section	.text.TIM_TI1_SetConfig,"ax",%progbits
	.align	1
	.global	TIM_TI1_SetConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_TI1_SetConfig, %function
TIM_TI1_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	bic	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, .L596
	cmp	r3, r2
	beq	.L591
	ldr	r3, [r7, #12]
	cmp	r3, #1073741824
	beq	.L591
	ldr	r3, [r7, #12]
	ldr	r2, .L596+4
	cmp	r3, r2
	beq	.L591
	ldr	r3, [r7, #12]
	ldr	r2, .L596+8
	cmp	r3, r2
	beq	.L591
	ldr	r3, [r7, #12]
	ldr	r2, .L596+12
	cmp	r3, r2
	beq	.L591
	ldr	r3, [r7, #12]
	ldr	r2, .L596+16
	cmp	r3, r2
	beq	.L591
	ldr	r3, [r7, #12]
	ldr	r2, .L596+20
	cmp	r3, r2
	beq	.L591
	ldr	r3, [r7, #12]
	ldr	r2, .L596+24
	cmp	r3, r2
	bne	.L592
.L591:
	movs	r3, #1
	b	.L593
.L592:
	movs	r3, #0
.L593:
	cmp	r3, #0
	beq	.L594
	ldr	r3, [r7, #20]
	bic	r3, r3, #3
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	b	.L595
.L594:
	ldr	r3, [r7, #20]
	bic	r3, r3, #3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	orr	r3, r3, #1
	str	r3, [r7, #20]
.L595:
	ldr	r3, [r7, #20]
	bic	r3, r3, #240
	str	r3, [r7, #20]
	ldr	r3, [r7]
	lsls	r3, r3, #4
	uxtb	r3, r3
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #10
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	and	r3, r3, #10
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L597:
	.align	2
.L596:
	.word	1073807360
	.word	1073742848
	.word	1073743872
	.word	1073744896
	.word	1073808384
	.word	1073823744
	.word	1073747968
	.size	TIM_TI1_SetConfig, .-TIM_TI1_SetConfig
	.section	.text.TIM_OC2_SetConfig,"ax",%progbits
	.align	1
	.global	TIM_OC2_SetConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_OC2_SetConfig, %function
TIM_OC2_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	bic	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #28672
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #768
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #8
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	bic	r3, r3, #32
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #4
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L603
	cmp	r3, r2
	beq	.L599
	ldr	r3, [r7, #4]
	ldr	r2, .L603+4
	cmp	r3, r2
	bne	.L600
.L599:
	movs	r3, #1
	b	.L601
.L600:
	movs	r3, #0
.L601:
	cmp	r3, #0
	beq	.L602
	ldr	r3, [r7, #20]
	bic	r3, r3, #128
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #64
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #1024
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	bic	r3, r3, #2048
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
.L602:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L604:
	.align	2
.L603:
	.word	1073807360
	.word	1073808384
	.size	TIM_OC2_SetConfig, .-TIM_OC2_SetConfig
	.section	.text.TIM_DMADelayPulseCplt,"ax",%progbits
	.align	1
	.global	TIM_DMADelayPulseCplt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_DMADelayPulseCplt, %function
TIM_DMADelayPulseCplt:
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
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L606
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #24]
	b	.L607
.L606:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L608
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #24]
	b	.L607
.L608:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L609
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #24]
	b	.L607
.L609:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L607
	ldr	r3, [r7, #12]
	movs	r2, #8
	strb	r2, [r3, #24]
.L607:
	ldr	r0, [r7, #12]
	bl	HAL_TIM_PWM_PulseFinishedCallback
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #24]
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_DMADelayPulseCplt, .-TIM_DMADelayPulseCplt
	.section	.text.TIM_DMAError,"ax",%progbits
	.align	1
	.global	TIM_DMAError
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_DMAError, %function
TIM_DMAError:
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
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r0, [r7, #12]
	bl	HAL_TIM_ErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_DMAError, .-TIM_DMAError
	.section	.text.TIM_DMACaptureCplt,"ax",%progbits
	.align	1
	.global	TIM_DMACaptureCplt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_DMACaptureCplt, %function
TIM_DMACaptureCplt:
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
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L612
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #24]
	b	.L613
.L612:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L614
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #24]
	b	.L613
.L614:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L615
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #24]
	b	.L613
.L615:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L613
	ldr	r3, [r7, #12]
	movs	r2, #8
	strb	r2, [r3, #24]
.L613:
	ldr	r0, [r7, #12]
	bl	HAL_TIM_IC_CaptureCallback
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #24]
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_DMACaptureCplt, .-TIM_DMACaptureCplt
	.section	.text.TIM_CCxChannelCmd,"ax",%progbits
	.align	1
	.global	TIM_CCxChannelCmd
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_CCxChannelCmd, %function
TIM_CCxChannelCmd:
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
	movs	r2, #1
	ldr	r3, [r7, #8]
	lsl	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #20]
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #8]
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_CCxChannelCmd, .-TIM_CCxChannelCmd
	.section	.text.TIM_DMAPeriodElapsedCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_DMAPeriodElapsedCplt, %function
TIM_DMAPeriodElapsedCplt:
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
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r0, [r7, #12]
	bl	HAL_TIM_PeriodElapsedCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_DMAPeriodElapsedCplt, .-TIM_DMAPeriodElapsedCplt
	.section	.text.TIM_DMATriggerCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_DMATriggerCplt, %function
TIM_DMATriggerCplt:
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
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r0, [r7, #12]
	bl	HAL_TIM_TriggerCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_DMATriggerCplt, .-TIM_DMATriggerCplt
	.section	.text.TIM_OC1_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_OC1_SetConfig, %function
TIM_OC1_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	bic	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #112
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	bic	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L624
	cmp	r3, r2
	beq	.L620
	ldr	r3, [r7, #4]
	ldr	r2, .L624+4
	cmp	r3, r2
	bne	.L621
.L620:
	movs	r3, #1
	b	.L622
.L621:
	movs	r3, #0
.L622:
	cmp	r3, #0
	beq	.L623
	ldr	r3, [r7, #20]
	bic	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #256
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	bic	r3, r3, #512
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
.L623:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L625:
	.align	2
.L624:
	.word	1073807360
	.word	1073808384
	.size	TIM_OC1_SetConfig, .-TIM_OC1_SetConfig
	.section	.text.TIM_OC3_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_OC3_SetConfig, %function
TIM_OC3_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	bic	r2, r3, #256
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #112
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	bic	r3, r3, #512
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #8
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L631
	cmp	r3, r2
	beq	.L627
	ldr	r3, [r7, #4]
	ldr	r2, .L631+4
	cmp	r3, r2
	bne	.L628
.L627:
	movs	r3, #1
	b	.L629
.L628:
	movs	r3, #0
.L629:
	cmp	r3, #0
	beq	.L630
	ldr	r3, [r7, #20]
	bic	r3, r3, #2048
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #8
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #1024
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #4096
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	bic	r3, r3, #8192
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #4
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #4
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
.L630:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L632:
	.align	2
.L631:
	.word	1073807360
	.word	1073808384
	.size	TIM_OC3_SetConfig, .-TIM_OC3_SetConfig
	.section	.text.TIM_OC4_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_OC4_SetConfig, %function
TIM_OC4_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	bic	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	bic	r3, r3, #28672
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	bic	r3, r3, #768
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #8
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	bic	r3, r3, #8192
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #12
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L638
	cmp	r3, r2
	beq	.L634
	ldr	r3, [r7, #4]
	ldr	r2, .L638+4
	cmp	r3, r2
	bne	.L635
.L634:
	movs	r3, #1
	b	.L636
.L635:
	movs	r3, #0
.L636:
	cmp	r3, #0
	beq	.L637
	ldr	r3, [r7, #20]
	bic	r3, r3, #16384
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #6
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
.L637:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #28]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L639:
	.align	2
.L638:
	.word	1073807360
	.word	1073808384
	.size	TIM_OC4_SetConfig, .-TIM_OC4_SetConfig
	.section	.text.TIM_SlaveTimer_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_SlaveTimer_SetConfig, %function
TIM_SlaveTimer_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #112
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #7
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #112
	beq	.L641
	cmp	r3, #112
	bhi	.L651
	cmp	r3, #96
	beq	.L643
	cmp	r3, #96
	bhi	.L651
	cmp	r3, #80
	beq	.L644
	cmp	r3, #80
	bhi	.L651
	cmp	r3, #64
	beq	.L645
	cmp	r3, #64
	bhi	.L651
	cmp	r3, #48
	beq	.L652
	cmp	r3, #48
	bhi	.L651
	cmp	r3, #32
	beq	.L653
	cmp	r3, #32
	bhi	.L651
	cmp	r3, #0
	beq	.L654
	cmp	r3, #16
	beq	.L655
	b	.L651
.L641:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	bl	TIM_ETR_SetConfig
	b	.L650
.L645:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	bic	r3, r3, #240
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #4
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
	b	.L650
.L644:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	mov	r2, r3
	bl	TIM_TI1_ConfigInputStage
	b	.L650
.L643:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	mov	r2, r3
	bl	TIM_TI2_ConfigInputStage
	b	.L650
.L651:
	nop
	b	.L656
.L652:
	nop
	b	.L656
.L653:
	nop
	b	.L656
.L654:
	nop
	b	.L656
.L655:
	nop
.L650:
.L656:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIM_SlaveTimer_SetConfig, .-TIM_SlaveTimer_SetConfig
	.section	.text.TIM_TI1_ConfigInputStage,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_TI1_ConfigInputStage, %function
TIM_TI1_ConfigInputStage:
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
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	bic	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #240
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #10
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_TI1_ConfigInputStage, .-TIM_TI1_ConfigInputStage
	.section	.text.TIM_TI2_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_TI2_SetConfig, %function
TIM_TI2_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	bic	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	bic	r3, r3, #768
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #8
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #61440
	str	r3, [r7, #20]
	ldr	r3, [r7]
	lsls	r3, r3, #12
	uxth	r3, r3
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #160
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	and	r3, r3, #160
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_TI2_SetConfig, .-TIM_TI2_SetConfig
	.section	.text.TIM_TI2_ConfigInputStage,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_TI2_ConfigInputStage, %function
TIM_TI2_ConfigInputStage:
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
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	bic	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	bic	r3, r3, #61440
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #12
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #160
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_TI2_ConfigInputStage, .-TIM_TI2_ConfigInputStage
	.section	.text.TIM_TI3_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_TI3_SetConfig, %function
TIM_TI3_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	bic	r2, r3, #256
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	bic	r3, r3, #3
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #240
	str	r3, [r7, #20]
	ldr	r3, [r7]
	lsls	r3, r3, #4
	uxtb	r3, r3
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #2560
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #8
	and	r3, r3, #2560
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_TI3_SetConfig, .-TIM_TI3_SetConfig
	.section	.text.TIM_TI4_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_TI4_SetConfig, %function
TIM_TI4_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	bic	r2, r3, #4096
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	bic	r3, r3, #768
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #8
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #61440
	str	r3, [r7, #20]
	ldr	r3, [r7]
	lsls	r3, r3, #12
	uxth	r3, r3
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	bic	r3, r3, #40960
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #12
	and	r3, r3, #40960
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_TI4_SetConfig, .-TIM_TI4_SetConfig
	.section	.text.TIM_ITRx_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_ITRx_SetConfig, %function
TIM_ITRx_SetConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #112
	str	r3, [r7, #12]
	ldrh	r3, [r7, #2]	@ movhi
	orr	r3, r3, #7
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_ITRx_SetConfig, .-TIM_ITRx_SetConfig
	.section	.text.TIM_ETR_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_ETR_SetConfig, %function
TIM_ETR_SetConfig:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #65280
	str	r3, [r7, #20]
	ldr	r3, [r7]
	lsls	r2, r3, #8
	ldr	r3, [r7, #4]
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_ETR_SetConfig, .-TIM_ETR_SetConfig
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

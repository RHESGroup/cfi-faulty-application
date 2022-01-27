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
	.file	"stm32f4xx_hal_smartcard.c"
	.text
	.section	.text.HAL_SMARTCARD_Init,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_Init, %function
HAL_SMARTCARD_Init:
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
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	ldr	r0, [r7, #4]
	bl	HAL_SMARTCARD_MspInit
.L4:
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	bic	r1, r3, #255
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	bic	r1, r3, #65280
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	lsls	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	ldr	r0, [r7, #4]
	bl	SMARTCARD_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16384
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #10
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	bic	r1, r3, #16
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #74]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SMARTCARD_Init, .-HAL_SMARTCARD_Init
	.section	.text.HAL_SMARTCARD_DeInit,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_DeInit, %function
HAL_SMARTCARD_DeInit:
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
	movs	r2, #36
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	HAL_SMARTCARD_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #74]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L7:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SMARTCARD_DeInit, .-HAL_SMARTCARD_DeInit
	.section	.text.HAL_SMARTCARD_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_SMARTCARD_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_MspInit, %function
HAL_SMARTCARD_MspInit:
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
	.size	HAL_SMARTCARD_MspInit, .-HAL_SMARTCARD_MspInit
	.section	.text.HAL_SMARTCARD_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_SMARTCARD_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_MspDeInit, %function
HAL_SMARTCARD_MspDeInit:
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
	.size	HAL_SMARTCARD_MspDeInit, .-HAL_SMARTCARD_MspDeInit
	.section	.text.HAL_SMARTCARD_Transmit,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_Transmit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_Transmit, %function
HAL_SMARTCARD_Transmit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L11
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L12
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L13
.L12:
	movs	r3, #1
	b	.L14
.L13:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L15
	movs	r3, #2
	b	.L14
.L15:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	b	.L16
.L18:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #128
	ldr	r0, [r7, #12]
	bl	SMARTCARD_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L17
	movs	r3, #3
	b	.L14
.L17:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ubfx	r2, r2, #0, #9
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L16:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L18
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #64
	ldr	r0, [r7, #12]
	bl	SMARTCARD_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L19
	movs	r3, #3
	b	.L14
.L19:
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
	b	.L14
.L11:
	movs	r3, #2
.L14:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SMARTCARD_Transmit, .-HAL_SMARTCARD_Transmit
	.section	.text.HAL_SMARTCARD_Receive,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_Receive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_Receive, %function
HAL_SMARTCARD_Receive:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #74]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L21
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L22
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L23
.L22:
	movs	r3, #1
	b	.L24
.L23:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L25
	movs	r3, #2
	b	.L24
.L25:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #74]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #62]	@ movhi
	b	.L26
.L28:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #32
	ldr	r0, [r7, #12]
	bl	SMARTCARD_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L27
	movs	r3, #3
	b	.L24
.L27:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	uxtb	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L26:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #74]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
	b	.L24
.L21:
	movs	r3, #2
.L24:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SMARTCARD_Receive, .-HAL_SMARTCARD_Receive
	.section	.text.HAL_SMARTCARD_Transmit_IT,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_Transmit_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_Transmit_IT, %function
HAL_SMARTCARD_Transmit_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L30
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L31
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L32
.L31:
	movs	r3, #1
	b	.L33
.L32:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L34
	movs	r3, #2
	b	.L33
.L34:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #12]
	movs	r3, #0
	b	.L33
.L30:
	movs	r3, #2
.L33:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_SMARTCARD_Transmit_IT, .-HAL_SMARTCARD_Transmit_IT
	.section	.text.HAL_SMARTCARD_Receive_IT,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_Receive_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_Receive_IT, %function
HAL_SMARTCARD_Receive_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #74]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L36
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L37
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L38
.L37:
	movs	r3, #1
	b	.L39
.L38:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L40
	movs	r3, #2
	b	.L39
.L40:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #74]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #20]
	movs	r3, #0
	b	.L39
.L36:
	movs	r3, #2
.L39:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_SMARTCARD_Receive_IT, .-HAL_SMARTCARD_Receive_IT
	.section	.text.HAL_SMARTCARD_Transmit_DMA,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_Transmit_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_Transmit_DMA, %function
HAL_SMARTCARD_Transmit_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L42
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L43
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L44
.L43:
	movs	r3, #1
	b	.L45
.L44:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L46
	movs	r3, #2
	b	.L45
.L46:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	ldr	r2, .L47
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	ldr	r2, .L47+4
	str	r2, [r3, #72]
	add	r3, r7, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #64]
	ldr	r3, [r7, #20]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #4
	mov	r2, r3
	ldrh	r3, [r7, #6]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #64
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
	b	.L45
.L42:
	movs	r3, #2
.L45:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L48:
	.align	2
.L47:
	.word	SMARTCARD_DMATransmitCplt
	.word	SMARTCARD_DMAError
	.size	HAL_SMARTCARD_Transmit_DMA, .-HAL_SMARTCARD_Transmit_DMA
	.section	.text.HAL_SMARTCARD_Receive_DMA,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_Receive_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_Receive_DMA, %function
HAL_SMARTCARD_Receive_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #74]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L50
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L51
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L52
.L51:
	movs	r3, #1
	b	.L53
.L52:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L54
	movs	r3, #2
	b	.L53
.L54:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #74]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	ldr	r2, .L55
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	ldr	r2, .L55+4
	str	r2, [r3, #72]
	add	r3, r7, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #4
	mov	r1, r3
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldrh	r3, [r7, #6]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
	b	.L53
.L50:
	movs	r3, #2
.L53:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L56:
	.align	2
.L55:
	.word	SMARTCARD_DMAReceiveCplt
	.word	SMARTCARD_DMAError
	.size	HAL_SMARTCARD_Receive_DMA, .-HAL_SMARTCARD_Receive_DMA
	.section	.text.HAL_SMARTCARD_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_IRQHandler, %function
HAL_SMARTCARD_IRQHandler:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #256
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L58
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L58
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
.L58:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L59
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	orr	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
.L59:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L60
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
.L60:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L61
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	orr	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
.L61:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #32
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L62
	ldr	r0, [r7, #4]
	bl	SMARTCARD_Receive_IT
.L62:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #128
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L63
	ldr	r0, [r7, #4]
	bl	SMARTCARD_Transmit_IT
.L63:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #64
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L64
	ldr	r0, [r7, #4]
	bl	SMARTCARD_EndTransmit_IT
.L64:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L66
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #74]
	ldr	r0, [r7, #4]
	bl	HAL_SMARTCARD_ErrorCallback
.L66:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SMARTCARD_IRQHandler, .-HAL_SMARTCARD_IRQHandler
	.section	.text.HAL_SMARTCARD_TxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SMARTCARD_TxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_TxCpltCallback, %function
HAL_SMARTCARD_TxCpltCallback:
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
	.size	HAL_SMARTCARD_TxCpltCallback, .-HAL_SMARTCARD_TxCpltCallback
	.section	.text.HAL_SMARTCARD_RxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SMARTCARD_RxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_RxCpltCallback, %function
HAL_SMARTCARD_RxCpltCallback:
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
	.size	HAL_SMARTCARD_RxCpltCallback, .-HAL_SMARTCARD_RxCpltCallback
	.section	.text.HAL_SMARTCARD_ErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_SMARTCARD_ErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_ErrorCallback, %function
HAL_SMARTCARD_ErrorCallback:
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
	.size	HAL_SMARTCARD_ErrorCallback, .-HAL_SMARTCARD_ErrorCallback
	.section	.text.HAL_SMARTCARD_GetState,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_GetState, %function
HAL_SMARTCARD_GetState:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #74]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_SMARTCARD_GetState, .-HAL_SMARTCARD_GetState
	.section	.text.HAL_SMARTCARD_GetError,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_GetError
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_GetError, %function
HAL_SMARTCARD_GetError:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_SMARTCARD_GetError, .-HAL_SMARTCARD_GetError
	.section	.text.SMARTCARD_DMATransmitCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SMARTCARD_DMATransmitCplt, %function
SMARTCARD_DMATransmitCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3, #12]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SMARTCARD_DMATransmitCplt, .-SMARTCARD_DMATransmitCplt
	.section	.text.SMARTCARD_DMAReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SMARTCARD_DMAReceiveCplt, %function
SMARTCARD_DMAReceiveCplt:
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
	movs	r2, #0
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #74]
	ldr	r0, [r7, #12]
	bl	HAL_SMARTCARD_RxCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SMARTCARD_DMAReceiveCplt, .-SMARTCARD_DMAReceiveCplt
	.section	.text.SMARTCARD_DMAError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SMARTCARD_DMAError, %function
SMARTCARD_DMAError:
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
	movs	r2, #0
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #16
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #74]
	ldr	r0, [r7, #12]
	bl	HAL_SMARTCARD_ErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SMARTCARD_DMAError, .-SMARTCARD_DMAError
	.section	.text.SMARTCARD_WaitOnFlagUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SMARTCARD_WaitOnFlagUntilTimeout, %function
SMARTCARD_WaitOnFlagUntilTimeout:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #20]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L84
	b	.L79
.L82:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L79
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L80
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L79
.L80:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #74]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #3
	b	.L81
.L79:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bne	.L82
	b	.L83
.L86:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L84
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L85
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L84
.L85:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #74]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #3
	b	.L81
.L84:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	beq	.L86
.L83:
	movs	r3, #0
.L81:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SMARTCARD_WaitOnFlagUntilTimeout, .-SMARTCARD_WaitOnFlagUntilTimeout
	.section	.text.SMARTCARD_Transmit_IT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SMARTCARD_Transmit_IT, %function
SMARTCARD_Transmit_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #33
	bne	.L88
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ubfx	r2, r2, #0, #9
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L89
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3, #12]
.L89:
	movs	r3, #0
	b	.L90
.L88:
	movs	r3, #2
.L90:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SMARTCARD_Transmit_IT, .-SMARTCARD_Transmit_IT
	.section	.text.SMARTCARD_EndTransmit_IT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SMARTCARD_EndTransmit_IT, %function
SMARTCARD_EndTransmit_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #73]
	ldr	r0, [r7, #4]
	bl	HAL_SMARTCARD_TxCpltCallback
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SMARTCARD_EndTransmit_IT, .-SMARTCARD_EndTransmit_IT
	.section	.text.SMARTCARD_Receive_IT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SMARTCARD_Receive_IT, %function
SMARTCARD_Receive_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #74]
	uxtb	r3, r3
	cmp	r3, #34
	bne	.L94
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	uxtb	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L95
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #256
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #74]
	ldr	r0, [r7, #4]
	bl	HAL_SMARTCARD_RxCpltCallback
	movs	r3, #0
	b	.L96
.L95:
	movs	r3, #0
	b	.L96
.L94:
	movs	r3, #2
.L96:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SMARTCARD_Receive_IT, .-SMARTCARD_Receive_IT
	.section	.text.SMARTCARD_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SMARTCARD_SetConfig, %function
SMARTCARD_SetConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #12
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3840
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	orr	r3, r3, #2048
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #12288
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #5632
	bic	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #768
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L101
	cmp	r3, r2
	beq	.L98
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L101+4
	cmp	r3, r2
	bne	.L99
.L98:
	bl	HAL_RCC_GetPCLK2Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r3, r2, r3
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	lsls	r4, r3, #4
	bl	HAL_RCC_GetPCLK2Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r5, r2, r3
	bl	HAL_RCC_GetPCLK2Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r3, r2, r3
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r3, r3, #240
	add	r4, r4, r3
	bl	HAL_RCC_GetPCLK2Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r5, r2, r3
	bl	HAL_RCC_GetPCLK2Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r3, r2, r3
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r2, r3, #15
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r2, r4
	str	r2, [r3, #8]
	b	.L100
.L99:
	bl	HAL_RCC_GetPCLK1Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r3, r2, r3
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	lsls	r4, r3, #4
	bl	HAL_RCC_GetPCLK1Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r5, r2, r3
	bl	HAL_RCC_GetPCLK1Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r3, r2, r3
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r3, r3, #240
	add	r4, r4, r3
	bl	HAL_RCC_GetPCLK1Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r5, r2, r3
	bl	HAL_RCC_GetPCLK1Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	udiv	r3, r2, r3
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L101+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r2, r3, #15
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r2, r4
	str	r2, [r3, #8]
	nop
.L100:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L102:
	.align	2
.L101:
	.word	1073811456
	.word	1073812480
	.word	1374389535
	.size	SMARTCARD_SetConfig, .-SMARTCARD_SetConfig
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

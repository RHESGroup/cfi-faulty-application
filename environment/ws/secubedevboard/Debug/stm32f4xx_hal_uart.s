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
	.file	"stm32f4xx_hal_uart.c"
	.text
	.section	.text.HAL_UART_Init,"ax",%progbits
	.align	1
	.global	HAL_UART_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_Init, %function
HAL_UART_Init:
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
	bl	HAL_UART_MspInit
.L4:
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	UART_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #18432
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #42
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #58]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_UART_Init, .-HAL_UART_Init
	.section	.text.HAL_HalfDuplex_Init,"ax",%progbits
	.align	1
	.global	HAL_HalfDuplex_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_HalfDuplex_Init, %function
HAL_HalfDuplex_Init:
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
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L8
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #4]
	bl	HAL_UART_MspInit
.L8:
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	UART_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #18432
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #34
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #58]
	movs	r3, #0
.L7:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_HalfDuplex_Init, .-HAL_HalfDuplex_Init
	.section	.text.HAL_LIN_Init,"ax",%progbits
	.align	1
	.global	HAL_LIN_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_LIN_Init, %function
HAL_LIN_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L10
	movs	r3, #1
	b	.L11
.L10:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L12
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #4]
	bl	HAL_UART_MspInit
.L12:
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	UART_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #42
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #16384
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	orrs	r2, r2, r1
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #58]
	movs	r3, #0
.L11:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_LIN_Init, .-HAL_LIN_Init
	.section	.text.HAL_MultiProcessor_Init,"ax",%progbits
	.align	1
	.global	HAL_MultiProcessor_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_MultiProcessor_Init, %function
HAL_MultiProcessor_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L14
	movs	r3, #1
	b	.L15
.L14:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L16
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r0, [r7, #12]
	bl	HAL_UART_MspInit
.L16:
	ldr	r3, [r7, #12]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r0, [r7, #12]
	bl	UART_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #18432
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #42
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #15
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	orrs	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #58]
	movs	r3, #0
.L15:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_MultiProcessor_Init, .-HAL_MultiProcessor_Init
	.section	.text.HAL_UART_DeInit,"ax",%progbits
	.align	1
	.global	HAL_UART_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_DeInit, %function
HAL_UART_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L18
	movs	r3, #1
	b	.L19
.L18:
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r0, [r7, #4]
	bl	HAL_UART_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #58]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L19:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_UART_DeInit, .-HAL_UART_DeInit
	.section	.text.HAL_UART_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_UART_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_MspInit, %function
HAL_UART_MspInit:
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
	.size	HAL_UART_MspInit, .-HAL_UART_MspInit
	.section	.text.HAL_UART_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_UART_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_MspDeInit, %function
HAL_UART_MspDeInit:
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
	.size	HAL_UART_MspDeInit, .-HAL_UART_MspDeInit
	.section	.text.HAL_UART_Transmit,"ax",%progbits
	.align	1
	.global	HAL_UART_Transmit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_Transmit, %function
HAL_UART_Transmit:
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
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L23
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L24
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L25
.L24:
	movs	r3, #1
	b	.L26
.L25:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L27
	movs	r3, #2
	b	.L26
.L27:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #38]	@ movhi
	b	.L28
.L33:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #38]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #38]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #4096
	bne	.L29
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #128
	ldr	r0, [r7, #12]
	bl	UART_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L30
	movs	r3, #3
	b	.L26
.L30:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ubfx	r2, r2, #0, #9
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L31
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	b	.L28
.L31:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	b	.L28
.L29:
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #128
	ldr	r0, [r7, #12]
	bl	UART_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L32
	movs	r3, #3
	b	.L26
.L32:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #4]
.L28:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #38]
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #64
	ldr	r0, [r7, #12]
	bl	UART_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L34
	movs	r3, #3
	b	.L26
.L34:
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	b	.L26
.L23:
	movs	r3, #2
.L26:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_UART_Transmit, .-HAL_UART_Transmit
	.section	.text.HAL_UART_Receive,"ax",%progbits
	.align	1
	.global	HAL_UART_Receive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_Receive, %function
HAL_UART_Receive:
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
	ldrb	r3, [r3, #58]
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
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L40
	movs	r3, #2
	b	.L39
.L40:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #58]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #46]	@ movhi
	b	.L41
.L47:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #46]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #46]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #4096
	bne	.L42
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #32
	ldr	r0, [r7, #12]
	bl	UART_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L43
	movs	r3, #3
	b	.L39
.L43:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L44
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	ubfx	r3, r3, #0, #9
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	b	.L41
.L44:
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
	b	.L41
.L42:
	ldr	r3, [r7]
	movs	r2, #0
	movs	r1, #32
	ldr	r0, [r7, #12]
	bl	UART_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L45
	movs	r3, #3
	b	.L39
.L45:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L46
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	uxtb	r2, r1
	strb	r2, [r3]
	b	.L41
.L46:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	adds	r1, r3, #1
	str	r1, [r7, #8]
	and	r2, r2, #127
	uxtb	r2, r2
	strb	r2, [r3]
.L41:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #46]
	cmp	r3, #0
	bne	.L47
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #58]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	b	.L39
.L36:
	movs	r3, #2
.L39:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_UART_Receive, .-HAL_UART_Receive
	.section	.text.HAL_UART_Transmit_IT,"ax",%progbits
	.align	1
	.global	HAL_UART_Transmit_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_Transmit_IT, %function
HAL_UART_Transmit_IT:
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
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L49
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L50
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L51
.L50:
	movs	r3, #1
	b	.L52
.L51:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L53
	movs	r3, #2
	b	.L52
.L53:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #38]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #12]
	movs	r3, #0
	b	.L52
.L49:
	movs	r3, #2
.L52:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_UART_Transmit_IT, .-HAL_UART_Transmit_IT
	.section	.text.HAL_UART_Receive_IT,"ax",%progbits
	.align	1
	.global	HAL_UART_Receive_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_Receive_IT, %function
HAL_UART_Receive_IT:
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
	ldrb	r3, [r3, #58]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L55
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L56
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L57
.L56:
	movs	r3, #1
	b	.L58
.L57:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L59
	movs	r3, #2
	b	.L58
.L59:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #46]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #58]
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
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32
	str	r2, [r3, #12]
	movs	r3, #0
	b	.L58
.L55:
	movs	r3, #2
.L58:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_UART_Receive_IT, .-HAL_UART_Receive_IT
	.section	.text.HAL_UART_Transmit_DMA,"ax",%progbits
	.align	1
	.global	HAL_UART_Transmit_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_Transmit_DMA, %function
HAL_UART_Transmit_DMA:
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
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L61
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L62
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L63
.L62:
	movs	r3, #1
	b	.L64
.L63:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L65
	movs	r3, #2
	b	.L64
.L65:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #38]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L66
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L66+4
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L66+8
	str	r2, [r3, #72]
	add	r3, r7, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #48]
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
	strb	r2, [r3, #56]
	movs	r3, #0
	b	.L64
.L61:
	movs	r3, #2
.L64:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L67:
	.align	2
.L66:
	.word	UART_DMATransmitCplt
	.word	UART_DMATxHalfCplt
	.word	UART_DMAError
	.size	HAL_UART_Transmit_DMA, .-HAL_UART_Transmit_DMA
	.section	.text.HAL_UART_Receive_DMA,"ax",%progbits
	.align	1
	.global	HAL_UART_Receive_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_Receive_DMA, %function
HAL_UART_Receive_DMA:
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
	ldrb	r3, [r3, #58]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L69
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L70
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L71
.L70:
	movs	r3, #1
	b	.L72
.L71:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L73
	movs	r3, #2
	b	.L72
.L73:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #58]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L74
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L74+4
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L74+8
	str	r2, [r3, #72]
	add	r3, r7, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #52]
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
	strb	r2, [r3, #56]
	movs	r3, #0
	b	.L72
.L69:
	movs	r3, #2
.L72:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L75:
	.align	2
.L74:
	.word	UART_DMAReceiveCplt
	.word	UART_DMARxHalfCplt
	.word	UART_DMAError
	.size	HAL_UART_Receive_DMA, .-HAL_UART_Receive_DMA
	.section	.text.HAL_UART_DMAPause,"ax",%progbits
	.align	1
	.global	HAL_UART_DMAPause
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_DMAPause, %function
HAL_UART_DMAPause:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L77
	movs	r3, #2
	b	.L78
.L77:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #33
	bne	.L79
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #20]
.L79:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #58]
	uxtb	r3, r3
	cmp	r3, #34
	bne	.L80
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #20]
.L80:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L78:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_UART_DMAPause, .-HAL_UART_DMAPause
	.section	.text.HAL_UART_DMAResume,"ax",%progbits
	.align	1
	.global	HAL_UART_DMAResume
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_DMAResume, %function
HAL_UART_DMAResume:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L82
	movs	r3, #2
	b	.L83
.L82:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #33
	bne	.L84
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #20]
.L84:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #58]
	uxtb	r3, r3
	cmp	r3, #34
	bne	.L85
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
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3, #20]
.L85:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L83:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_UART_DMAResume, .-HAL_UART_DMAResume
	.section	.text.HAL_UART_DMAStop,"ax",%progbits
	.align	1
	.global	HAL_UART_DMAStop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_DMAStop, %function
HAL_UART_DMAStop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r0, r3
	bl	HAL_DMA_Abort
.L87:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L88
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	HAL_DMA_Abort
.L88:
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #58]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_UART_DMAStop, .-HAL_UART_DMAStop
	.section	.text.HAL_UART_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_UART_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_IRQHandler, %function
HAL_UART_IRQHandler:
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
	and	r3, r3, #1
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #256
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L91
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
	ldr	r3, [r3, #60]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
.L91:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #2
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L92
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L92
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
	ldr	r3, [r3, #60]
	orr	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
.L92:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #4
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L93
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L93
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
	ldr	r3, [r3, #60]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
.L93:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #8
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L94
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
	ldr	r3, [r3, #60]
	orr	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
.L94:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #32
	cmp	r3, #32
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #32
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L95
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L95
	ldr	r0, [r7, #4]
	bl	UART_Receive_IT
.L95:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #128
	cmp	r3, #128
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #128
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L96
	ldr	r0, [r7, #4]
	bl	UART_Transmit_IT
.L96:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	and	r3, r3, #64
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L97
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L97
	ldr	r0, [r7, #4]
	bl	UART_EndTransmit_IT
.L97:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L99
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #58]
	ldr	r0, [r7, #4]
	bl	HAL_UART_ErrorCallback
.L99:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_UART_IRQHandler, .-HAL_UART_IRQHandler
	.section	.text.HAL_UART_TxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_UART_TxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_TxCpltCallback, %function
HAL_UART_TxCpltCallback:
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
	.size	HAL_UART_TxCpltCallback, .-HAL_UART_TxCpltCallback
	.section	.text.HAL_UART_TxHalfCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_UART_TxHalfCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_TxHalfCpltCallback, %function
HAL_UART_TxHalfCpltCallback:
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
	.size	HAL_UART_TxHalfCpltCallback, .-HAL_UART_TxHalfCpltCallback
	.section	.text.HAL_UART_RxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_UART_RxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_RxCpltCallback, %function
HAL_UART_RxCpltCallback:
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
	.size	HAL_UART_RxCpltCallback, .-HAL_UART_RxCpltCallback
	.section	.text.HAL_UART_RxHalfCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_UART_RxHalfCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_RxHalfCpltCallback, %function
HAL_UART_RxHalfCpltCallback:
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
	.size	HAL_UART_RxHalfCpltCallback, .-HAL_UART_RxHalfCpltCallback
	.section	.text.HAL_UART_ErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_UART_ErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_ErrorCallback, %function
HAL_UART_ErrorCallback:
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
	.size	HAL_UART_ErrorCallback, .-HAL_UART_ErrorCallback
	.section	.text.HAL_LIN_SendBreak,"ax",%progbits
	.align	1
	.global	HAL_LIN_SendBreak
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_LIN_SendBreak, %function
HAL_LIN_SendBreak:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L106
	movs	r3, #2
	b	.L107
.L106:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L107:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_LIN_SendBreak, .-HAL_LIN_SendBreak
	.section	.text.HAL_MultiProcessor_EnterMuteMode,"ax",%progbits
	.align	1
	.global	HAL_MultiProcessor_EnterMuteMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_MultiProcessor_EnterMuteMode, %function
HAL_MultiProcessor_EnterMuteMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L109
	movs	r3, #2
	b	.L110
.L109:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L110:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_MultiProcessor_EnterMuteMode, .-HAL_MultiProcessor_EnterMuteMode
	.section	.text.HAL_MultiProcessor_ExitMuteMode,"ax",%progbits
	.align	1
	.global	HAL_MultiProcessor_ExitMuteMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_MultiProcessor_ExitMuteMode, %function
HAL_MultiProcessor_ExitMuteMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L112
	movs	r3, #2
	b	.L113
.L112:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L113:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_MultiProcessor_ExitMuteMode, .-HAL_MultiProcessor_ExitMuteMode
	.section	.text.HAL_HalfDuplex_EnableTransmitter,"ax",%progbits
	.align	1
	.global	HAL_HalfDuplex_EnableTransmitter
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_HalfDuplex_EnableTransmitter, %function
HAL_HalfDuplex_EnableTransmitter:
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
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L115
	movs	r3, #2
	b	.L116
.L115:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	orr	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L116:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_HalfDuplex_EnableTransmitter, .-HAL_HalfDuplex_EnableTransmitter
	.section	.text.HAL_HalfDuplex_EnableReceiver,"ax",%progbits
	.align	1
	.global	HAL_HalfDuplex_EnableReceiver
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_HalfDuplex_EnableReceiver, %function
HAL_HalfDuplex_EnableReceiver:
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
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L118
	movs	r3, #2
	b	.L119
.L118:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	orr	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L119:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_HalfDuplex_EnableReceiver, .-HAL_HalfDuplex_EnableReceiver
	.section	.text.HAL_UART_GetState,"ax",%progbits
	.align	1
	.global	HAL_UART_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_GetState, %function
HAL_UART_GetState:
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
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #58]
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
	.size	HAL_UART_GetState, .-HAL_UART_GetState
	.section	.text.HAL_UART_GetError,"ax",%progbits
	.align	1
	.global	HAL_UART_GetError
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_GetError, %function
HAL_UART_GetError:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_UART_GetError, .-HAL_UART_GetError
	.section	.text.UART_DMATransmitCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_DMATransmitCplt, %function
UART_DMATransmitCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L125
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #38]	@ movhi
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
	b	.L127
.L125:
	ldr	r0, [r7, #12]
	bl	HAL_UART_TxCpltCallback
.L127:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UART_DMATransmitCplt, .-UART_DMATransmitCplt
	.section	.text.UART_DMATxHalfCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_DMATxHalfCplt, %function
UART_DMATxHalfCplt:
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
	bl	HAL_UART_TxHalfCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UART_DMATxHalfCplt, .-UART_DMATxHalfCplt
	.section	.text.UART_DMAReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_DMAReceiveCplt, %function
UART_DMAReceiveCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L130
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #46]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #58]
.L130:
	ldr	r0, [r7, #12]
	bl	HAL_UART_RxCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UART_DMAReceiveCplt, .-UART_DMAReceiveCplt
	.section	.text.UART_DMARxHalfCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_DMARxHalfCplt, %function
UART_DMARxHalfCplt:
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
	bl	HAL_UART_RxHalfCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UART_DMARxHalfCplt, .-UART_DMARxHalfCplt
	.section	.text.UART_DMAError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_DMAError, %function
UART_DMAError:
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
	strh	r2, [r3, #46]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #38]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #58]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	orr	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #60]
	ldr	r0, [r7, #12]
	bl	HAL_UART_ErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UART_DMAError, .-UART_DMAError
	.section	.text.UART_WaitOnFlagUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_WaitOnFlagUntilTimeout, %function
UART_WaitOnFlagUntilTimeout:
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
	bne	.L140
	b	.L135
.L138:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L135
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L136
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L135
.L136:
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
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #256
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #58]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #3
	b	.L137
.L135:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bne	.L138
	b	.L139
.L142:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L140
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L141
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L140
.L141:
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
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #256
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #58]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #3
	b	.L137
.L140:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	beq	.L142
.L139:
	movs	r3, #0
.L137:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UART_WaitOnFlagUntilTimeout, .-UART_WaitOnFlagUntilTimeout
	.section	.text.UART_Transmit_IT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_Transmit_IT, %function
UART_Transmit_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #33
	bne	.L144
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #4096
	bne	.L145
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ubfx	r2, r2, #0, #9
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L146
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	b	.L147
.L146:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	b	.L147
.L145:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #32]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r2, [r3, #4]
.L147:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #38]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #38]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #38]
	cmp	r3, #0
	bne	.L148
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
.L148:
	movs	r3, #0
	b	.L149
.L144:
	movs	r3, #2
.L149:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	UART_Transmit_IT, .-UART_Transmit_IT
	.section	.text.UART_EndTransmit_IT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_EndTransmit_IT, %function
UART_EndTransmit_IT:
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
	movs	r2, #32
	strb	r2, [r3, #57]
	ldr	r0, [r7, #4]
	bl	HAL_UART_TxCpltCallback
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UART_EndTransmit_IT, .-UART_EndTransmit_IT
	.section	.text.UART_Receive_IT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_Receive_IT, %function
UART_Receive_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #58]
	uxtb	r3, r3
	cmp	r3, #34
	bne	.L153
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #4096
	bne	.L154
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L155
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	ubfx	r3, r3, #0, #9
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	b	.L156
.L155:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	uxth	r3, r3
	uxtb	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	b	.L156
.L154:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L157
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #40]
	uxtb	r2, r0
	strb	r2, [r3]
	b	.L156
.L157:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #40]
	and	r2, r2, #127
	uxtb	r2, r2
	strb	r2, [r3]
.L156:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #46]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #46]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #46]
	cmp	r3, #0
	bne	.L158
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
	strb	r2, [r3, #58]
	ldr	r0, [r7, #4]
	bl	HAL_UART_RxCpltCallback
	movs	r3, #0
	b	.L159
.L158:
	movs	r3, #0
	b	.L159
.L153:
	movs	r3, #2
.L159:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	UART_Receive_IT, .-UART_Receive_IT
	.section	.text.UART_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UART_SetConfig, %function
UART_SetConfig:
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
	bic	r3, r3, #38400
	bic	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
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
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #768
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #32768
	bne	.L161
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L169
	cmp	r3, r2
	beq	.L162
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L169+4
	cmp	r3, r2
	bne	.L163
.L162:
	bl	HAL_RCC_GetPCLK2Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	udiv	r3, r2, r3
	ldr	r2, .L169+8
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
	lsls	r3, r3, #1
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
	lsls	r3, r3, #1
	udiv	r3, r2, r3
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #3
	adds	r3, r3, #50
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	lsls	r3, r3, #1
	and	r3, r3, #496
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
	lsls	r3, r3, #1
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
	lsls	r3, r3, #1
	udiv	r3, r2, r3
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #3
	adds	r3, r3, #50
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r2, r3, #7
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r2, r4
	str	r2, [r3, #8]
	b	.L165
.L163:
	bl	HAL_RCC_GetPCLK1Freq
	mov	r2, r0
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	udiv	r3, r2, r3
	ldr	r2, .L169+8
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
	lsls	r3, r3, #1
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
	lsls	r3, r3, #1
	udiv	r3, r2, r3
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #3
	adds	r3, r3, #50
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	lsls	r3, r3, #1
	and	r3, r3, #496
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
	lsls	r3, r3, #1
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
	lsls	r3, r3, #1
	udiv	r3, r2, r3
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #3
	adds	r3, r3, #50
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r2, r3, #7
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r2, r4
	str	r2, [r3, #8]
	b	.L168
.L161:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L169
	cmp	r3, r2
	beq	.L166
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L169+4
	cmp	r3, r2
	bne	.L167
.L166:
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
	ldr	r2, .L169+8
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
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L169+8
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
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L169+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r2, r3, #15
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r2, r4
	str	r2, [r3, #8]
	b	.L165
.L170:
	.align	2
.L169:
	.word	1073811456
	.word	1073812480
	.word	1374389535
.L167:
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
	ldr	r2, .L171
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
	ldr	r2, .L171
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L171
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
	ldr	r2, .L171
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	movs	r2, #100
	mul	r3, r2, r3
	subs	r3, r5, r3
	lsls	r3, r3, #4
	adds	r3, r3, #50
	ldr	r2, .L171
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	and	r2, r3, #15
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r2, r4
	str	r2, [r3, #8]
	b	.L168
.L165:
.L168:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L172:
	.align	2
.L171:
	.word	1374389535
	.size	UART_SetConfig, .-UART_SetConfig
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

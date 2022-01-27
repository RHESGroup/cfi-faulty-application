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
	.file	"usart.c"
	.text
	.comm	huart1,64,4
	.comm	huart7,64,4
	.comm	hsc6,80,4
	.section	.text.MX_USART1_UART_Init,"ax",%progbits
	.align	1
	.global	MX_USART1_UART_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_USART1_UART_Init, %function
MX_USART1_UART_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L4
	ldr	r2, .L4+4
	str	r2, [r3]
	ldr	r3, .L4
	mov	r2, #115200
	str	r2, [r3, #4]
	ldr	r3, .L4
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L4
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L4
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L4
	movs	r2, #12
	str	r2, [r3, #20]
	ldr	r3, .L4
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L4
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r0, .L4
	bl	HAL_UART_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L3
	bl	Error_Handler
.L3:
	nop
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	huart1
	.word	1073811456
	.size	MX_USART1_UART_Init, .-MX_USART1_UART_Init
	.section	.text.MX_USART6_SMARTCARD_Init,"ax",%progbits
	.align	1
	.global	MX_USART6_SMARTCARD_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_USART6_SMARTCARD_Init, %function
MX_USART6_SMARTCARD_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L7
	ldr	r2, .L7+4
	str	r2, [r3]
	ldr	r3, .L7
	mov	r2, #115200
	str	r2, [r3, #4]
	ldr	r3, .L7
	mov	r2, #4096
	str	r2, [r3, #8]
	ldr	r3, .L7
	mov	r2, #12288
	str	r2, [r3, #12]
	ldr	r3, .L7
	mov	r2, #1024
	str	r2, [r3, #16]
	ldr	r3, .L7
	movs	r2, #12
	str	r2, [r3, #20]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L7
	movs	r2, #11
	str	r2, [r3, #36]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r0, .L7
	bl	HAL_SMARTCARD_Init
	nop
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	hsc6
	.word	1073812480
	.size	MX_USART6_SMARTCARD_Init, .-MX_USART6_SMARTCARD_Init
	.section	.text.MX_UART7_Init,"ax",%progbits
	.align	1
	.global	MX_UART7_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_UART7_Init, %function
MX_UART7_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L12
	ldr	r2, .L12+4
	str	r2, [r3]
	ldr	r3, .L12
	mov	r2, #115200
	str	r2, [r3, #4]
	ldr	r3, .L12
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L12
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L12
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L12
	movs	r2, #12
	str	r2, [r3, #20]
	ldr	r3, .L12
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L12
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r0, .L12
	bl	HAL_UART_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	bl	Error_Handler
.L11:
	nop
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	huart7
	.word	1073772544
	.size	MX_UART7_Init, .-MX_UART7_Init
	.section	.text.HAL_UART_MspInit,"ax",%progbits
	.align	1
	.global	HAL_UART_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_MspInit, %function
HAL_UART_MspInit:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L18
	cmp	r3, r2
	bne	.L15
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, .L18+4
	ldr	r3, [r3, #68]
	ldr	r2, .L18+4
	orr	r3, r3, #16
	str	r3, [r2, #68]
	ldr	r3, .L18+4
	ldr	r3, [r3, #68]
	and	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	movs	r3, #64
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #1
	str	r3, [r7, #28]
	movs	r3, #3
	str	r3, [r7, #32]
	movs	r3, #7
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L18+8
	bl	HAL_GPIO_Init
	mov	r3, #6144
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #3
	str	r3, [r7, #32]
	movs	r3, #7
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L18+12
	bl	HAL_GPIO_Init
	mov	r3, #1024
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #1
	str	r3, [r7, #28]
	movs	r3, #3
	str	r3, [r7, #32]
	movs	r3, #7
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L18+12
	bl	HAL_GPIO_Init
	b	.L17
.L15:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L18+16
	cmp	r3, r2
	bne	.L17
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L18+4
	ldr	r3, [r3, #64]
	ldr	r2, .L18+4
	orr	r3, r3, #1073741824
	str	r3, [r2, #64]
	ldr	r3, .L18+4
	ldr	r3, [r3, #64]
	and	r3, r3, #1073741824
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L18+4
	ldr	r3, [r3, #48]
	ldr	r2, .L18+4
	orr	r3, r3, #32
	str	r3, [r2, #48]
	ldr	r3, .L18+4
	ldr	r3, [r3, #48]
	and	r3, r3, #32
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r3, #192
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #1
	str	r3, [r7, #28]
	movs	r3, #3
	str	r3, [r7, #32]
	movs	r3, #8
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L18+20
	bl	HAL_GPIO_Init
	movs	r2, #0
	movs	r1, #0
	movs	r0, #82
	bl	HAL_NVIC_SetPriority
	movs	r0, #82
	bl	HAL_NVIC_EnableIRQ
.L17:
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L19:
	.align	2
.L18:
	.word	1073811456
	.word	1073887232
	.word	1073873920
	.word	1073872896
	.word	1073772544
	.word	1073878016
	.size	HAL_UART_MspInit, .-HAL_UART_MspInit
	.section	.text.HAL_SMARTCARD_MspInit,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_MspInit, %function
HAL_SMARTCARD_MspInit:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L23
	cmp	r3, r2
	bne	.L22
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L23+4
	ldr	r3, [r3, #68]
	ldr	r2, .L23+4
	orr	r3, r3, #32
	str	r3, [r2, #68]
	ldr	r3, .L23+4
	ldr	r3, [r3, #68]
	and	r3, r3, #32
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r3, #64
	str	r3, [r7, #12]
	movs	r3, #18
	str	r3, [r7, #16]
	movs	r3, #1
	str	r3, [r7, #20]
	movs	r3, #3
	str	r3, [r7, #24]
	movs	r3, #8
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L23+8
	bl	HAL_GPIO_Init
	movs	r3, #128
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #3
	str	r3, [r7, #24]
	movs	r3, #8
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L23+12
	bl	HAL_GPIO_Init
.L22:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	1073812480
	.word	1073887232
	.word	1073874944
	.word	1073879040
	.size	HAL_SMARTCARD_MspInit, .-HAL_SMARTCARD_MspInit
	.section	.text.HAL_UART_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_UART_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_UART_MspDeInit, %function
HAL_UART_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L28
	cmp	r3, r2
	bne	.L27
	ldr	r3, .L28+4
	ldr	r3, [r3, #68]
	ldr	r2, .L28+4
	bic	r3, r3, #16
	str	r3, [r2, #68]
	movs	r1, #64
	ldr	r0, .L28+8
	bl	HAL_GPIO_DeInit
	mov	r1, #7168
	ldr	r0, .L28+12
	bl	HAL_GPIO_DeInit
.L27:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L29:
	.align	2
.L28:
	.word	1073811456
	.word	1073887232
	.word	1073873920
	.word	1073872896
	.size	HAL_UART_MspDeInit, .-HAL_UART_MspDeInit
	.section	.text.HAL_SMARTCARD_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_SMARTCARD_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SMARTCARD_MspDeInit, %function
HAL_SMARTCARD_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L33
	cmp	r3, r2
	bne	.L32
	ldr	r3, .L33+4
	ldr	r3, [r3, #68]
	ldr	r2, .L33+4
	bic	r3, r3, #32
	str	r3, [r2, #68]
	movs	r1, #64
	ldr	r0, .L33+8
	bl	HAL_GPIO_DeInit
	movs	r1, #128
	ldr	r0, .L33+12
	bl	HAL_GPIO_DeInit
.L32:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L34:
	.align	2
.L33:
	.word	1073812480
	.word	1073887232
	.word	1073874944
	.word	1073879040
	.size	HAL_SMARTCARD_MspDeInit, .-HAL_SMARTCARD_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

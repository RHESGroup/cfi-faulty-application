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
	.file	"gpio.c"
	.text
	.section	.text.MX_GPIO_Init,"ax",%progbits
	.align	1
	.global	MX_GPIO_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_GPIO_Init, %function
MX_GPIO_Init:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #16
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #16
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #2
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #8
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #8
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #4
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #1
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #32
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #32
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #64
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #64
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #256
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #256
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #128
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #128
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r3, #8
	str	r3, [r7, #52]
	movs	r3, #1
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	add	r3, r7, #52
	mov	r1, r3
	ldr	r0, .L2+4
	bl	HAL_GPIO_Init
	mov	r3, #512
	str	r3, [r7, #52]
	ldr	r3, .L2+8
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #60]
	add	r3, r7, #52
	mov	r1, r3
	ldr	r0, .L2+12
	bl	HAL_GPIO_Init
	movs	r1, #9
	movs	r0, #0
	bl	SYSCFG_EXTILineConfig
	mov	r3, #512
	str	r3, [r7, #44]
	movs	r3, #1
	strb	r3, [r7, #50]
	movs	r3, #0
	strb	r3, [r7, #48]
	movs	r3, #8
	strb	r3, [r7, #49]
	add	r3, r7, #44
	mov	r0, r3
	bl	EXTI_Init
	movs	r3, #23
	strb	r3, [r7, #40]
	movs	r3, #0
	strb	r3, [r7, #41]
	movs	r3, #1
	strb	r3, [r7, #42]
	movs	r3, #1
	strb	r3, [r7, #43]
	add	r3, r7, #40
	mov	r0, r3
	bl	NVIC_Init
	nop
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	1073887232
	.word	1073879040
	.word	269549568
	.word	1073872896
	.size	MX_GPIO_Init, .-MX_GPIO_Init
	.section	.text.EXTI9_5_IRQHandler,"ax",%progbits
	.align	1
	.weak	EXTI9_5_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	EXTI9_5_IRQHandler, %function
EXTI9_5_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r0, #512
	bl	EXTI_GetITStatus
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	movs	r3, #0
	str	r3, [r7, #4]
.L10:
	movs	r2, #1
	movs	r1, #8
	ldr	r0, .L12
	bl	HAL_GPIO_WritePin
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L6
.L7:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L6:
	ldr	r3, [r7, #4]
	ldr	r2, .L12+4
	cmp	r3, r2
	ble	.L7
	movs	r2, #0
	movs	r1, #8
	ldr	r0, .L12
	bl	HAL_GPIO_WritePin
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L8
.L9:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L8:
	ldr	r3, [r7, #4]
	ldr	r2, .L12+4
	cmp	r3, r2
	ble	.L9
	b	.L10
.L11:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	1073879040
	.word	999999
	.size	EXTI9_5_IRQHandler, .-EXTI9_5_IRQHandler
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

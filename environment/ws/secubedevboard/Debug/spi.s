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
	.file	"spi.c"
	.text
	.comm	hspi5,88,4
	.section	.text.MX_SPI5_Init,"ax",%progbits
	.align	1
	.global	MX_SPI5_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_SPI5_Init, %function
MX_SPI5_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	ldr	r3, .L2
	mov	r2, #260
	str	r2, [r3, #4]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, .L2
	movs	r2, #10
	str	r2, [r3, #44]
	ldr	r0, .L2
	bl	HAL_SPI_Init
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	hspi5
	.word	1073827840
	.size	MX_SPI5_Init, .-MX_SPI5_Init
	.section	.text.HAL_SPI_MspInit,"ax",%progbits
	.align	1
	.global	HAL_SPI_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_MspInit, %function
HAL_SPI_MspInit:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L7
	cmp	r3, r2
	bne	.L6
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L7+4
	ldr	r3, [r3, #68]
	ldr	r2, .L7+4
	orr	r3, r3, #1048576
	str	r3, [r2, #68]
	ldr	r3, .L7+4
	ldr	r3, [r3, #68]
	and	r3, r3, #1048576
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mov	r3, #896
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #3
	str	r3, [r7, #24]
	movs	r3, #5
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L7+8
	bl	HAL_GPIO_Init
	movs	r3, #64
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L7+8
	bl	HAL_GPIO_Init
.L6:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	1073827840
	.word	1073887232
	.word	1073878016
	.size	HAL_SPI_MspInit, .-HAL_SPI_MspInit
	.section	.text.HAL_SPI_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_SPI_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_MspDeInit, %function
HAL_SPI_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L12
	cmp	r3, r2
	bne	.L11
	ldr	r3, .L12+4
	ldr	r3, [r3, #68]
	ldr	r2, .L12+4
	bic	r3, r3, #1048576
	str	r3, [r2, #68]
	mov	r1, #960
	ldr	r0, .L12+8
	bl	HAL_GPIO_DeInit
.L11:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	1073827840
	.word	1073887232
	.word	1073878016
	.size	HAL_SPI_MspDeInit, .-HAL_SPI_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

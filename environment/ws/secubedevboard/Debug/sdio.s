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
	.file	"sdio.c"
	.text
	.comm	hsd,96,4
	.comm	SDCardInfo,88,8
	.comm	hdma_sdio_rx,88,4
	.comm	hdma_sdio_tx,88,4
	.section	.text.MX_SDIO_SD_Init,"ax",%progbits
	.align	1
	.global	MX_SDIO_SD_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_SDIO_SD_Init, %function
MX_SDIO_SD_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	ldr	r3, .L2
	movs	r2, #0
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
	ldr	r1, .L2+8
	ldr	r0, .L2
	bl	HAL_SD_Init
	mov	r1, #2048
	ldr	r0, .L2
	bl	HAL_SD_WideBusOperation_Config
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	hsd
	.word	1073818624
	.word	SDCardInfo
	.size	MX_SDIO_SD_Init, .-MX_SDIO_SD_Init
	.section	.text.HAL_SD_MspInit,"ax",%progbits
	.align	1
	.global	HAL_SD_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_MspInit, %function
HAL_SD_MspInit:
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
	orr	r3, r3, #2048
	str	r3, [r2, #68]
	ldr	r3, .L7+4
	ldr	r3, [r3, #68]
	and	r3, r3, #2048
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	mov	r3, #7936
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #3
	str	r3, [r7, #24]
	movs	r3, #12
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L7+8
	bl	HAL_GPIO_Init
	movs	r3, #4
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #3
	str	r3, [r7, #24]
	movs	r3, #12
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L7+12
	bl	HAL_GPIO_Init
	ldr	r3, .L7+16
	ldr	r2, .L7+20
	str	r2, [r3]
	ldr	r3, .L7+16
	mov	r2, #134217728
	str	r2, [r3, #4]
	ldr	r3, .L7+16
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L7+16
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L7+16
	mov	r2, #1024
	str	r2, [r3, #16]
	ldr	r3, .L7+16
	mov	r2, #4096
	str	r2, [r3, #20]
	ldr	r3, .L7+16
	mov	r2, #16384
	str	r2, [r3, #24]
	ldr	r3, .L7+16
	movs	r2, #32
	str	r2, [r3, #28]
	ldr	r3, .L7+16
	mov	r2, #196608
	str	r2, [r3, #32]
	ldr	r3, .L7+16
	movs	r2, #4
	str	r2, [r3, #36]
	ldr	r3, .L7+16
	movs	r2, #3
	str	r2, [r3, #40]
	ldr	r3, .L7+16
	mov	r2, #8388608
	str	r2, [r3, #44]
	ldr	r3, .L7+16
	mov	r2, #2097152
	str	r2, [r3, #48]
	ldr	r0, .L7+16
	bl	HAL_DMA_Init
	ldr	r3, [r7, #4]
	ldr	r2, .L7+16
	str	r2, [r3, #88]
	ldr	r2, .L7+16
	ldr	r3, [r7, #4]
	str	r3, [r2, #56]
	ldr	r3, .L7+24
	ldr	r2, .L7+28
	str	r2, [r3]
	ldr	r3, .L7+24
	mov	r2, #134217728
	str	r2, [r3, #4]
	ldr	r3, .L7+24
	movs	r2, #64
	str	r2, [r3, #8]
	ldr	r3, .L7+24
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L7+24
	mov	r2, #1024
	str	r2, [r3, #16]
	ldr	r3, .L7+24
	mov	r2, #4096
	str	r2, [r3, #20]
	ldr	r3, .L7+24
	mov	r2, #16384
	str	r2, [r3, #24]
	ldr	r3, .L7+24
	movs	r2, #32
	str	r2, [r3, #28]
	ldr	r3, .L7+24
	mov	r2, #196608
	str	r2, [r3, #32]
	ldr	r3, .L7+24
	movs	r2, #4
	str	r2, [r3, #36]
	ldr	r3, .L7+24
	movs	r2, #3
	str	r2, [r3, #40]
	ldr	r3, .L7+24
	mov	r2, #8388608
	str	r2, [r3, #44]
	ldr	r3, .L7+24
	mov	r2, #2097152
	str	r2, [r3, #48]
	ldr	r0, .L7+24
	bl	HAL_DMA_Init
	ldr	r3, [r7, #4]
	ldr	r2, .L7+24
	str	r2, [r3, #92]
	ldr	r2, .L7+24
	ldr	r3, [r7, #4]
	str	r3, [r2, #56]
	movs	r2, #0
	movs	r1, #5
	movs	r0, #49
	bl	HAL_NVIC_SetPriority
	movs	r0, #49
	bl	HAL_NVIC_EnableIRQ
.L6:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	1073818624
	.word	1073887232
	.word	1073874944
	.word	1073875968
	.word	hdma_sdio_rx
	.word	1073898584
	.word	hdma_sdio_tx
	.word	1073898656
	.size	HAL_SD_MspInit, .-HAL_SD_MspInit
	.section	.text.HAL_SD_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_SD_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_MspDeInit, %function
HAL_SD_MspDeInit:
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
	bic	r3, r3, #2048
	str	r3, [r2, #68]
	mov	r1, #7936
	ldr	r0, .L12+8
	bl	HAL_GPIO_DeInit
	movs	r1, #4
	ldr	r0, .L12+12
	bl	HAL_GPIO_DeInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	mov	r0, r3
	bl	HAL_DMA_DeInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	mov	r0, r3
	bl	HAL_DMA_DeInit
	movs	r0, #49
	bl	HAL_NVIC_DisableIRQ
.L11:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	1073818624
	.word	1073887232
	.word	1073874944
	.word	1073875968
	.size	HAL_SD_MspDeInit, .-HAL_SD_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

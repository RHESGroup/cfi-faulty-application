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
	.file	"fmc.c"
	.text
	.comm	hnor1,76,4
	.comm	hnor2,76,4
	.section	.text.MX_FMC_Init,"ax",%progbits
	.align	1
	.global	MX_FMC_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_FMC_Init, %function
MX_FMC_Init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	ldr	r3, .L2
	mov	r2, #-1610612736
	str	r2, [r3]
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3, #4]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2
	movs	r2, #8
	str	r2, [r3, #16]
	ldr	r3, .L2
	movs	r2, #16
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
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #68]
	movs	r3, #15
	str	r3, [r7, #4]
	movs	r3, #15
	str	r3, [r7, #8]
	movs	r3, #255
	str	r3, [r7, #12]
	movs	r3, #15
	str	r3, [r7, #16]
	movs	r3, #16
	str	r3, [r7, #20]
	movs	r3, #17
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	adds	r3, r7, #4
	movs	r2, #0
	mov	r1, r3
	ldr	r0, .L2
	bl	HAL_NOR_Init
	ldr	r3, .L2+8
	mov	r2, #-1610612736
	str	r2, [r3]
	ldr	r3, .L2+8
	ldr	r2, .L2+4
	str	r2, [r3, #4]
	ldr	r3, .L2+8
	movs	r2, #2
	str	r2, [r3, #8]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2+8
	movs	r2, #8
	str	r2, [r3, #16]
	ldr	r3, .L2+8
	movs	r2, #16
	str	r2, [r3, #20]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #52]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, .L2+8
	movs	r2, #0
	str	r2, [r3, #68]
	movs	r3, #15
	str	r3, [r7, #4]
	movs	r3, #15
	str	r3, [r7, #8]
	movs	r3, #255
	str	r3, [r7, #12]
	movs	r3, #15
	str	r3, [r7, #16]
	movs	r3, #16
	str	r3, [r7, #20]
	movs	r3, #17
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	adds	r3, r7, #4
	movs	r2, #0
	mov	r1, r3
	ldr	r0, .L2+8
	bl	HAL_NOR_Init
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	hnor1
	.word	-1610612476
	.word	hnor2
	.size	MX_FMC_Init, .-MX_FMC_Init
	.section	.bss.FMC_Initialized,"aw",%nobits
	.align	2
	.type	FMC_Initialized, %object
	.size	FMC_Initialized, 4
FMC_Initialized:
	.space	4
	.section	.text.HAL_FMC_MspInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FMC_MspInit, %function
HAL_FMC_MspInit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	ldr	r3, .L8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L7
	ldr	r3, .L8
	movs	r2, #1
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7]
	ldr	r3, .L8+4
	ldr	r3, [r3, #56]
	ldr	r2, .L8+4
	orr	r3, r3, #1
	str	r3, [r2, #56]
	ldr	r3, .L8+4
	ldr	r3, [r3, #56]
	and	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7]
	movw	r3, #51123
	str	r3, [r7, #4]
	movs	r3, #2
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #3
	str	r3, [r7, #16]
	movs	r3, #12
	str	r3, [r7, #20]
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r0, .L8+8
	bl	HAL_GPIO_Init
	movs	r3, #63
	str	r3, [r7, #4]
	movs	r3, #2
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #3
	str	r3, [r7, #16]
	movs	r3, #12
	str	r3, [r7, #20]
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r0, .L8+12
	bl	HAL_GPIO_Init
	mov	r3, #512
	str	r3, [r7, #4]
	movs	r3, #2
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #3
	str	r3, [r7, #16]
	movs	r3, #12
	str	r3, [r7, #20]
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r0, .L8+16
	bl	HAL_GPIO_Init
	movw	r3, #65408
	str	r3, [r7, #4]
	movs	r3, #2
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #3
	str	r3, [r7, #16]
	movs	r3, #12
	str	r3, [r7, #20]
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r0, .L8+20
	bl	HAL_GPIO_Init
	b	.L4
.L7:
	nop
.L4:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	FMC_Initialized
	.word	1073887232
	.word	1073875968
	.word	1073878016
	.word	1073879040
	.word	1073876992
	.size	HAL_FMC_MspInit, .-HAL_FMC_MspInit
	.section	.text.HAL_NOR_MspInit,"ax",%progbits
	.align	1
	.global	HAL_NOR_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_MspInit, %function
HAL_NOR_MspInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	HAL_FMC_MspInit
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NOR_MspInit, .-HAL_NOR_MspInit
	.section	.bss.FMC_DeInitialized,"aw",%nobits
	.align	2
	.type	FMC_DeInitialized, %object
	.size	FMC_DeInitialized, 4
FMC_DeInitialized:
	.space	4
	.section	.text.HAL_FMC_MspDeInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FMC_MspDeInit, %function
HAL_FMC_MspDeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L15
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L14
	ldr	r3, .L15
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L15+4
	ldr	r3, [r3, #56]
	ldr	r2, .L15+4
	bic	r3, r3, #1
	str	r3, [r2, #56]
	movw	r1, #51123
	ldr	r0, .L15+8
	bl	HAL_GPIO_DeInit
	movs	r1, #63
	ldr	r0, .L15+12
	bl	HAL_GPIO_DeInit
	mov	r1, #512
	ldr	r0, .L15+16
	bl	HAL_GPIO_DeInit
	movw	r1, #65408
	ldr	r0, .L15+20
	bl	HAL_GPIO_DeInit
	b	.L11
.L14:
	nop
.L11:
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	FMC_DeInitialized
	.word	1073887232
	.word	1073875968
	.word	1073878016
	.word	1073879040
	.word	1073876992
	.size	HAL_FMC_MspDeInit, .-HAL_FMC_MspDeInit
	.section	.text.HAL_NOR_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_NOR_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_MspDeInit, %function
HAL_NOR_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	HAL_FMC_MspDeInit
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NOR_MspDeInit, .-HAL_NOR_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

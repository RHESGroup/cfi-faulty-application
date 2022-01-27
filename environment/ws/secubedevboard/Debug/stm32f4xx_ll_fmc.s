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
	.file	"stm32f4xx_ll_fmc.c"
	.text
	.section	.text.FMC_NORSRAM_Init,"ax",%progbits
	.align	1
	.global	FMC_NORSRAM_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NORSRAM_Init, %function
FMC_NORSRAM_Init:
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
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, .L5
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #60]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #48]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r3, #8
	bne	.L2
	ldr	r3, [r7, #12]
	orr	r3, r3, #64
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #12]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	cmp	r3, #1048576
	bne	.L3
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #52]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L3:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L6:
	.align	2
.L5:
	.word	-2097024
	.size	FMC_NORSRAM_Init, .-FMC_NORSRAM_Init
	.section	.text.FMC_NORSRAM_DeInit,"ax",%progbits
	.align	1
	.global	FMC_NORSRAM_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NORSRAM_DeInit, %function
FMC_NORSRAM_DeInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r3, r2, lsl #2]
	bic	r1, r3, #1
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L8
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	movw	r1, #12507
	str	r1, [r3, r2, lsl #2]
	b	.L9
.L8:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	movw	r1, #12498
	str	r1, [r3, r2, lsl #2]
.L9:
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	mvn	r1, #-268435456
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	mvn	r1, #-268435456
	str	r1, [r3, r2, lsl #2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NORSRAM_DeInit, .-FMC_NORSRAM_DeInit
	.section	.text.FMC_NORSRAM_Timing_Init,"ax",%progbits
	.align	1
	.global	FMC_NORSRAM_Timing_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NORSRAM_Timing_Init, %function
FMC_NORSRAM_Timing_Init:
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
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	and	r3, r3, #-1073741824
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	subs	r3, r3, #1
	lsls	r3, r3, #20
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	subs	r3, r3, #2
	lsls	r3, r3, #24
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	orrs	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r1, [r7, #20]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r3, r3, #1048576
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	bic	r3, r3, #15728640
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	subs	r3, r3, #1
	lsls	r3, r3, #20
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
.L12:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NORSRAM_Timing_Init, .-FMC_NORSRAM_Timing_Init
	.section	.text.FMC_NORSRAM_Extended_Timing_Init,"ax",%progbits
	.align	1
	.global	FMC_NORSRAM_Extended_Timing_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NORSRAM_Extended_Timing_Init, %function
FMC_NORSRAM_Extended_Timing_Init:
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
	ldr	r3, [r7]
	cmp	r3, #16384
	bne	.L15
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, .L18
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	orrs	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #20]
	str	r1, [r3, r2, lsl #2]
	b	.L16
.L15:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	mvn	r1, #-268435456
	str	r1, [r3, r2, lsl #2]
.L16:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L19:
	.align	2
.L18:
	.word	-806354944
	.size	FMC_NORSRAM_Extended_Timing_Init, .-FMC_NORSRAM_Extended_Timing_Init
	.section	.text.FMC_NORSRAM_WriteOperation_Enable,"ax",%progbits
	.align	1
	.global	FMC_NORSRAM_WriteOperation_Enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NORSRAM_WriteOperation_Enable, %function
FMC_NORSRAM_WriteOperation_Enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r3, r2, lsl #2]
	orr	r1, r3, #4096
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r1, [r3, r2, lsl #2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NORSRAM_WriteOperation_Enable, .-FMC_NORSRAM_WriteOperation_Enable
	.section	.text.FMC_NORSRAM_WriteOperation_Disable,"ax",%progbits
	.align	1
	.global	FMC_NORSRAM_WriteOperation_Disable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NORSRAM_WriteOperation_Disable, %function
FMC_NORSRAM_WriteOperation_Disable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r3, r2, lsl #2]
	bic	r1, r3, #4096
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r1, [r3, r2, lsl #2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NORSRAM_WriteOperation_Disable, .-FMC_NORSRAM_WriteOperation_Disable
	.section	.text.FMC_NAND_Init,"ax",%progbits
	.align	1
	.global	FMC_NAND_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NAND_Init, %function
FMC_NAND_Init:
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
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L25
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L26
.L25:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
.L26:
	ldr	r2, [r7, #12]
	ldr	r3, .L30
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #9
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #13
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	orr	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L27
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L28
.L27:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
.L28:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L31:
	.align	2
.L30:
	.word	-1048191
	.size	FMC_NAND_Init, .-FMC_NAND_Init
	.section	.text.FMC_NAND_CommonSpace_Timing_Init,"ax",%progbits
	.align	1
	.global	FMC_NAND_CommonSpace_Timing_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NAND_CommonSpace_Timing_Init, %function
FMC_NAND_CommonSpace_Timing_Init:
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
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L33
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	b	.L34
.L33:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #20]
.L34:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L35
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	b	.L36
.L35:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #40]
.L36:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NAND_CommonSpace_Timing_Init, .-FMC_NAND_CommonSpace_Timing_Init
	.section	.text.FMC_NAND_AttributeSpace_Timing_Init,"ax",%progbits
	.align	1
	.global	FMC_NAND_AttributeSpace_Timing_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NAND_AttributeSpace_Timing_Init, %function
FMC_NAND_AttributeSpace_Timing_Init:
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
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L39
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	b	.L40
.L39:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	str	r3, [r7, #20]
.L40:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L41
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	b	.L42
.L41:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #44]
.L42:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NAND_AttributeSpace_Timing_Init, .-FMC_NAND_AttributeSpace_Timing_Init
	.section	.text.FMC_NAND_DeInit,"ax",%progbits
	.align	1
	.global	FMC_NAND_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NAND_DeInit, %function
FMC_NAND_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #16
	bne	.L45
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L46
.L45:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	bic	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L46:
	ldr	r3, [r7]
	cmp	r3, #16
	bne	.L47
	ldr	r3, [r7, #4]
	movs	r2, #24
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #64
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r2, #-50529028
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r2, #-50529028
	str	r2, [r3, #12]
	b	.L48
.L47:
	ldr	r3, [r7, #4]
	movs	r2, #24
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #64
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	mov	r2, #-50529028
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	mov	r2, #-50529028
	str	r2, [r3, #44]
.L48:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NAND_DeInit, .-FMC_NAND_DeInit
	.section	.text.FMC_NAND_ECC_Enable,"ax",%progbits
	.align	1
	.global	FMC_NAND_ECC_Enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NAND_ECC_Enable, %function
FMC_NAND_ECC_Enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #16
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r3, #64
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L52
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	orr	r2, r3, #64
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L52:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NAND_ECC_Enable, .-FMC_NAND_ECC_Enable
	.section	.text.FMC_NAND_ECC_Disable,"ax",%progbits
	.align	1
	.global	FMC_NAND_ECC_Disable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NAND_ECC_Disable, %function
FMC_NAND_ECC_Disable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #16
	bne	.L55
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #64
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L56
.L55:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	bic	r2, r3, #64
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
.L56:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_NAND_ECC_Disable, .-FMC_NAND_ECC_Disable
	.section	.text.FMC_NAND_GetECC,"ax",%progbits
	.align	1
	.global	FMC_NAND_GetECC
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_NAND_GetECC, %function
FMC_NAND_GetECC:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L59
.L64:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L59
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L60
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L59
.L60:
	movs	r3, #3
	b	.L61
.L59:
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L62
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	and	r3, r3, #64
	cmp	r3, #64
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L63
.L62:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	and	r3, r3, #64
	cmp	r3, #64
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L63:
	cmp	r3, #0
	bne	.L64
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L65
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	b	.L66
.L65:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L66:
	movs	r3, #0
.L61:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FMC_NAND_GetECC, .-FMC_NAND_GetECC
	.section	.text.FMC_PCCARD_Init,"ax",%progbits
	.align	1
	.global	FMC_PCCARD_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_PCCARD_Init, %function
FMC_PCCARD_Init:
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
	ldr	r3, [r7, #12]
	bic	r3, r3, #130560
	bic	r3, r3, #50
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #9
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #13
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	orr	r3, r3, #16
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_PCCARD_Init, .-FMC_PCCARD_Init
	.section	.text.FMC_PCCARD_CommonSpace_Timing_Init,"ax",%progbits
	.align	1
	.global	FMC_PCCARD_CommonSpace_Timing_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_PCCARD_CommonSpace_Timing_Init, %function
FMC_PCCARD_CommonSpace_Timing_Init:
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
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_PCCARD_CommonSpace_Timing_Init, .-FMC_PCCARD_CommonSpace_Timing_Init
	.section	.text.FMC_PCCARD_AttributeSpace_Timing_Init,"ax",%progbits
	.align	1
	.global	FMC_PCCARD_AttributeSpace_Timing_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_PCCARD_AttributeSpace_Timing_Init, %function
FMC_PCCARD_AttributeSpace_Timing_Init:
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
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_PCCARD_AttributeSpace_Timing_Init, .-FMC_PCCARD_AttributeSpace_Timing_Init
	.section	.text.FMC_PCCARD_IOSpace_Timing_Init,"ax",%progbits
	.align	1
	.global	FMC_PCCARD_IOSpace_Timing_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_PCCARD_IOSpace_Timing_Init, %function
FMC_PCCARD_IOSpace_Timing_Init:
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
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_PCCARD_IOSpace_Timing_Init, .-FMC_PCCARD_IOSpace_Timing_Init
	.section	.text.FMC_PCCARD_DeInit,"ax",%progbits
	.align	1
	.global	FMC_PCCARD_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_PCCARD_DeInit, %function
FMC_PCCARD_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #24
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r2, #-50529028
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r2, #-50529028
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #-50529028
	str	r2, [r3, #16]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_PCCARD_DeInit, .-FMC_PCCARD_DeInit
	.section	.text.FMC_SDRAM_Init,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_Init, %function
FMC_SDRAM_Init:
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
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L78
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #32640
	bic	r3, r3, #127
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L79
.L78:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #32640
	bic	r3, r3, #127
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	bic	r3, r3, #32640
	bic	r3, r3, #127
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	orrs	r3, r3, r2
	ldr	r2, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L79:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_SDRAM_Init, .-FMC_SDRAM_Init
	.section	.text.FMC_SDRAM_Timing_Init,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_Timing_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_Timing_Init, %function
FMC_SDRAM_Timing_Init:
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
	ldr	r3, [r7, #4]
	cmp	r3, #1
	beq	.L82
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	and	r3, r3, #-268435456
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	lsls	r3, r3, #4
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	subs	r3, r3, #1
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	subs	r3, r3, #1
	lsls	r3, r3, #12
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	subs	r3, r3, #1
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	subs	r3, r3, #1
	lsls	r3, r3, #20
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	subs	r3, r3, #1
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	b	.L83
.L82:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	and	r3, r3, #-268435456
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	lsls	r3, r3, #4
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	subs	r3, r3, #1
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	subs	r3, r3, #1
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	subs	r3, r3, #1
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	and	r3, r3, #-268435456
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	subs	r3, r3, #1
	lsls	r2, r3, #12
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	subs	r3, r3, #1
	lsls	r3, r3, #20
	orrs	r3, r3, r2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	str	r2, [r3, #8]
.L83:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_SDRAM_Timing_Init, .-FMC_SDRAM_Timing_Init
	.section	.text.FMC_SDRAM_DeInit,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_DeInit, %function
FMC_SDRAM_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mov	r1, #720
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r2, r2, #2
	mvn	r1, #-268435456
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_SDRAM_DeInit, .-FMC_SDRAM_DeInit
	.section	.text.FMC_SDRAM_WriteProtection_Enable,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_WriteProtection_Enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_WriteProtection_Enable, %function
FMC_SDRAM_WriteProtection_Enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r3, r2, lsl #2]
	orr	r1, r3, #512
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r1, [r3, r2, lsl #2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_SDRAM_WriteProtection_Enable, .-FMC_SDRAM_WriteProtection_Enable
	.section	.text.FMC_SDRAM_WriteProtection_Disable,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_WriteProtection_Disable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_WriteProtection_Disable, %function
FMC_SDRAM_WriteProtection_Disable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r3, r2, lsl #2]
	bic	r1, r3, #512
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r1, [r3, r2, lsl #2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_SDRAM_WriteProtection_Disable, .-FMC_SDRAM_WriteProtection_Disable
	.section	.text.FMC_SDRAM_SendCommand,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_SendCommand
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_SendCommand, %function
FMC_SDRAM_SendCommand:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	subs	r3, r3, #1
	lsls	r3, r3, #5
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #9
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L92
.L95:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	beq	.L92
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L93
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L92
.L93:
	movs	r3, #3
	b	.L94
.L92:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L95
	movs	r3, #0
.L94:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FMC_SDRAM_SendCommand, .-FMC_SDRAM_SendCommand
	.section	.text.FMC_SDRAM_ProgramRefreshRate,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_ProgramRefreshRate
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_ProgramRefreshRate, %function
FMC_SDRAM_ProgramRefreshRate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_SDRAM_ProgramRefreshRate, .-FMC_SDRAM_ProgramRefreshRate
	.section	.text.FMC_SDRAM_SetAutoRefreshNumber,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_SetAutoRefreshNumber
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_SetAutoRefreshNumber, %function
FMC_SDRAM_SetAutoRefreshNumber:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	lsls	r3, r3, #5
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_SDRAM_SetAutoRefreshNumber, .-FMC_SDRAM_SetAutoRefreshNumber
	.section	.text.FMC_SDRAM_GetModeStatus,"ax",%progbits
	.align	1
	.global	FMC_SDRAM_GetModeStatus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FMC_SDRAM_GetModeStatus, %function
FMC_SDRAM_GetModeStatus:
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
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L101
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	and	r3, r3, #6
	str	r3, [r7, #12]
	b	.L102
.L101:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #2
	and	r3, r3, #6
	str	r3, [r7, #12]
.L102:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	FMC_SDRAM_GetModeStatus, .-FMC_SDRAM_GetModeStatus
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

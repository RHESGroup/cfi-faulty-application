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
	.file	"se3_algo_sha256.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.section	.text.se3_algo_Sha256_init,"ax",%progbits
	.align	1
	.global	se3_algo_Sha256_init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_algo_Sha256_init, %function
se3_algo_Sha256_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	bl	B5_Sha256_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L2
	movw	r3, #61446
	b	.L3
.L2:
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_algo_Sha256_init, .-se3_algo_Sha256_init
	.section	.text.se3_algo_Sha256_update,"ax",%progbits
	.align	1
	.global	se3_algo_Sha256_update
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_algo_Sha256_update, %function
se3_algo_Sha256_update:
	@ args = 16, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r3, [r7, #4]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #19]
	ldrh	r3, [r7, #10]
	and	r3, r3, #32768
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #18]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5
	ldrh	r3, [r7, #8]
	mov	r2, r3
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #20]
	bl	B5_Sha256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L5
	movw	r3, #61441
	b	.L6
.L5:
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L7
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #20]
	bl	B5_Sha256_Finit
	mov	r3, r0
	cmp	r3, #0
	beq	.L8
	movw	r3, #61441
	b	.L6
.L8:
	ldr	r3, [r7, #40]
	movs	r2, #32
	strh	r2, [r3]	@ movhi
.L7:
	movs	r3, #0
.L6:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_algo_Sha256_update, .-se3_algo_Sha256_update
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

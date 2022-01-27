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
	.file	"se3_rand.c"
	.text
	.section	.text.se3_rand32,"ax",%progbits
	.align	1
	.global	se3_rand32
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_rand32, %function
se3_rand32:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L6:
	ldr	r1, [r7, #4]
	ldr	r0, .L7
	bl	HAL_RNG_GenerateRandomNumber
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	movs	r3, #1
	b	.L4
.L3:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L5
	movs	r3, #0
	b	.L4
.L5:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	cmp	r3, #19
	bls	.L6
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	hrng
	.size	se3_rand32, .-se3_rand32
	.section	.text.se3_rand,"ax",%progbits
	.align	1
	.global	se3_rand
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_rand, %function
se3_rand:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	lsrs	r3, r3, #2
	uxth	r3, r3
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L10
.L13:
	ldr	r0, [r7]
	bl	se3_rand32
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L11
	movs	r3, #0
	b	.L18
.L11:
	ldr	r3, [r7]
	adds	r3, r3, #4
	str	r3, [r7]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L10:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L13
	ldrh	r3, [r7, #6]
	and	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L14
	add	r3, r7, #12
	mov	r0, r3
	bl	se3_rand32
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L15
	movs	r3, #0
	b	.L18
.L15:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L16
.L17:
	add	r2, r7, #12
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r1, [r7]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L16:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L17
.L14:
	ldrh	r3, [r7, #6]
.L18:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_rand, .-se3_rand
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

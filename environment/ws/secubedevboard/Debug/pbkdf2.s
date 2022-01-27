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
	.file	"pbkdf2.c"
	.text
	.section	.text.xor_bb,"ax",%progbits
	.align	1
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	xor_bb, %function
xor_bb:
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
	b	.L2
.L3:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r0
	eors	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L2:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L3
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	xor_bb, .-xor_bb
	.section	.text.F,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	F, %function
F:
	@ args = 8, pretend = 0, frame = 544
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #544
	add	r7, sp, #0
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r2, r7, #20
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	mov	r3, #488
	mov	r2, r3
	bl	memcpy
	add	r3, r7, #8
	ldr	r3, [r3]
	lsrs	r3, r3, #24
	uxtb	r2, r3
	add	r3, r7, #16
	strb	r2, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	add	r3, r7, #16
	strb	r2, [r3, #1]
	add	r3, r7, #8
	ldr	r3, [r3]
	lsrs	r3, r3, #8
	uxtb	r2, r3
	add	r3, r7, #16
	strb	r2, [r3, #2]
	add	r3, r7, #8
	ldr	r3, [r3]
	uxtb	r2, r3
	add	r3, r7, #16
	strb	r2, [r3, #3]
	mov	r3, r7
	ldr	r2, [r3]
	adds	r3, r7, #4
	add	r0, r7, #20
	ldr	r1, [r3]
	bl	B5_HmacSha256_Update
	add	r1, r7, #16
	add	r3, r7, #20
	movs	r2, #4
	mov	r0, r3
	bl	B5_HmacSha256_Update
	add	r2, r7, #508
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	B5_HmacSha256_Finit
	ldr	r3, [r7, #564]
	mov	r5, r3
	add	r4, r7, #508
	ldmia	r4!, {r0, r1, r2, r3}
	str	r0, [r5]	@ unaligned
	str	r1, [r5, #4]	@ unaligned
	str	r2, [r5, #8]	@ unaligned
	str	r3, [r5, #12]	@ unaligned
	ldmia	r4!, {r0, r1, r2, r3}
	str	r0, [r5, #16]	@ unaligned
	str	r1, [r5, #20]	@ unaligned
	str	r2, [r5, #24]	@ unaligned
	str	r3, [r5, #28]	@ unaligned
	movs	r3, #1
	str	r3, [r7, #540]
	b	.L5
.L6:
	add	r2, r7, #20
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	mov	r3, #488
	mov	r2, r3
	bl	memcpy
	add	r1, r7, #508
	add	r3, r7, #20
	movs	r2, #32
	mov	r0, r3
	bl	B5_HmacSha256_Update
	add	r2, r7, #508
	add	r3, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	B5_HmacSha256_Finit
	add	r2, r7, #508
	movs	r3, #32
	ldr	r1, [r7, #564]
	ldr	r0, [r7, #564]
	bl	xor_bb
	ldr	r3, [r7, #540]
	adds	r3, r3, #1
	str	r3, [r7, #540]
.L5:
	ldr	r2, [r7, #540]
	ldr	r3, [r7, #560]
	cmp	r2, r3
	bcc	.L6
	nop
	nop
	add	r7, r7, #544
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	F, .-F
	.section	.text.PBKDF2HmacSha256,"ax",%progbits
	.align	1
	.global	PBKDF2HmacSha256
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	PBKDF2HmacSha256, %function
PBKDF2HmacSha256:
	@ args = 12, pretend = 0, frame = 544
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #556
	add	r7, sp, #8
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	movs	r3, #1
	str	r3, [r7, #540]
	add	r3, r7, #8
	ldr	r3, [r3]
	sxth	r2, r3
	add	r3, r7, #12
	add	r0, r7, #16
	ldr	r1, [r3]
	bl	B5_HmacSha256_Init
	b	.L8
.L9:
	mov	r3, r7
	adds	r2, r7, #4
	add	r0, r7, #16
	add	r1, r7, #504
	str	r1, [sp, #4]
	ldr	r1, [r7, #560]
	str	r1, [sp]
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r7, #540]
	bl	F
	ldr	r3, [r7, #568]
	cmp	r3, #32
	it	cs
	movcs	r3, #32
	str	r3, [r7, #536]
	add	r3, r7, #504
	ldr	r2, [r7, #536]
	mov	r1, r3
	ldr	r0, [r7, #564]
	bl	memcpy
	ldr	r2, [r7, #564]
	ldr	r3, [r7, #536]
	add	r3, r3, r2
	str	r3, [r7, #564]
	ldr	r2, [r7, #568]
	ldr	r3, [r7, #536]
	subs	r3, r2, r3
	str	r3, [r7, #568]
	ldr	r3, [r7, #540]
	adds	r3, r3, #1
	str	r3, [r7, #540]
.L8:
	ldr	r3, [r7, #568]
	cmp	r3, #0
	bne	.L9
	nop
	nop
	add	r7, r7, #548
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	PBKDF2HmacSha256, .-PBKDF2HmacSha256
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

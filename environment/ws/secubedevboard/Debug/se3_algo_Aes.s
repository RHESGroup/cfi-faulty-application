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
	.file	"se3_algo_Aes.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.section	.text.se3_algo_Aes_init,"ax",%progbits
	.align	1
	.global	se3_algo_Aes_init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_algo_Aes_init, %function
se3_algo_Aes_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldrh	r3, [r7, #10]	@ movhi
	and	r3, r3, #7
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #10]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L2
	mov	r3, #256
	b	.L3
.L2:
	mov	r3, #512
.L3:
	strh	r3, [r7, #20]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]
	subs	r3, r3, #16
	cmp	r3, #16
	ite	hi
	movhi	r2, #1
	movls	r2, #0
	uxtb	r2, r2
	cmp	r2, #0
	bne	.L4
	movs	r2, #1
	lsl	r3, r2, r3
	and	r3, r3, #16843009
	bic	r3, r3, #16777216
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L30
.L4:
	movw	r3, #61446
	b	.L6
.L30:
	nop
	ldrh	r3, [r7, #20]
	cmp	r3, #256
	beq	.L7
	cmp	r3, #512
	beq	.L8
	b	.L29
.L7:
	ldrh	r3, [r7, #22]
	subs	r3, r3, #1
	cmp	r3, #4
	bhi	.L10
	adr	r2, .L12
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L12:
	.word	.L16+1
	.word	.L15+1
	.word	.L14+1
	.word	.L13+1
	.word	.L11+1
	.p2align 1
.L16:
	movs	r3, #2
	strb	r3, [r7, #31]
	b	.L17
.L15:
	movs	r3, #4
	strb	r3, [r7, #31]
	b	.L17
.L13:
	movs	r3, #8
	strb	r3, [r7, #31]
	b	.L17
.L14:
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L17
.L11:
	movs	r3, #6
	strb	r3, [r7, #31]
	b	.L17
.L10:
	movw	r3, #61446
	b	.L6
.L17:
	b	.L18
.L8:
	ldrh	r3, [r7, #22]
	subs	r3, r3, #1
	cmp	r3, #4
	bhi	.L19
	adr	r2, .L21
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L21:
	.word	.L25+1
	.word	.L24+1
	.word	.L23+1
	.word	.L22+1
	.word	.L20+1
	.p2align 1
.L25:
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L26
.L24:
	movs	r3, #5
	strb	r3, [r7, #31]
	b	.L26
.L22:
	movs	r3, #8
	strb	r3, [r7, #31]
	b	.L26
.L23:
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L26
.L20:
	movs	r3, #7
	strb	r3, [r7, #31]
	b	.L26
.L19:
	movw	r3, #61446
	b	.L6
.L26:
	b	.L18
.L29:
	movw	r3, #61446
	b	.L6
.L18:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]
	sxth	r2, r3
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	ldr	r0, [r7, #24]
	bl	B5_Aes256_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L27
	movw	r3, #61446
	b	.L6
.L27:
	movs	r3, #0
.L6:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_algo_Aes_init, .-se3_algo_Aes_init
	.section	.text.se3_algo_Aes_update,"ax",%progbits
	.align	1
	.global	se3_algo_Aes_update
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_algo_Aes_update, %function
se3_algo_Aes_update:
	@ args = 16, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r3, [r7, #4]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	strb	r3, [r7, #22]
	movs	r3, #0
	strb	r3, [r7, #21]
	ldrh	r3, [r7, #10]
	and	r3, r3, #16384
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #23]
	ldrh	r3, [r7, #48]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #22]
	ldrh	r3, [r7, #10]
	and	r3, r3, #32768
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #21]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldrh	r3, [r7, #8]
	cmp	r3, #16
	beq	.L32
	movw	r3, #61446
	b	.L33
.L32:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L34
	ldrh	r3, [r7, #48]	@ movhi
	and	r3, r3, #15
	uxth	r3, r3
	cmp	r3, #0
	beq	.L34
	movw	r3, #61446
	b	.L33
.L34:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L35
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #28]
	bl	B5_Aes256_SetIV
	mov	r3, r0
	cmp	r3, #0
	beq	.L35
	movw	r3, #61441
	b	.L33
.L35:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L36
	ldrh	r3, [r7, #48]
	lsrs	r3, r3, #4
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #257]	@ zero_extendqisi2
	cmp	r3, #7
	ite	hi
	movhi	r2, #1
	movls	r2, #0
	uxtb	r2, r2
	cmp	r2, #0
	bne	.L37
	movs	r2, #1
	lsl	r3, r2, r3
	and	r3, r3, #168
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #52]
	str	r3, [r7, #36]
	ldr	r3, [r7, #60]
	str	r3, [r7, #32]
	b	.L38
.L37:
	ldr	r3, [r7, #60]
	str	r3, [r7, #36]
	ldr	r3, [r7, #52]
	str	r3, [r7, #32]
	nop
.L38:
	ldr	r3, [r7, #24]
	sxth	r3, r3
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #28]
	bl	B5_Aes256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L39
	movw	r3, #61441
	b	.L33
.L39:
	ldr	r3, [r7, #56]
	ldrh	r2, [r7, #48]	@ movhi
	strh	r2, [r3]	@ movhi
.L36:
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L40
	ldr	r0, [r7, #28]
	bl	B5_Aes256_Finit
	mov	r3, r0
	cmp	r3, #0
	beq	.L40
	movw	r3, #61441
	b	.L33
.L40:
	movs	r3, #0
.L33:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_algo_Aes_update, .-se3_algo_Aes_update
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

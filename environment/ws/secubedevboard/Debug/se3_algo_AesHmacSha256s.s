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
	.file	"se3_algo_AesHmacSha256s.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.section	.text.se3_algo_AesHmacSha256s_init,"ax",%progbits
	.align	1
	.global	se3_algo_AesHmacSha256s_init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_algo_AesHmacSha256s_init, %function
se3_algo_AesHmacSha256s_init:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	str	r3, [r7, #52]
	ldrh	r3, [r7, #10]	@ movhi
	and	r3, r3, #7
	strh	r3, [r7, #50]	@ movhi
	ldrh	r3, [r7, #10]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L2
	mov	r3, #256
	b	.L3
.L2:
	mov	r3, #512
.L3:
	strh	r3, [r7, #48]	@ movhi
	ldr	r3, [r7, #52]
	str	r3, [r7, #20]
	ldr	r3, [r7, #52]
	add	r3, r3, #300
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #24]
	ldr	r3, [r7, #52]
	add	r3, r3, #488
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #28]
	ldr	r3, [r7, #52]
	adds	r3, r3, #64
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #32]
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #36]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
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
	b	.L27
.L30:
	nop
	ldrh	r3, [r7, #48]
	cmp	r3, #256
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #44]
	strb	r2, [r3]
	ldrh	r3, [r7, #48]
	cmp	r3, #256
	beq	.L7
	cmp	r3, #512
	beq	.L8
	b	.L29
.L7:
	ldrh	r3, [r7, #50]
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
	ldr	r3, [r7, #40]
	movs	r2, #2
	strb	r2, [r3]
	b	.L17
.L15:
	ldr	r3, [r7, #40]
	movs	r2, #4
	strb	r2, [r3]
	b	.L17
.L13:
	ldr	r3, [r7, #40]
	movs	r2, #8
	strb	r2, [r3]
	b	.L17
.L14:
	ldr	r3, [r7, #40]
	movs	r2, #1
	strb	r2, [r3]
	b	.L17
.L11:
	ldr	r3, [r7, #40]
	movs	r2, #6
	strb	r2, [r3]
	b	.L17
.L10:
	movw	r3, #61446
	b	.L27
.L17:
	b	.L18
.L8:
	ldrh	r3, [r7, #50]
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
	ldr	r3, [r7, #40]
	movs	r2, #3
	strb	r2, [r3]
	b	.L26
.L24:
	ldr	r3, [r7, #40]
	movs	r2, #5
	strb	r2, [r3]
	b	.L26
.L22:
	ldr	r3, [r7, #40]
	movs	r2, #8
	strb	r2, [r3]
	b	.L26
.L23:
	ldr	r3, [r7, #40]
	movs	r2, #1
	strb	r2, [r3]
	b	.L26
.L20:
	ldr	r3, [r7, #40]
	movs	r2, #7
	strb	r2, [r3]
	b	.L26
.L19:
	movw	r3, #61446
	b	.L27
.L26:
	b	.L18
.L29:
	movw	r3, #61446
	b	.L27
.L18:
	ldr	r3, [r7, #36]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r0, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]
	mov	r2, r3
	bl	memcpy
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #12]
	ldrh	r2, [r2, #8]
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L27:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_algo_AesHmacSha256s_init, .-se3_algo_AesHmacSha256s_init
	.section	.text.se3_algo_AesHmacSha256s_update,"ax",%progbits
	.align	1
	.global	se3_algo_AesHmacSha256s_update
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_algo_AesHmacSha256s_update, %function
se3_algo_AesHmacSha256s_update:
	@ args = 16, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r3, [r7, #4]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #100]
	str	r3, [r7, #64]
	ldrh	r3, [r7, #10]
	and	r3, r3, #8192
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #55]
	ldrh	r3, [r7, #88]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #54]
	ldrh	r3, [r7, #10]
	and	r3, r3, #32768
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #53]
	ldrh	r3, [r7, #10]
	and	r3, r3, #4096
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #52]
	ldrh	r3, [r7, #10]
	and	r3, r3, #16384
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #51]
	ldr	r3, [r7, #60]
	str	r3, [r7, #20]
	ldr	r3, [r7, #60]
	add	r3, r3, #300
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #24]
	ldr	r3, [r7, #60]
	add	r3, r3, #488
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #28]
	ldr	r3, [r7, #60]
	adds	r3, r3, #64
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #32]
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #40]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #36]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L33
	movw	r3, #61444
	b	.L61
.L33:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L35
	ldrb	r3, [r7, #52]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L35
	ldrb	r3, [r7, #54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L36
.L35:
	movw	r3, #61446
	b	.L61
.L36:
	ldrb	r3, [r7, #53]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	movs	r3, #0
	b	.L61
.L37:
	ldr	r0, [r7, #28]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	mov	r4, r3
	ldrh	r1, [r7, #8]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldrh	r2, [r2]
	lsls	r2, r2, #1
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	mov	r3, r1
	ldr	r2, [r7, #4]
	mov	r1, r4
	bl	PBKDF2HmacSha256
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	bl	B5_Aes256_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L38
	movw	r3, #61446
	b	.L61
.L38:
	ldr	r0, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldrh	r2, [r2]
	adds	r1, r3, r2
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r2, r3
	bl	B5_HmacSha256_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L39
	movw	r3, #61446
	b	.L61
.L39:
	ldr	r3, [r7, #36]
	movs	r2, #1
	strb	r2, [r3]
	b	.L40
.L32:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L41
	ldrh	r3, [r7, #8]
	cmp	r3, #16
	beq	.L41
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	beq	.L41
	movw	r3, #61446
	b	.L61
.L41:
	ldrb	r3, [r7, #54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L42
	ldrh	r3, [r7, #88]	@ movhi
	and	r3, r3, #15
	uxth	r3, r3
	cmp	r3, #0
	beq	.L42
	movw	r3, #61446
	b	.L61
.L42:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L43
	ldr	r0, [r7, #28]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldrh	r2, [r2]
	lsls	r2, r2, #1
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	bl	PBKDF2HmacSha256
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	bl	B5_Aes256_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L44
	movw	r3, #61446
	b	.L61
.L44:
	ldr	r0, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldrh	r2, [r2]
	adds	r1, r3, r2
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r2, r3
	bl	B5_HmacSha256_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L45
	movw	r3, #61446
	b	.L61
.L45:
	ldr	r3, [r7, #36]
	movs	r2, #1
	strb	r2, [r3]
.L43:
	movs	r3, #0
	str	r3, [r7, #68]
	ldrb	r3, [r7, #54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L46
	ldrh	r3, [r7, #88]
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
.L46:
	ldrb	r3, [r7, #52]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #68]
	adds	r3, r3, #32
	str	r3, [r7, #68]
.L47:
	ldr	r3, [r7, #68]
	cmp	r3, #7520
	bls	.L48
	movw	r3, #61446
	b	.L61
.L48:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L49
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	B5_Aes256_SetIV
.L50:
	ldr	r0, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #32]
	ldrh	r2, [r2]
	adds	r1, r3, r2
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r2, r3
	bl	B5_HmacSha256_Init
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	beq	.L49
	ldr	r3, [r7, #24]
	ldrh	r2, [r7, #8]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	B5_HmacSha256_Update
.L49:
	ldrb	r3, [r7, #54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	ldrh	r3, [r7, #88]
	lsrs	r3, r3, #4
	uxth	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L52
	ldr	r3, [r7, #24]
	ldrh	r2, [r7, #88]
	ldr	r1, [r7, #92]
	mov	r0, r3
	bl	B5_HmacSha256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	movw	r3, #61441
	b	.L61
.L53:
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L54
	cmp	r3, #8
	bne	.L55
.L54:
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #56]
	sxth	r3, r3
	ldr	r2, [r7, #92]
	ldr	r1, [r7, #64]
	bl	B5_Aes256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L62
	movw	r3, #61441
	b	.L61
.L55:
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #56]
	sxth	r3, r3
	ldr	r2, [r7, #64]
	ldr	r1, [r7, #92]
	bl	B5_Aes256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L58
	movw	r3, #61441
	b	.L61
.L52:
	ldr	r0, [r7, #20]
	ldr	r3, [r7, #56]
	sxth	r3, r3
	ldr	r2, [r7, #92]
	ldr	r1, [r7, #64]
	bl	B5_Aes256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L59
	movw	r3, #61441
	b	.L61
.L59:
	ldr	r3, [r7, #24]
	ldrh	r2, [r7, #88]
	ldr	r1, [r7, #64]
	mov	r0, r3
	bl	B5_HmacSha256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L58
	movw	r3, #61441
	b	.L61
.L62:
	nop
.L58:
	ldrh	r3, [r7, #88]
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
.L51:
	ldrb	r3, [r7, #52]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #64]
	mov	r0, r3
	bl	B5_HmacSha256_Finit
	ldr	r3, [r7, #64]
	adds	r3, r3, #32
	str	r3, [r7, #64]
.L60:
	ldr	r3, [r7, #68]
	uxth	r2, r3
	ldr	r3, [r7, #96]
	strh	r2, [r3]	@ movhi
.L40:
	movs	r3, #0
.L61:
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	se3_algo_AesHmacSha256s_update, .-se3_algo_AesHmacSha256s_update
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

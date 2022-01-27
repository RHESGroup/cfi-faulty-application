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
	.file	"se3_algo_aes256hmacsha256.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.global	salt
	.section	.rodata.salt,"a"
	.align	2
	.type	salt, %object
	.size	salt, 32
salt:
	.ascii	"\037%lr\241U\235\2740\012\"O*\020\245\372\203A\311b"
	.ascii	"{\010\253e\1773!<\306Z7\374"
	.section	.text.se3_algo_aes256hmacsha256_init,"ax",%progbits
	.align	1
	.global	se3_algo_aes256hmacsha256_init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_algo_aes256hmacsha256_init, %function
se3_algo_aes256hmacsha256_init:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #112
	add	r7, sp, #16
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	str	r3, [r7, #88]
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r3, r3
	and	r3, r3, #7
	strb	r3, [r7, #87]
	ldrh	r3, [r7, #10]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L2
	mov	r3, #256
	b	.L3
.L2:
	mov	r3, #512
.L3:
	strh	r3, [r7, #84]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #95]
	ldr	r3, [r7, #4]
	add	r3, r3, #300
	str	r3, [r7, #80]
	ldrh	r3, [r7, #84]
	cmp	r3, #256
	beq	.L4
	cmp	r3, #512
	beq	.L5
	b	.L26
.L4:
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #3
	bhi	.L7
	adr	r2, .L9
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L9:
	.word	.L12+1
	.word	.L11+1
	.word	.L10+1
	.word	.L8+1
	.p2align 1
.L12:
	movs	r3, #2
	strb	r3, [r7, #95]
	b	.L13
.L11:
	movs	r3, #4
	strb	r3, [r7, #95]
	b	.L13
.L8:
	movs	r3, #8
	strb	r3, [r7, #95]
	b	.L13
.L10:
	movs	r3, #1
	strb	r3, [r7, #95]
	b	.L13
.L7:
	movw	r3, #61446
	b	.L25
.L13:
	b	.L15
.L5:
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #3
	bhi	.L16
	adr	r2, .L18
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L18:
	.word	.L21+1
	.word	.L20+1
	.word	.L19+1
	.word	.L17+1
	.p2align 1
.L21:
	movs	r3, #3
	strb	r3, [r7, #95]
	b	.L22
.L20:
	movs	r3, #5
	strb	r3, [r7, #95]
	b	.L22
.L17:
	movs	r3, #8
	strb	r3, [r7, #95]
	b	.L22
.L19:
	movs	r3, #1
	strb	r3, [r7, #95]
	b	.L22
.L16:
	movw	r3, #61446
	b	.L25
.L22:
	b	.L15
.L26:
	movw	r3, #61446
	b	.L25
.L15:
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]
	mov	r1, r3
	movs	r3, #64
	str	r3, [sp, #8]
	add	r3, r7, #16
	str	r3, [sp, #4]
	mov	r3, #1000
	str	r3, [sp]
	movs	r3, #32
	ldr	r2, .L27
	bl	PBKDF2HmacSha256
	add	r3, r7, #16
	adds	r3, r3, #32
	movs	r2, #32
	mov	r1, r3
	ldr	r0, [r7, #80]
	bl	B5_HmacSha256_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L23
	movw	r3, #61446
	b	.L25
.L23:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]
	sxth	r2, r3
	ldrb	r3, [r7, #95]	@ zero_extendqisi2
	ldr	r0, [r7, #88]
	bl	B5_Aes256_Init
	mov	r3, r0
	cmp	r3, #0
	beq	.L24
	movw	r3, #61446
	b	.L25
.L24:
	movs	r3, #0
.L25:
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	salt
	.size	se3_algo_aes256hmacsha256_init, .-se3_algo_aes256hmacsha256_init
	.section	.text.se3_algo_aes256hmacsha256_update,"ax",%progbits
	.align	1
	.global	se3_algo_aes256hmacsha256_update
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_algo_aes256hmacsha256_update, %function
se3_algo_aes256hmacsha256_update:
	@ args = 16, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r3, [r7, #4]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #76]
	movs	r3, #0
	strb	r3, [r7, #67]
	movs	r3, #0
	strb	r3, [r7, #66]
	movs	r3, #0
	strb	r3, [r7, #65]
	ldr	r3, [r7, #12]
	add	r3, r3, #300
	str	r3, [r7, #52]
	ldrh	r3, [r7, #10]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L30
	mov	r3, #256
	b	.L31
.L30:
	mov	r3, #512
.L31:
	strh	r3, [r7, #50]	@ movhi
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	beq	.L32
	ldrh	r3, [r7, #8]
	cmp	r3, #16
	beq	.L33
	movw	r3, #61446
	b	.L49
.L33:
	movs	r3, #1
	strb	r3, [r7, #67]
.L32:
	ldrh	r3, [r7, #88]
	cmp	r3, #0
	beq	.L35
	ldrh	r3, [r7, #88]	@ movhi
	and	r3, r3, #15
	uxth	r3, r3
	cmp	r3, #0
	beq	.L36
	movw	r3, #61446
	b	.L49
.L36:
	movs	r3, #1
	strb	r3, [r7, #66]
	ldrh	r3, [r7, #88]
	lsrs	r3, r3, #4
	uxth	r3, r3
	str	r3, [r7, #76]
	ldrh	r3, [r7, #88]
	cmp	r3, #7488
	bls	.L35
	movw	r3, #61446
	b	.L49
.L35:
	ldrsh	r3, [r7, #10]
	cmp	r3, #0
	bge	.L37
	movs	r3, #1
	strb	r3, [r7, #65]
.L37:
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L38
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #56]
	bl	B5_Aes256_SetIV
	mov	r3, r0
	cmp	r3, #0
	beq	.L38
	movw	r3, #61441
	b	.L49
.L38:
	ldrb	r3, [r7, #66]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #56]
	ldrb	r3, [r3, #257]	@ zero_extendqisi2
	cmp	r3, #7
	ite	hi
	movhi	r2, #1
	movls	r2, #0
	uxtb	r2, r2
	cmp	r2, #0
	bne	.L40
	movs	r2, #1
	lsl	r3, r2, r3
	and	r3, r3, #168
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #92]
	str	r3, [r7, #72]
	ldr	r3, [r7, #100]
	str	r3, [r7, #68]
	b	.L41
.L40:
	ldr	r3, [r7, #100]
	str	r3, [r7, #72]
	ldr	r3, [r7, #92]
	str	r3, [r7, #68]
	nop
.L41:
	ldr	r3, [r7, #76]
	sxth	r3, r3
	ldr	r2, [r7, #68]
	ldr	r1, [r7, #72]
	ldr	r0, [r7, #56]
	bl	B5_Aes256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L42
	movw	r3, #61441
	b	.L49
.L42:
	ldr	r3, [r7, #96]
	ldrh	r2, [r7, #88]	@ movhi
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7, #50]
	cmp	r3, #256
	bne	.L43
	ldr	r3, [r7, #100]
	str	r3, [r7, #60]
	b	.L44
.L43:
	ldr	r3, [r7, #92]
	str	r3, [r7, #60]
.L44:
	ldrh	r3, [r7, #88]
	mov	r2, r3
	ldr	r1, [r7, #60]
	ldr	r0, [r7, #52]
	bl	B5_HmacSha256_Update
	mov	r3, r0
	cmp	r3, #0
	beq	.L39
	movw	r3, #61441
	b	.L49
.L39:
	ldrb	r3, [r7, #65]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L45
	ldr	r0, [r7, #56]
	bl	B5_Aes256_Finit
	mov	r3, r0
	cmp	r3, #0
	beq	.L46
	movw	r3, #61441
	b	.L49
.L46:
	ldrh	r3, [r7, #50]
	cmp	r3, #256
	bne	.L47
	ldrh	r3, [r7, #88]
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [r7, #52]
	bl	B5_HmacSha256_Finit
	mov	r3, r0
	cmp	r3, #0
	beq	.L45
	movw	r3, #61441
	b	.L49
.L47:
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #52]
	bl	B5_HmacSha256_Finit
	mov	r3, r0
	cmp	r3, #0
	beq	.L48
	movw	r3, #61441
	b	.L49
.L48:
	ldrh	r3, [r7, #88]
	ldr	r2, [r7, #72]
	adds	r1, r2, r3
	add	r3, r7, #16
	movs	r2, #32
	mov	r0, r3
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L45
	movw	r3, #401
	b	.L49
.L45:
	movs	r3, #0
.L49:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_algo_aes256hmacsha256_update, .-se3_algo_aes256hmacsha256_update
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

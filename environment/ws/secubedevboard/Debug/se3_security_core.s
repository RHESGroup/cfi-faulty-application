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
	.file	"se3_security_core.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.global	algo_table
	.section	.data.algo_table,"aw"
	.align	2
	.type	algo_table, %object
	.size	algo_table, 256
algo_table:
	.word	se3_algo_Aes_init
	.word	se3_algo_Aes_update
	.short	300
	.ascii	"Aes\000"
	.space	12
	.short	0
	.short	16
	.short	32
	.word	se3_algo_Sha256_init
	.word	se3_algo_Sha256_update
	.short	360
	.ascii	"Sha256\000"
	.space	9
	.short	2
	.short	32
	.short	0
	.word	se3_algo_HmacSha256_init
	.word	se3_algo_HmacSha256_update
	.short	488
	.ascii	"HmacSha256\000"
	.space	5
	.short	2
	.short	32
	.short	32
	.word	se3_algo_AesHmacSha256s_init
	.word	se3_algo_AesHmacSha256s_update
	.short	857
	.ascii	"AesHmacSha256s\000"
	.space	1
	.short	3
	.short	16
	.short	32
	.word	se3_algo_aes256hmacsha256_init
	.word	se3_algo_aes256hmacsha256_update
	.short	788
	.ascii	"AES256HMACSHA256"
	.short	3
	.short	16
	.short	32
	.word	0
	.word	0
	.short	0
	.ascii	"\000"
	.space	15
	.short	0
	.short	0
	.short	0
	.word	0
	.word	0
	.short	0
	.ascii	"\000"
	.space	15
	.short	0
	.short	0
	.short	0
	.word	0
	.word	0
	.short	0
	.ascii	"\000"
	.space	15
	.short	0
	.short	0
	.short	0
	.comm	ctx,360,4
	.section	.text.se3_security_core_init,"ax",%progbits
	.align	1
	.global	se3_security_core_init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_security_core_init, %function
se3_security_core_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	mov	r2, #360
	movs	r1, #0
	ldr	r0, .L2
	bl	memset
	movs	r2, #228
	movs	r1, #0
	ldr	r0, .L2+4
	bl	memset
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	ctx
	.word	se3_security_info
	.size	se3_security_core_init, .-se3_security_core_init
	.section	.text.record_find,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	record_find, %function
record_find:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	b	.L5
.L7:
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #240
	bne	.L5
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	ldrh	r2, [r7, #6]
	cmp	r2, r3
	bne	.L5
	movs	r3, #1
	b	.L8
.L5:
	ldr	r0, [r7]
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L7
	movs	r3, #0
.L8:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	record_find, .-record_find
	.section	.text.record_set,"ax",%progbits
	.align	1
	.global	record_set
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	record_set, %function
record_set:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #47]
	ldrh	r3, [r7, #6]
	cmp	r3, #1
	bls	.L10
	movs	r3, #0
	b	.L17
.L10:
	add	r3, r7, #28
	mov	r0, r3
	bl	se3_flash_it_init
	ldrh	r3, [r7, #6]
	add	r2, r7, #28
	mov	r1, r2
	mov	r0, r3
	bl	record_find
	mov	r3, r0
	cmp	r3, #0
	beq	.L12
	movs	r3, #1
	strb	r3, [r7, #47]
.L12:
	add	r4, r7, #12
	add	r3, r7, #28
	ldm	r3, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	add	r3, r7, #12
	movs	r2, #34
	movs	r1, #240
	mov	r0, r3
	bl	se3_flash_it_new
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L13
	movs	r3, #0
	b	.L17
.L13:
	add	r0, r7, #12
	movs	r3, #32
	ldr	r2, [r7]
	movs	r1, #2
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L14
	movs	r3, #0
	b	.L17
.L14:
	ldrh	r3, [r7, #6]
	strh	r3, [r7, #8]	@ movhi
	add	r2, r7, #8
	add	r0, r7, #12
	movs	r3, #2
	movs	r1, #0
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L15
	movs	r3, #0
	b	.L17
.L15:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L16
	add	r3, r7, #28
	mov	r0, r3
	bl	se3_flash_it_delete
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L16
	movs	r3, #0
	b	.L17
.L16:
	movs	r3, #1
.L17:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	record_set, .-record_set
	.section	.text.record_get,"ax",%progbits
	.align	1
	.global	record_get
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	record_get, %function
record_get:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	cmp	r3, #1
	bls	.L19
	movs	r3, #0
	b	.L22
.L19:
	add	r3, r7, #8
	mov	r0, r3
	bl	se3_flash_it_init
	add	r2, r7, #8
	ldrh	r3, [r7, #6]
	mov	r1, r2
	mov	r0, r3
	bl	record_find
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L21
	movs	r3, #0
	b	.L22
.L21:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	movs	r2, #32
	mov	r1, r3
	ldr	r0, [r7]
	bl	memcpy
	movs	r3, #1
.L22:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	record_get, .-record_get
	.section	.text.crypto_init,"ax",%progbits
	.align	1
	.global	crypto_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	crypto_init, %function
crypto_init:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #76]
	ldrh	r3, [r7, #14]
	cmp	r3, #8
	beq	.L24
	movw	r3, #61446
	b	.L37
.L24:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #56]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #58]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #60]
	ldrh	r3, [r7, #56]
	cmp	r3, #7
	bhi	.L26
	ldrh	r3, [r7, #56]
	ldr	r2, .L38
	lsls	r3, r3, #5
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #76]
.L26:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L27
	movw	r3, #61446
	b	.L37
.L27:
	ldr	r3, [r7, #8]
	adds	r3, r3, #16
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	bne	.L28
	ldr	r3, [r7, #44]
	mov	r2, #2048
	movs	r1, #0
	mov	r0, r3
	bl	memset
	b	.L29
.L28:
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_init
	ldr	r3, [r7, #32]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_find
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L30
	movs	r3, #0
	str	r3, [r7, #16]
.L30:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L31
	movs	r3, #200
	b	.L37
.L31:
	add	r2, r7, #32
	add	r3, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_read
	ldr	r3, [r7, #36]
	mov	r4, r3
	mov	r5, #0
	bl	se3_time_get
	mov	r2, r0
	mov	r3, r1
	cmp	r5, r3
	it	eq
	cmpeq	r4, r2
	bcc	.L32
	bl	get_now_initialized
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L29
.L32:
	movs	r3, #201
	b	.L37
.L29:
	mov	r3, #-1
	str	r3, [r7, #52]
	ldrh	r3, [r7, #56]
	ldr	r2, .L38
	lsls	r3, r3, #5
	add	r3, r3, r2
	adds	r3, r3, #8
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r0, .L38+4
	bl	se3_mem_alloc
	str	r0, [r7, #72]
	ldr	r3, [r7, #72]
	cmp	r3, #0
	blt	.L33
	ldr	r3, [r7, #72]
	str	r3, [r7, #52]
.L33:
	ldr	r3, [r7, #52]
	cmp	r3, #-1
	bne	.L34
	mov	r3, #400
	b	.L37
.L34:
	ldr	r1, [r7, #72]
	ldr	r0, .L38+4
	bl	se3_mem_ptr
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L35
	movw	r3, #61441
	b	.L37
.L35:
	ldrh	r1, [r7, #58]
	add	r0, r7, #32
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #68]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #52]
	mov	r1, r3
	ldr	r0, .L38+4
	bl	se3_mem_free
	ldr	r3, [r7, #64]
	uxth	r3, r3
	b	.L37
.L36:
	ldr	r3, [r7, #52]
	ldrh	r1, [r7, #56]
	ldr	r2, .L38+8
	adds	r3, r3, #12
	lsls	r3, r3, #1
	add	r3, r3, r2
	mov	r2, r1	@ movhi
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, [r7, #52]
	ldr	r3, [r7]
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	movs	r2, #4
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L37:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L39:
	.align	2
.L38:
	.word	algo_table
	.word	se3_security_info+8
	.word	se3_security_info
	.size	crypto_init, .-crypto_init
	.section	.text.crypto_update,"ax",%progbits
	.align	1
	.global	crypto_update
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	crypto_update, %function
crypto_update:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #16
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	str	r3, [r7, #56]
	ldrh	r3, [r7, #14]
	cmp	r3, #15
	bhi	.L41
	movw	r3, #61446
	b	.L52
.L41:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #6
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #8
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #32]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #16
	str	r3, [r7, #36]
	ldrh	r3, [r7, #30]
	and	r3, r3, #15
	uxth	r3, r3
	cmp	r3, #0
	beq	.L43
	ldrh	r3, [r7, #30]
	bic	r3, r3, #15
	uxth	r3, r3
	adds	r3, r3, #16
	strh	r3, [r7, #62]	@ movhi
	b	.L44
.L43:
	ldrh	r3, [r7, #30]	@ movhi
	strh	r3, [r7, #62]	@ movhi
.L44:
	ldrh	r3, [r7, #62]
	adds	r3, r3, #16
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldrh	r3, [r7, #62]
	adds	r3, r3, #16
	ldrh	r2, [r7, #32]
	add	r3, r3, r2
	movw	r2, #7536
	cmp	r3, r2
	ble	.L45
	movw	r3, #61446
	b	.L52
.L45:
	ldr	r3, [r7, #24]
	cmp	r3, #99
	bls	.L46
	movs	r3, #200
	b	.L52
.L46:
	ldr	r3, [r7, #24]
	ldr	r2, .L53
	adds	r3, r3, #12
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3, #4]	@ movhi
	strh	r3, [r7, #54]	@ movhi
	ldrh	r3, [r7, #54]
	cmp	r3, #7
	bls	.L47
	movs	r3, #200
	b	.L52
.L47:
	ldrh	r3, [r7, #54]
	ldr	r2, .L53+4
	lsls	r3, r3, #5
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L48
	movs	r3, #200
	b	.L52
.L48:
	ldr	r3, [r7, #24]
	mov	r1, r3
	ldr	r0, .L53+8
	bl	se3_mem_ptr
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L49
	movs	r3, #200
	b	.L52
.L49:
	movs	r3, #0
	strh	r3, [r7, #16]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #16
	str	r3, [r7, #20]
	ldrh	r0, [r7, #28]
	ldrh	r5, [r7, #30]
	ldr	r6, [r7, #36]
	ldrh	r3, [r7, #32]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #20]
	str	r1, [sp, #12]
	add	r1, r7, #16
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r4, [r7, #56]
	mov	r3, r6
	mov	r2, r5
	mov	r1, r0
	ldr	r0, [r7, #48]
	blx	r4
	mov	r3, r0
	strh	r3, [r7, #46]	@ movhi
	ldrh	r3, [r7, #46]
	cmp	r3, #0
	beq	.L50
	ldrh	r3, [r7, #46]
	b	.L52
.L50:
	ldrh	r3, [r7, #28]
	sxth	r3, r3
	cmp	r3, #0
	bge	.L51
	ldr	r3, [r7, #24]
	mov	r1, r3
	ldr	r0, .L53+8
	bl	se3_mem_free
.L51:
	ldrh	r2, [r7, #16]
	ldr	r3, [r7]
	strh	r2, [r3]	@ unaligned
	ldrh	r3, [r7, #16]
	adds	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L52:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L54:
	.align	2
.L53:
	.word	se3_security_info
	.word	algo_table
	.word	se3_security_info+8
	.size	crypto_update, .-crypto_update
	.section	.text.crypto_set_time,"ax",%progbits
	.align	1
	.global	crypto_set_time
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	crypto_set_time, %function
crypto_set_time:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	cmp	r3, #4
	beq	.L56
	movw	r3, #61446
	b	.L58
.L56:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	mov	r2, r3
	mov	r3, #0
	mov	r0, r2
	mov	r1, r3
	bl	se3_time_set
	movs	r3, #0
.L58:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	crypto_set_time, .-crypto_set_time
	.section	.text.crypto_list,"ax",%progbits
	.align	1
	.global	crypto_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	crypto_list, %function
crypto_list:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	beq	.L60
	movw	r3, #61446
	b	.L65
.L60:
	ldr	r3, [r7]
	adds	r3, r3, #2
	str	r3, [r7, #24]
	movs	r3, #2
	strh	r3, [r7, #30]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, [r7, #24]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L62
.L64:
	ldr	r2, .L66
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L63
	ldr	r2, .L66
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	adds	r3, r3, #8
	ldr	r2, .L66
	add	r3, r3, r2
	adds	r3, r3, #2
	movs	r2, #16
	mov	r1, r3
	ldr	r0, [r7, #36]
	bl	memcpy
	ldr	r3, [r7, #36]
	adds	r3, r3, #16
	ldr	r2, [r7, #32]
	lsls	r2, r2, #5
	adds	r2, r2, #24
	ldr	r1, .L66
	add	r2, r2, r1
	adds	r2, r2, #2
	ldrh	r2, [r2]	@ unaligned
	uxth	r2, r2
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #36]
	adds	r3, r3, #18
	ldr	r2, [r7, #32]
	lsls	r2, r2, #5
	adds	r2, r2, #24
	ldr	r1, .L66
	add	r2, r2, r1
	adds	r2, r2, #4
	ldrh	r2, [r2]	@ unaligned
	uxth	r2, r2
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #36]
	adds	r3, r3, #20
	ldr	r2, [r7, #32]
	lsls	r2, r2, #5
	adds	r2, r2, #24
	ldr	r1, .L66
	add	r2, r2, r1
	adds	r2, r2, #6
	ldrh	r2, [r2]	@ unaligned
	uxth	r2, r2
	strh	r2, [r3]	@ unaligned
	ldrh	r3, [r7, #20]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #20]	@ movhi
	ldrh	r3, [r7, #30]	@ movhi
	adds	r3, r3, #22
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #36]
	adds	r3, r3, #22
	str	r3, [r7, #36]
.L63:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L62:
	ldr	r3, [r7, #32]
	cmp	r3, #7
	bls	.L64
	ldrh	r2, [r7, #20]
	ldr	r3, [r7]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #30]	@ movhi
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L65:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L67:
	.align	2
.L66:
	.word	algo_table
	.size	crypto_list, .-crypto_list
	.section	.text.se3_payload_cryptoinit,"ax",%progbits
	.align	1
	.global	se3_payload_cryptoinit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_payload_cryptoinit, %function
se3_payload_cryptoinit:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #64
	str	r3, [sp, #8]
	add	r3, r7, #8
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #32
	ldr	r0, [r7]
	bl	PBKDF2HmacSha256
	ldr	r0, [r7, #4]
	add	r1, r7, #8
	movs	r3, #4
	movs	r2, #32
	bl	B5_Aes256_Init
	ldr	r3, [r7, #4]
	add	r0, r3, #300
	add	r1, r7, #8
	movs	r3, #5
	movs	r2, #32
	bl	B5_Aes256_Init
	ldr	r3, [r7, #4]
	add	r0, r3, #1088
	add	r3, r7, #8
	adds	r3, r3, #32
	movs	r2, #32
	mov	r1, r3
	bl	memcpy
	add	r3, r7, #8
	movs	r2, #64
	movs	r1, #0
	mov	r0, r3
	bl	memset
	nop
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_payload_cryptoinit, .-se3_payload_cryptoinit
	.section	.text.se3_payload_encrypt,"ax",%progbits
	.align	1
	.global	se3_payload_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_payload_encrypt, %function
se3_payload_encrypt:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L70
	ldrsh	r3, [r7, #28]
	cmp	r3, #0
	bge	.L76
	ldr	r3, [r7, #12]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	B5_Aes256_SetIV
	ldr	r0, [r7, #12]
	ldrsh	r3, [r7, #24]
	ldr	r2, [r7]
	ldr	r1, [r7]
	bl	B5_Aes256_Update
	b	.L76
.L70:
	movs	r3, #0
	b	.L73
.L76:
	nop
	ldrh	r3, [r7, #28]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r7, #12]
	add	r0, r3, #600
	ldr	r3, [r7, #12]
	add	r3, r3, #1088
	movs	r2, #32
	mov	r1, r3
	bl	B5_HmacSha256_Init
	ldr	r3, [r7, #12]
	add	r3, r3, #600
	movs	r2, #16
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	B5_HmacSha256_Update
	ldr	r3, [r7, #12]
	add	r0, r3, #600
	ldrh	r3, [r7, #24]
	lsls	r3, r3, #4
	mov	r2, r3
	ldr	r1, [r7]
	bl	B5_HmacSha256_Update
	ldr	r3, [r7, #12]
	add	r2, r3, #600
	ldr	r3, [r7, #12]
	add	r3, r3, #1120
	mov	r1, r3
	mov	r0, r2
	bl	B5_HmacSha256_Finit
	ldr	r3, [r7, #12]
	add	r3, r3, #1120
	movs	r2, #16
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	memcpy
	b	.L75
.L74:
	movs	r2, #16
	movs	r1, #0
	ldr	r0, [r7, #8]
	bl	memset
.L75:
	movs	r3, #1
.L73:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_payload_encrypt, .-se3_payload_encrypt
	.section	.text.se3_payload_decrypt,"ax",%progbits
	.align	1
	.global	se3_payload_decrypt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_payload_decrypt, %function
se3_payload_decrypt:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldrh	r3, [r7, #28]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #12]
	add	r0, r3, #600
	ldr	r3, [r7, #12]
	add	r3, r3, #1088
	movs	r2, #32
	mov	r1, r3
	bl	B5_HmacSha256_Init
	ldr	r3, [r7, #12]
	add	r3, r3, #600
	movs	r2, #16
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	B5_HmacSha256_Update
	ldr	r3, [r7, #12]
	add	r0, r3, #600
	ldrh	r3, [r7, #24]
	lsls	r3, r3, #4
	mov	r2, r3
	ldr	r1, [r7]
	bl	B5_HmacSha256_Update
	ldr	r3, [r7, #12]
	add	r2, r3, #600
	ldr	r3, [r7, #12]
	add	r3, r3, #1120
	mov	r1, r3
	mov	r0, r2
	bl	B5_HmacSha256_Finit
	ldr	r3, [r7, #12]
	add	r3, r3, #1120
	movs	r2, #16
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L78
	movs	r3, #0
	b	.L79
.L78:
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L80
	ldrsh	r3, [r7, #28]
	cmp	r3, #0
	bge	.L83
	ldr	r3, [r7, #12]
	add	r3, r3, #300
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	B5_Aes256_SetIV
	ldr	r3, [r7, #12]
	add	r0, r3, #300
	ldrsh	r3, [r7, #24]
	ldr	r2, [r7]
	ldr	r1, [r7]
	bl	B5_Aes256_Update
	b	.L83
.L80:
	movs	r3, #0
	b	.L79
.L83:
	nop
	movs	r3, #1
.L79:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_payload_decrypt, .-se3_payload_decrypt
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

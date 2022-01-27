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
	.file	"se3_dispatcher_core.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.comm	se3_algo_impl_t,1,1
	.comm	login_struct,1228,4
	.section	.data.handlers,"aw"
	.align	2
	.type	handlers, %object
	.size	handlers, 192
handlers:
	.word	0
	.word	challenge
	.word	login
	.word	logout
	.word	config
	.word	key_edit
	.word	key_list
	.word	crypto_init
	.word	crypto_update
	.word	crypto_list
	.word	crypto_set_time
	.word	0
	.word	sekey_utilities
	.word	0
	.word	0
	.word	error
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.comm	algo_implementation,1,1
	.comm	crypto_algo,1,1
	.comm	req_hdr,68,4
	.section	.text.sekey_utilities,"ax",%progbits
	.align	1
	.global	sekey_utilities
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sekey_utilities, %function
sekey_utilities:
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
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #38]	@ movhi
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	r3, .L14
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	movs	r3, #100
	b	.L13
.L2:
	add	r3, r7, #20
	mov	r0, r3
	bl	se3_flash_it_init
	movs	r3, #0
	str	r3, [r7, #20]
	ldrh	r3, [r7, #38]
	subs	r3, r3, #1
	cmp	r3, #7
	bhi	.L4
	adr	r2, .L6
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L6:
	.word	.L12+1
	.word	.L11+1
	.word	.L4+1
	.word	.L10+1
	.word	.L9+1
	.word	.L8+1
	.word	.L7+1
	.word	.L5+1
	.p2align 1
.L12:
	ldr	r3, [r7, #8]
	adds	r1, r3, #2
	ldrh	r0, [r7, #14]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	bl	store_user_info
	mov	r3, r0
	b	.L13
.L11:
	ldr	r3, [r7, #8]
	adds	r1, r3, #2
	ldrh	r0, [r7, #14]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	bl	load_user_info
	mov	r3, r0
	b	.L13
.L7:
	ldr	r3, [r7, #8]
	adds	r1, r3, #2
	ldrh	r0, [r7, #14]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	bl	load_encrypted_key_data
	mov	r3, r0
	b	.L13
.L10:
	ldr	r3, [r7, #8]
	adds	r1, r3, #2
	ldrh	r0, [r7, #14]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	bl	load_key_ids
	mov	r3, r0
	b	.L13
.L9:
	ldr	r3, [r7, #8]
	adds	r1, r3, #2
	ldrh	r0, [r7, #14]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	bl	delete_all_keys
	mov	r3, r0
	b	.L13
.L8:
	ldr	r3, [r7, #8]
	adds	r1, r3, #2
	ldrh	r0, [r7, #14]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	bl	delete_key
	mov	r3, r0
	b	.L13
.L5:
	ldr	r3, [r7, #8]
	adds	r1, r3, #2
	ldrh	r0, [r7, #14]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	bl	insert_key
	mov	r3, r0
	b	.L13
.L4:
	movw	r3, #61446
.L13:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	login_struct
	.size	sekey_utilities, .-sekey_utilities
	.section	.text.error,"ax",%progbits
	.align	1
	.global	error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	error, %function
error:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movw	r3, #61445
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	error, .-error
	.section	.text.config,"ax",%progbits
	.align	1
	.global	config
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	config, %function
config:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L33
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L19
	movs	r3, #100
	b	.L31
.L19:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #24]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7]
	str	r3, [r7, #20]
	ldrh	r3, [r7, #24]
	cmp	r3, #1
	bls	.L21
	movw	r3, #61446
	b	.L31
.L21:
	ldrh	r3, [r7, #26]
	subs	r3, r3, #1
	cmp	r3, #1
	bhi	.L22
	ldrh	r3, [r7, #14]
	cmp	r3, #36
	beq	.L32
	movw	r3, #61446
	b	.L31
.L22:
	movw	r3, #61446
	b	.L31
.L32:
	nop
	ldrh	r3, [r7, #26]
	cmp	r3, #1
	bne	.L25
	ldr	r3, .L33
	ldrh	r2, [r3, #2]
	ldrh	r3, [r7, #24]
	mov	r1, r3
	ldr	r3, .L33+4
	ldrh	r3, [r3, r1, lsl #2]
	cmp	r2, r3
	bcs	.L26
	movs	r3, #100
	b	.L31
.L26:
	ldrh	r3, [r7, #24]
	ldr	r2, [r7, #20]
	mov	r1, r2
	mov	r0, r3
	bl	record_get
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L27
	movs	r3, #200
	b	.L31
.L27:
	ldr	r3, [r7, #4]
	movs	r2, #32
	strh	r2, [r3]	@ movhi
	b	.L28
.L25:
	ldrh	r3, [r7, #26]
	cmp	r3, #2
	bne	.L29
	ldr	r3, .L33
	ldrh	r2, [r3, #2]
	ldrh	r3, [r7, #24]
	ldr	r1, .L33+4
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldrh	r3, [r3, #2]
	cmp	r2, r3
	bcs	.L30
	movs	r3, #100
	b	.L31
.L30:
	ldrh	r3, [r7, #24]
	ldr	r2, [r7, #28]
	mov	r1, r2
	mov	r0, r3
	bl	record_set
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L28
	mov	r3, #400
	b	.L31
.L29:
	movw	r3, #61446
	b	.L31
.L28:
	movs	r3, #0
.L31:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L34:
	.align	2
.L33:
	.word	login_struct
	.word	se3_security_info
	.size	config, .-config
	.section	.text.challenge,"ax",%progbits
	.align	1
	.global	challenge
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	challenge, %function
challenge:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #16
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	cmp	r3, #66
	beq	.L36
	movw	r3, #61446
	b	.L44
.L36:
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	adds	r3, r3, #32
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	adds	r3, r3, #64
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #32]	@ movhi
	ldr	r3, [r7]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	adds	r3, r3, #32
	str	r3, [r7, #24]
	ldr	r3, .L46
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L38
	movw	r3, #61444
	b	.L44
.L38:
	add	r3, r7, #40
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	memset
	ldrh	r3, [r7, #32]
	cmp	r3, #100
	beq	.L39
	cmp	r3, #1000
	beq	.L40
	b	.L45
.L39:
	add	r3, r7, #40
	mov	r1, r3
	movs	r0, #1
	bl	record_get
	b	.L42
.L40:
	add	r3, r7, #40
	mov	r1, r3
	movs	r0, #0
	bl	record_get
	b	.L42
.L45:
	movw	r3, #61446
	b	.L44
.L42:
	ldr	r3, [r7, #20]
	mov	r1, r3
	movs	r0, #32
	bl	se3_rand
	mov	r3, r0
	cmp	r3, #32
	beq	.L43
	movw	r3, #61441
	b	.L44
.L43:
	ldr	r2, [r7, #20]
	add	r0, r7, #40
	movs	r3, #32
	str	r3, [sp, #8]
	ldr	r3, .L46+4
	str	r3, [sp, #4]
	movs	r3, #32
	str	r3, [sp]
	movs	r3, #32
	movs	r1, #32
	bl	PBKDF2HmacSha256
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	add	r0, r7, #40
	movs	r1, #32
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	movs	r3, #32
	str	r3, [sp]
	movs	r3, #32
	movs	r1, #32
	bl	PBKDF2HmacSha256
	ldr	r2, [r7, #36]
	add	r0, r7, #40
	movs	r3, #32
	str	r3, [sp, #8]
	ldr	r3, .L46+8
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #32
	movs	r1, #32
	bl	PBKDF2HmacSha256
	ldrh	r2, [r7, #32]
	ldr	r3, .L46
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #64
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L44:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	login_struct
	.word	login_struct+6
	.word	login_struct+38
	.size	challenge, .-challenge
	.section	.text.login,"ax",%progbits
	.align	1
	.global	login
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	login, %function
login:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	cmp	r3, #32
	beq	.L49
	movw	r3, #61446
	b	.L55
.L49:
	ldr	r3, .L56
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	movw	r3, #61444
	b	.L55
.L51:
	ldr	r3, .L56
	ldrh	r3, [r3, #4]
	movw	r2, #65535
	cmp	r3, r2
	bne	.L52
	movw	r3, #61444
	b	.L55
.L52:
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	str	r3, [r7, #20]
	ldr	r3, .L56
	ldrh	r3, [r3, #4]	@ movhi
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, .L56
	movw	r2, #65535
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #24]
	movs	r2, #32
	ldr	r1, .L56+4
	mov	r0, r3
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	movs	r3, #101
	b	.L55
.L53:
	ldr	r1, .L56+4
	movs	r0, #16
	bl	se3_rand
	mov	r3, r0
	cmp	r3, #16
	beq	.L54
	movw	r3, #61441
	b	.L55
.L54:
	ldr	r2, [r7, #20]
	ldr	r3, .L56
	adds	r3, r3, #6
	ldr	r4, [r3]	@ unaligned
	ldr	r0, [r3, #4]	@ unaligned
	ldr	r1, [r3, #8]	@ unaligned
	ldr	r3, [r3, #12]	@ unaligned
	str	r4, [r2]	@ unaligned
	str	r0, [r2, #4]	@ unaligned
	str	r1, [r2, #8]	@ unaligned
	str	r3, [r2, #12]	@ unaligned
	ldr	r3, .L56
	movs	r2, #1
	strb	r2, [r3]
	ldr	r2, .L56
	ldrh	r3, [r7, #30]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #16
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L55:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L57:
	.align	2
.L56:
	.word	login_struct
	.word	login_struct+6
	.size	login, .-login
	.section	.text.logout,"ax",%progbits
	.align	1
	.global	logout
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	logout, %function
logout:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	beq	.L59
	movw	r3, #61446
	b	.L60
.L59:
	ldr	r3, .L62
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L61
	movs	r3, #100
	b	.L60
.L61:
	bl	login_cleanup
	movs	r3, #0
.L60:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L63:
	.align	2
.L62:
	.word	login_struct
	.size	logout, .-logout
	.section	.text.key_edit,"ax",%progbits
	.align	1
	.global	key_edit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	key_edit, %function
key_edit:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
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
	ldrh	r3, [r7, #14]
	cmp	r3, #13
	bhi	.L65
	movw	r3, #61446
	b	.L82
.L65:
	ldr	r3, .L86
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L67
	movs	r3, #100
	b	.L82
.L67:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #52]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #56]
	ldr	r3, [r7, #8]
	adds	r3, r3, #6
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #60]
	ldr	r3, [r7, #8]
	adds	r3, r3, #10
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #64]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #66]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #14
	str	r3, [r7, #68]
	ldrh	r3, [r7, #64]
	adds	r3, r3, #14
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #72]
	ldrh	r3, [r7, #64]
	cmp	r3, #2048
	bhi	.L68
	ldrh	r3, [r7, #66]
	cmp	r3, #32
	bls	.L69
.L68:
	movw	r3, #61446
	b	.L82
.L69:
	ldr	r3, [r7, #56]
	str	r3, [r7, #32]
	ldrh	r3, [r7, #64]
	strh	r3, [r7, #40]	@ movhi
	ldrh	r3, [r7, #66]
	strh	r3, [r7, #42]	@ movhi
	ldr	r3, [r7, #60]
	str	r3, [r7, #36]
	ldr	r3, [r7, #68]
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	str	r3, [r7, #48]
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
	beq	.L70
	movs	r3, #0
	str	r3, [r7, #16]
.L70:
	ldrh	r3, [r7, #52]
	cmp	r3, #3
	beq	.L71
	cmp	r3, #3
	bgt	.L72
	cmp	r3, #1
	beq	.L73
	cmp	r3, #2
	beq	.L74
	b	.L72
.L73:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L75
	movs	r3, #200
	b	.L82
.L75:
	add	r2, r7, #32
	add	r3, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_new
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L83
	mov	r3, #400
	b	.L82
.L74:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L78
	movs	r3, #200
	b	.L82
.L78:
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_delete
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L84
	movw	r3, #61441
	b	.L82
.L71:
	movs	r3, #0
	strb	r3, [r7, #79]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L80
	add	r2, r7, #32
	add	r3, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_equal
	mov	r3, r0
	strb	r3, [r7, #79]
	ldrb	r3, [r7, #79]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L80
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_delete
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L80
	movw	r3, #61441
	b	.L82
.L80:
	movs	r3, #0
	str	r3, [r7, #16]
	ldrb	r3, [r7, #79]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L85
	add	r2, r7, #32
	add	r3, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_new
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L85
	mov	r3, #400
	b	.L82
.L72:
	movw	r3, #61446
	b	.L82
.L83:
	nop
	b	.L77
.L84:
	nop
	b	.L77
.L85:
	nop
.L77:
	movs	r3, #0
.L82:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L87:
	.align	2
.L86:
	.word	login_struct
	.size	key_edit, .-key_edit
	.section	.text.key_list,"ax",%progbits
	.align	1
	.global	key_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	key_list, %function
key_list:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #144
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	add	r3, r7, #80
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #140]
	movs	r3, #0
	str	r3, [r7, #128]
	ldrh	r3, [r7, #14]
	cmp	r3, #36
	beq	.L89
	movw	r3, #61446
	b	.L97
.L89:
	ldr	r3, .L100
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L91
	movs	r3, #100
	b	.L97
.L91:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #120]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #122]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #124]
	ldr	r3, [r7, #8]
	adds	r3, r3, #48
	str	r3, [r7, #108]
	add	r3, r7, #48
	str	r3, [r7, #112]
	movs	r3, #0
	strh	r3, [r7, #116]	@ movhi
	ldrh	r3, [r7, #120]	@ movhi
	strh	r3, [r7, #134]	@ movhi
	movs	r3, #2
	str	r3, [r7, #140]
	ldr	r3, [r7]
	adds	r3, r3, #2
	str	r3, [r7, #136]
	b	.L92
.L96:
	ldrb	r3, [r7, #84]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L92
	ldrh	r3, [r7, #134]
	cmp	r3, #0
	beq	.L93
	ldrh	r3, [r7, #134]
	subs	r3, r3, #1
	strh	r3, [r7, #134]	@ movhi
	b	.L92
.L93:
	add	r2, r7, #96
	add	r3, r7, #80
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_read
	ldrh	r3, [r7, #106]
	adds	r3, r3, #44
	str	r3, [r7, #128]
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	movw	r2, #7536
	cmp	r3, r2
	bhi	.L98
	ldr	r1, [r7, #124]
	add	r2, r7, #16
	add	r3, r7, #96
	mov	r0, r3
	bl	se3_key_fingerprint
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #136]
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7, #136]
	adds	r3, r3, #4
	ldr	r2, [r7, #100]
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7, #136]
	adds	r3, r3, #8
	ldrh	r2, [r7, #104]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #136]
	adds	r3, r3, #10
	ldrh	r2, [r7, #106]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #136]
	adds	r3, r3, #12
	mov	r5, r3
	add	r4, r7, #16
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
	ldr	r3, [r7, #136]
	adds	r3, r3, #44
	ldr	r1, [r7, #112]
	ldrh	r2, [r7, #106]
	mov	r0, r3
	bl	memcpy
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r2, [r7, #140]
	ldr	r3, [r7, #128]
	add	r3, r3, r2
	str	r3, [r7, #140]
	ldrh	r3, [r7, #116]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #116]	@ movhi
	ldrh	r2, [r7, #116]
	ldrh	r3, [r7, #122]
	cmp	r2, r3
	bcs	.L99
.L92:
	add	r3, r7, #80
	mov	r0, r3
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L96
	b	.L95
.L98:
	nop
	b	.L95
.L99:
	nop
.L95:
	ldr	r3, [r7, #108]
	mov	r2, #2048
	movs	r1, #0
	mov	r0, r3
	bl	memset
	ldrh	r2, [r7, #116]
	ldr	r3, [r7]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #140]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L97:
	mov	r0, r3
	adds	r7, r7, #144
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L101:
	.align	2
.L100:
	.word	login_struct
	.size	key_list, .-key_list
	.section	.text.dispatcher_call,"ax",%progbits
	.align	1
	.global	dispatcher_call
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	dispatcher_call, %function
dispatcher_call:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #16
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	str	r3, [r7, #84]
	ldr	r3, [r7, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	adds	r3, r3, #16
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	adds	r3, r3, #32
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	adds	r3, r3, #64
	str	r3, [r7, #60]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #50
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #14]
	cmp	r3, #63
	bhi	.L103
	movw	r3, #61442
	b	.L124
.L103:
	ldr	r0, .L125
	bl	sekey_get_auth
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L105
	movs	r3, #100
	b	.L124
.L105:
	ldr	r3, .L125+4
	ldrb	r3, [r3, #1224]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L106
	ldr	r1, .L125
	ldr	r0, .L125+8
	bl	se3_payload_cryptoinit
	ldr	r3, .L125+4
	movs	r2, #1
	strb	r2, [r3, #1224]
.L106:
	ldr	r0, [r7, #44]
	ldr	r4, [r7, #48]
	ldr	r3, [r7, #8]
	add	r5, r3, #32
	ldrh	r3, [r7, #14]
	subs	r3, r3, #32
	cmp	r3, #0
	bge	.L107
	adds	r3, r3, #15
.L107:
	asrs	r3, r3, #4
	uxth	r3, r3
	ldr	r2, .L125+12
	ldrh	r2, [r2, #2]
	ldr	r1, .L125+16
	ldrb	r1, [r1]	@ zero_extendqisi2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r5
	mov	r2, r4
	mov	r1, r0
	ldr	r0, .L125+8
	bl	se3_payload_decrypt
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L108
	movw	r3, #61442
	b	.L124
.L108:
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L109
	ldr	r3, [r7, #52]
	movs	r2, #16
	mov	r1, r3
	ldr	r0, .L125+20
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L109
	ldrh	r3, [r7, #22]
	cmp	r3, #1
	bne	.L110
	mov	r3, #300
	b	.L124
.L110:
	ldrh	r3, [r7, #22]
	cmp	r3, #11
	bne	.L111
	movs	r3, #3
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #50
	ldrh	r2, [r7, #22]
	strh	r2, [r3]	@ unaligned
	b	.L109
.L111:
	movs	r3, #100
	b	.L124
.L109:
	ldr	r3, [r7, #8]
	adds	r3, r3, #48
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #56]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #50
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #58]	@ movhi
	ldrh	r3, [r7, #58]
	cmp	r3, #15
	bhi	.L112
	ldrh	r3, [r7, #58]
	cmp	r3, #6
	bls	.L113
	ldrh	r3, [r7, #58]
	cmp	r3, #10
	bhi	.L113
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L113
	movs	r3, #100
	b	.L124
.L113:
	ldr	r2, .L125
	ldr	r1, .L125+16
	ldr	r0, .L125+24
	bl	sekey_get_implementation_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L114
	ldr	r3, .L125+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrh	r2, [r7, #58]
	mov	r1, r2
	ldr	r2, .L125+28
	lsls	r3, r3, #4
	add	r3, r3, r1
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #84]
	b	.L112
.L114:
	movs	r3, #100
	b	.L124
.L112:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L115
	ldr	r3, .L125+32
	str	r3, [r7, #84]
.L115:
	ldr	r3, [r7, #60]
	str	r3, [r7, #76]
	ldrh	r3, [r7, #56]	@ movhi
	strh	r3, [r7, #74]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #64
	str	r3, [r7, #68]
	movs	r3, #0
	strh	r3, [r7, #64]	@ movhi
	add	r2, r7, #64
	ldrh	r0, [r7, #74]
	ldr	r4, [r7, #84]
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #76]
	blx	r4
	mov	r3, r0
	strh	r3, [r7, #66]	@ movhi
	ldrh	r3, [r7, #64]
	strh	r3, [r7, #36]	@ movhi
	ldr	r3, [r7]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	adds	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, [r7]
	adds	r3, r3, #32
	str	r3, [r7, #32]
	ldrh	r3, [r7, #66]	@ movhi
	strh	r3, [r7, #38]	@ movhi
	ldr	r3, [r7, #68]
	str	r3, [r7, #40]
	ldrh	r3, [r7, #64]	@ movhi
	strh	r3, [r7, #82]	@ movhi
	ldrh	r3, [r7, #82]	@ movhi
	and	r3, r3, #15
	uxth	r3, r3
	cmp	r3, #0
	beq	.L116
	ldrh	r3, [r7, #82]
	ldr	r2, [r7, #68]
	adds	r0, r2, r3
	ldrh	r3, [r7, #82]
	and	r3, r3, #15
	rsb	r3, r3, #16
	mov	r2, r3
	movs	r1, #0
	bl	memset
	ldrh	r3, [r7, #82]	@ movhi
	bic	r3, r3, #15
	uxth	r3, r3
	adds	r3, r3, #16
	strh	r3, [r7, #82]	@ movhi
.L116:
	ldrh	r3, [r7, #82]	@ movhi
	adds	r3, r3, #64
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #48
	ldrh	r2, [r7, #36]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	adds	r3, r3, #50
	ldrh	r2, [r7, #38]
	strh	r2, [r3]	@ unaligned
	ldr	r3, .L125+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r7]
	add	r2, r3, #32
	ldr	r3, .L125+4
	adds	r3, r3, #6
	ldr	r4, [r3]	@ unaligned
	ldr	r0, [r3, #4]	@ unaligned
	ldr	r1, [r3, #8]	@ unaligned
	ldr	r3, [r3, #12]	@ unaligned
	str	r4, [r2]	@ unaligned
	str	r0, [r2, #4]	@ unaligned
	str	r1, [r2, #8]	@ unaligned
	str	r3, [r2, #12]	@ unaligned
	b	.L118
.L117:
	ldr	r3, [r7]
	adds	r3, r3, #32
	movs	r2, #16
	movs	r1, #0
	mov	r0, r3
	bl	memset
.L118:
	ldr	r3, .L125+12
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r3, #0
	bge	.L119
	ldr	r3, [r7, #28]
	mov	r1, r3
	movs	r0, #16
	bl	se3_rand
	b	.L120
.L119:
	ldr	r3, [r7, #28]
	movs	r2, #16
	movs	r1, #0
	mov	r0, r3
	bl	memset
.L120:
	ldr	r3, .L125+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L121
	ldr	r0, [r7, #24]
	ldr	r4, [r7, #28]
	ldr	r3, [r7]
	add	r5, r3, #32
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	subs	r3, r3, #32
	cmp	r3, #0
	bge	.L122
	adds	r3, r3, #15
.L122:
	asrs	r3, r3, #4
	uxth	r3, r3
	ldr	r2, .L125+12
	ldrh	r2, [r2, #2]
	ldr	r1, .L125+16
	ldrb	r1, [r1]	@ zero_extendqisi2
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r5
	mov	r2, r4
	mov	r1, r0
	ldr	r0, .L125+8
	bl	se3_payload_encrypt
	nop
	movs	r3, #0
	b	.L124
.L121:
	movs	r3, #200
.L124:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L126:
	.align	2
.L125:
	.word	login_struct+38
	.word	login_struct
	.word	login_struct+72
	.word	req_hdr
	.word	crypto_algo
	.word	login_struct+6
	.word	algo_implementation
	.word	handlers
	.word	error
	.size	dispatcher_call, .-dispatcher_call
	.section	.text.se3_dispatcher_init,"ax",%progbits
	.align	1
	.global	se3_dispatcher_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_dispatcher_init, %function
se3_dispatcher_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #8
	bl	se3_security_core_init
	movw	r2, #1228
	movs	r1, #0
	ldr	r0, .L128
	bl	memset
	ldr	r3, .L128+4
	movw	r2, #65535
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, .L128+4
	mov	r2, #1000
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, .L128+4
	movw	r2, #65535
	strh	r2, [r3]	@ movhi
	ldr	r3, .L128+4
	mov	r2, #1000
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L128+8
	str	r3, [sp]
	mov	r3, #32768
	ldr	r2, .L128+12
	movs	r1, #100
	ldr	r0, .L128+16
	bl	se3_mem_init
	bl	login_cleanup
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L129:
	.align	2
.L128:
	.word	login_struct
	.word	se3_security_info
	.word	se3_sessions_buf
	.word	se3_sessions_index
	.word	se3_security_info+8
	.size	se3_dispatcher_init, .-se3_dispatcher_init
	.section	.text.set_req_hdr,"ax",%progbits
	.align	1
	.global	set_req_hdr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_req_hdr, %function
set_req_hdr:
	@ args = 68, pretend = 16, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r7, lr}
	add	r7, sp, #0
	add	ip, r7, #8
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, .L131
	mov	r0, r3
	add	r3, r7, #8
	movs	r2, #68
	mov	r1, r3
	bl	memcpy
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7, lr}
	add	sp, sp, #16
	bx	lr
.L132:
	.align	2
.L131:
	.word	req_hdr
	.size	set_req_hdr, .-set_req_hdr
	.section	.text.login_cleanup,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	login_cleanup, %function
login_cleanup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r0, .L136
	bl	se3_mem_reset
	ldr	r3, .L136+4
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L136+4
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L136+4
	movw	r2, #65535
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, .L136+4
	movs	r2, #0
	strb	r2, [r3, #1224]
	ldr	r3, .L136+4
	ldr	r2, .L136+8
	adds	r3, r3, #38
	ldr	r5, [r2]	@ unaligned
	ldr	r4, [r2, #4]	@ unaligned
	ldr	r0, [r2, #8]	@ unaligned
	ldr	r1, [r2, #12]	@ unaligned
	str	r5, [r3]	@ unaligned
	str	r4, [r3, #4]	@ unaligned
	str	r0, [r3, #8]	@ unaligned
	str	r1, [r3, #12]	@ unaligned
	ldr	r5, [r2, #16]	@ unaligned
	ldr	r4, [r2, #20]	@ unaligned
	ldr	r0, [r2, #24]	@ unaligned
	ldr	r1, [r2, #28]	@ unaligned
	str	r5, [r3, #16]	@ unaligned
	str	r4, [r3, #20]	@ unaligned
	str	r0, [r3, #24]	@ unaligned
	str	r1, [r3, #28]	@ unaligned
	movs	r2, #16
	movs	r1, #0
	ldr	r0, .L136+12
	bl	memset
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L134
.L135:
	ldr	r2, .L136+16
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	lsls	r3, r3, #1
	add	r3, r3, r2
	movw	r2, #65535
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L134:
	ldr	r3, [r7, #4]
	cmp	r3, #99
	bls	.L135
	nop
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L137:
	.align	2
.L136:
	.word	se3_security_info+8
	.word	login_struct
	.word	se3_magic
	.word	login_struct+6
	.word	se3_security_info
	.size	login_cleanup, .-login_cleanup
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

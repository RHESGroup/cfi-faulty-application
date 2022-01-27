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
	.file	"se3_communication_core.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	comm,108,4
	.comm	req_hdr,68,4
	.comm	resp_hdr,68,4
	.global	se3_hello
	.section	.rodata.se3_hello,"a"
	.align	2
	.type	se3_hello, %object
	.size	se3_hello, 32
se3_hello:
	.ascii	"Hello SEcube\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000"
	.comm	se3_comm_request_buffer,8192,4
	.comm	se3_comm_response_buffer,8192,4
	.section	.text.se3_communication_core_init,"ax",%progbits
	.align	1
	.global	se3_communication_core_init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_communication_core_init, %function
se3_communication_core_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r2, #108
	movs	r1, #0
	ldr	r0, .L2
	bl	memset
	movs	r2, #68
	movs	r1, #0
	ldr	r0, .L2+4
	bl	memset
	movs	r2, #68
	movs	r1, #0
	ldr	r0, .L2+8
	bl	memset
	movs	r2, #33
	movs	r1, #0
	ldr	r0, .L2+12
	bl	memset
	ldr	r3, .L2
	ldr	r2, .L2+16
	str	r2, [r3, #88]
	ldr	r2, .L2+20
	ldr	r3, .L2
	str	r2, [r3, #84]
	ldr	r3, .L2
	ldr	r2, .L2+24
	str	r2, [r3, #104]
	ldr	r2, .L2+28
	ldr	r3, .L2
	str	r2, [r3, #100]
	ldr	r3, .L2
	movw	r2, #65535
	str	r2, [r3, #4]
	ldr	r3, .L2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L2
	movs	r2, #1
	str	r2, [r3, #80]
	ldr	r3, .L2
	movs	r2, #0
	strb	r2, [r3, #76]
	ldr	r3, .L2
	movs	r2, #0
	strb	r2, [r3, #77]
	ldr	r3, .L2
	mov	r2, #-1
	str	r2, [r3, #80]
	ldr	r3, .L2
	movs	r2, #1
	strb	r2, [r3, #92]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #96]
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	comm
	.word	req_hdr
	.word	resp_hdr
	.word	serial
	.word	se3_comm_request_buffer
	.word	se3_comm_request_buffer+16
	.word	se3_comm_response_buffer
	.word	se3_comm_response_buffer+16
	.size	se3_communication_core_init, .-se3_communication_core_init
	.section	.text.block_is_magic,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	block_is_magic, %function
block_is_magic:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, .L10
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L5
.L8:
	movs	r2, #32
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #20]
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L6
	movs	r3, #0
	b	.L7
.L6:
	ldr	r3, [r7, #20]
	adds	r3, r3, #32
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L5:
	ldr	r3, [r7, #16]
	cmp	r3, #14
	bls	.L8
	ldr	r3, [r7, #4]
	addw	r3, r3, #511
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L9
	movs	r3, #0
	b	.L7
.L9:
	movs	r3, #1
.L7:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	se3_magic
	.size	block_is_magic, .-block_is_magic
	.section	.text.find_magic_index,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	find_magic_index, %function
find_magic_index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L17
	ldr	r3, [r3, #72]
	str	r3, [r7, #8]
	b	.L13
.L16:
	ldr	r2, .L17
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L14
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	rsbs	r2, r3, #0
	and	r3, r3, #15
	and	r2, r2, #15
	it	pl
	rsbpl	r3, r2, #0
	mov	r2, r3
	ldr	r3, .L17
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	b	.L15
.L14:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	and	r3, r3, #15
	str	r3, [r7, #8]
.L13:
	ldr	r3, [r7, #12]
	cmp	r3, #15
	ble	.L16
	mov	r3, #-1
.L15:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L18:
	.align	2
.L17:
	.word	comm
	.size	find_magic_index, .-find_magic_index
	.section	.text.se3_storage_range_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_storage_range_add, %function
se3_storage_range_add:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	movs	r3, #1
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L20
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #8]
	b	.L21
.L20:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldr	r2, [r7]
	cmp	r2, r3
	bne	.L22
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	b	.L21
.L22:
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L23
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	ldrb	r0, [r7, #11]	@ zero_extendqisi2
	bl	secube_sdio_write
	mov	r3, r0
	strb	r3, [r7, #23]
	b	.L24
.L23:
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	ldrb	r0, [r7, #11]	@ zero_extendqisi2
	bl	secube_sdio_read
	mov	r3, r0
	strb	r3, [r7, #23]
.L24:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
.L21:
	ldrb	r3, [r7, #23]
	eor	r3, r3, #1
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_storage_range_add, .-se3_storage_range_add
	.section	.text.se3_proto_request_reset,"ax",%progbits
	.align	1
	.global	se3_proto_request_reset
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_proto_request_reset, %function
se3_proto_request_reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L27
	movs	r2, #0
	strb	r2, [r3, #77]
	ldr	r3, .L27
	mov	r2, #-1
	str	r2, [r3, #80]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L28:
	.align	2
.L27:
	.word	comm
	.size	se3_proto_request_reset, .-se3_proto_request_reset
	.section	.text.handle_req_recv,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	handle_req_recv, %function
handle_req_recv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #15
	beq	.L36
	ldr	r3, .L37
	movs	r2, #0
	strb	r2, [r3, #92]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L32
	ldr	r3, .L37
	ldr	r3, [r3, #88]
	movs	r2, #16
	ldr	r1, [r7]
	mov	r0, r3
	bl	memcpy
	ldr	r3, .L37
	ldr	r3, [r3, #88]
	ldrh	r3, [r3]	@ unaligned
	uxth	r2, r3
	ldr	r3, .L37+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L37
	ldr	r3, [r3, #88]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r2, r3
	ldr	r3, .L37+4
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L37
	ldr	r3, [r3, #88]
	adds	r3, r3, #4
	ldrh	r3, [r3]	@ unaligned
	uxth	r2, r3
	ldr	r3, .L37+4
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, .L37
	ldr	r3, [r3, #88]
	adds	r3, r3, #6
	ldr	r3, [r3]	@ unaligned
	mov	r2, r3
	ldr	r3, .L37+4
	str	r2, [r3, #8]
	ldr	r3, .L37
	ldr	r0, [r3, #84]
	ldr	r3, [r7]
	adds	r3, r3, #16
	mov	r2, #496
	mov	r1, r3
	bl	memcpy
	ldr	r3, .L37+4
	ldrh	r3, [r3, #4]
	lsrs	r3, r3, #9
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L37+4
	ldrh	r3, [r3, #4]
	ubfx	r3, r3, #0, #9
	uxth	r3, r3
	cmp	r3, #0
	beq	.L33
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L33:
	ldrh	r3, [r7, #14]
	cmp	r3, #15
	bls	.L34
	ldr	r3, .L37+8
	movw	r2, #61442
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, .L37
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, .L37
	movs	r2, #1
	strb	r2, [r3, #92]
.L34:
	ldr	r3, .L37
	ldr	r2, [r3, #80]
	ldrh	r3, [r7, #14]
	rsb	r3, r3, #32
	mov	r1, #-1
	lsr	r3, r1, r3
	ands	r3, r3, r2
	ldr	r2, .L37
	str	r3, [r2, #80]
	ldr	r3, .L37
	ldr	r3, [r3, #80]
	bic	r3, r3, #1
	ldr	r2, .L37
	str	r3, [r2, #80]
	b	.L35
.L32:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, .L37+4
	add	r3, r3, r2
	ldr	r2, [r7]
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r3, .L37
	ldr	r1, [r3, #84]
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #7
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #496
	adds	r0, r1, r3
	ldr	r3, [r7]
	adds	r3, r3, #4
	mov	r2, #508
	mov	r1, r3
	bl	memcpy
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, .L37+4
	add	r3, r3, r2
	ldr	r2, [r7]
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r3, .L37
	ldr	r3, [r3, #80]
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsl	r2, r1, r2
	mvns	r2, r2
	ands	r3, r3, r2
	ldr	r2, .L37
	str	r3, [r2, #80]
.L35:
	ldr	r3, .L37
	ldr	r3, [r3, #80]
	cmp	r3, #0
	bne	.L29
	ldr	r3, .L37
	movs	r2, #1
	strb	r2, [r3, #77]
	ldr	r3, .L37
	mov	r2, #-1
	str	r2, [r3, #80]
	ldr	r3, .L37
	movs	r2, #0
	str	r2, [r3, #72]
	b	.L29
.L36:
	nop
.L29:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	comm
	.word	req_hdr
	.word	resp_hdr
	.size	handle_req_recv, .-handle_req_recv
	.section	.text.se3_proto_recv,"ax",%progbits
	.align	1
	.global	se3_proto_recv
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_proto_recv, %function
se3_proto_recv:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #15]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #12]	@ movhi
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	str	r3, [r7, #36]
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	b	.L40
.L53:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L41
	ldrb	r1, [r7, #15]	@ zero_extendqisi2
	add	r0, r7, #20
	movs	r3, #0
	str	r3, [sp]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #36]
	bl	se3_storage_range_add
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #32]
	b	.L54
.L41:
	ldr	r0, [r7, #36]
	bl	block_is_magic
	mov	r3, r0
	cmp	r3, #0
	beq	.L44
	ldr	r3, .L57
	ldrb	r3, [r3, #76]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L55
	ldr	r3, .L57
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, .L57
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L57
	movw	r2, #65535
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L48
.L49:
	ldr	r2, .L57
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	movs	r1, #0
	str	r1, [r2, r3, lsl #2]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L48:
	ldr	r3, [r7, #40]
	cmp	r3, #15
	ble	.L49
.L47:
	ldr	r3, [r7, #36]
	addw	r3, r3, #511
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #40]
	ldr	r1, .L57
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	ldr	r2, [r7, #44]
	str	r2, [r1, r3, lsl #2]
	ldr	r3, .L57
	ldr	r3, [r3, #4]
	movs	r1, #1
	ldr	r2, [r7, #40]
	lsl	r2, r1, r2
	mvns	r2, r2
	ands	r3, r3, r2
	ldr	r2, .L57
	str	r3, [r2, #4]
	ldr	r3, .L57
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L42
	ldr	r3, .L57
	movs	r2, #1
	strb	r2, [r3]
	b	.L42
.L44:
	ldr	r3, .L57
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L50
	ldrb	r1, [r7, #15]	@ zero_extendqisi2
	add	r0, r7, #20
	movs	r3, #0
	str	r3, [sp]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #36]
	bl	se3_storage_range_add
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #32]
	b	.L54
.L50:
	ldr	r0, [r7, #44]
	bl	find_magic_index
	str	r0, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #-1
	bne	.L51
	ldrb	r1, [r7, #15]	@ zero_extendqisi2
	add	r0, r7, #20
	movs	r3, #0
	str	r3, [sp]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #36]
	bl	se3_storage_range_add
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #32]
	b	.L54
.L51:
	ldr	r3, .L57
	ldrb	r3, [r3, #77]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L56
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #40]
	bl	handle_req_recv
.L42:
	ldr	r3, [r7, #36]
	add	r3, r3, #512
	str	r3, [r7, #36]
	b	.L46
.L55:
	nop
	b	.L46
.L56:
	nop
.L46:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L40:
	ldrh	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	cmp	r2, r3
	bcc	.L53
	ldrb	r1, [r7, #15]	@ zero_extendqisi2
	add	r0, r7, #20
	movs	r3, #0
	str	r3, [sp]
	mov	r3, #-1
	movs	r2, #0
	bl	se3_storage_range_add
	mov	r3, r0
.L54:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L58:
	.align	2
.L57:
	.word	comm
	.size	se3_proto_recv, .-se3_proto_recv
	.section	.text.handle_resp_send,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	handle_resp_send, %function
handle_resp_send:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #15
	bne	.L60
	ldr	r3, .L66
	movs	r2, #16
	mov	r1, r3
	ldr	r0, [r7]
	bl	memcpy
	ldr	r3, [r7]
	adds	r3, r3, #16
	movs	r2, #16
	ldr	r1, .L66+4
	mov	r0, r3
	bl	memcpy
	ldr	r3, [r7]
	adds	r3, r3, #32
	ldr	r2, .L66+8
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
	ldr	r3, [r7]
	adds	r3, r3, #64
	ldr	r2, .L66+12
	mov	r4, r3
	mov	r5, r2
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	str	r2, [r4, #8]	@ unaligned
	str	r3, [r4, #12]	@ unaligned
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4, #16]	@ unaligned
	str	r1, [r4, #20]	@ unaligned
	str	r2, [r4, #24]	@ unaligned
	str	r3, [r4, #28]	@ unaligned
	ldr	r3, .L66+16
	ldrb	r3, [r3, #76]	@ zero_extendqisi2
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #96
	ldrh	r2, [r7, #14]
	strh	r2, [r3]	@ unaligned
	b	.L65
.L60:
	ldr	r3, .L66+16
	ldrb	r3, [r3, #92]
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L62
	ldr	r3, .L66+16
	ldr	r3, [r3, #96]
	movs	r1, #1
	ldr	r2, [r7, #4]
	lsl	r2, r1, r2
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L64
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L66+16
	ldr	r3, [r3, #104]
	ldrh	r2, [r7, #14]
	strh	r2, [r3]	@ unaligned
	ldr	r3, .L66+16
	ldr	r3, [r3, #104]
	adds	r3, r3, #2
	ldr	r2, .L66+20
	ldrh	r2, [r2, #2]
	strh	r2, [r3]	@ unaligned
	ldr	r3, .L66+16
	ldr	r3, [r3, #104]
	adds	r3, r3, #4
	ldr	r2, .L66+20
	ldrh	r2, [r2, #4]
	strh	r2, [r3]	@ unaligned
	ldr	r3, .L66+16
	ldr	r3, [r3, #104]
	adds	r3, r3, #6
	ldr	r2, .L66+20
	ldr	r2, [r2, #8]
	str	r2, [r3]	@ unaligned
	ldr	r3, .L66+16
	ldr	r3, [r3, #104]
	movs	r2, #16
	mov	r1, r3
	ldr	r0, [r7]
	bl	memcpy
	ldr	r3, [r7]
	adds	r3, r3, #16
	ldr	r2, .L66+16
	ldr	r1, [r2, #100]
	mov	r2, #496
	mov	r0, r3
	bl	memcpy
	b	.L65
.L64:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, .L66+20
	add	r3, r3, r2
	ldr	r3, [r3]	@ unaligned
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	adds	r0, r3, #4
	ldr	r3, .L66+16
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #7
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #496
	add	r3, r3, r1
	mov	r2, #508
	mov	r1, r3
	bl	memcpy
	b	.L65
.L63:
	mov	r2, #512
	movs	r1, #0
	ldr	r0, [r7]
	bl	memset
	b	.L65
.L62:
	movs	r2, #2
	movs	r1, #0
	ldr	r0, [r7]
	bl	memset
.L65:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L67:
	.align	2
.L66:
	.word	se3_magic+16
	.word	se3_magic
	.word	serial
	.word	se3_hello
	.word	comm
	.word	resp_hdr
	.size	handle_resp_send, .-handle_resp_send
	.section	.text.se3_proto_send,"ax",%progbits
	.align	1
	.global	se3_proto_send
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_proto_send, %function
se3_proto_send:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #15]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #12]	@ movhi
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	str	r3, [r7, #36]
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r3, [r7, #40]
	b	.L69
.L73:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L70
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L71
	ldrb	r1, [r7, #15]	@ zero_extendqisi2
	add	r0, r7, #20
	movs	r3, #1
	str	r3, [sp]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	bl	se3_storage_range_add
	str	r0, [r7, #44]
	b	.L71
.L70:
	ldr	r0, [r7, #40]
	bl	find_magic_index
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	bne	.L72
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L71
	ldrb	r1, [r7, #15]	@ zero_extendqisi2
	add	r0, r7, #20
	movs	r3, #1
	str	r3, [sp]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	bl	se3_storage_range_add
	str	r0, [r7, #44]
	b	.L71
.L72:
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #32]
	bl	handle_resp_send
.L71:
	ldr	r3, [r7, #36]
	add	r3, r3, #512
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L69:
	ldrh	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	cmp	r2, r3
	bcc	.L73
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L74
	ldrb	r1, [r7, #15]	@ zero_extendqisi2
	add	r0, r7, #20
	movs	r3, #1
	str	r3, [sp]
	mov	r3, #-1
	movs	r2, #0
	bl	se3_storage_range_add
	str	r0, [r7, #44]
.L74:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_proto_send, .-se3_proto_send
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

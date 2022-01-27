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
	.file	"gattInterface.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.comm	se3_algo_impl_t,1,1
	.section	.rodata
	.align	2
.LC0:
	.ascii	"0xA002\000"
	.section	.text.findService,"ax",%progbits
	.align	1
	.global	findService
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	findService, %function
findService:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r2, #0
	movs	r1, #44
	ldr	r0, [r7, #12]
	bl	split_string
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L3
.L2:
	movs	r3, #2
	b	.L4
.L3:
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	ldr	r3, [r3]
	movs	r2, #6
	ldr	r1, .L6
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L5
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	movs	r3, #0
	b	.L4
.L5:
	movs	r3, #1
.L4:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.size	findService, .-findService
	.section	.rodata
	.align	2
.LC1:
	.ascii	"AT+BLEGATTCRD=%d,%d,%d\015\012\000"
	.align	2
.LC2:
	.ascii	"pandemia\000"
	.section	.text.readChar,"ax",%progbits
	.align	1
	.global	readChar
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	readChar, %function
readChar:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	movs	r1, #1
	str	r1, [sp]
	ldr	r1, .L13
	ldr	r0, .L13+4
	bl	sprintf
	mov	r2, #1000
	movs	r1, #0
	ldr	r0, .L13+4
	bl	sendCommand
	mov	r3, r0
	cmp	r3, #0
	beq	.L9
	movs	r2, #0
	ldr	r1, [r7, #4]
	ldr	r0, .L13+8
	bl	readLine
	movs	r2, #0
	ldr	r1, [r7, #4]
	ldr	r0, .L13+8
	bl	readLine
	mov	r3, r0
	cmp	r3, #0
	bne	.L9
	movs	r2, #1
	movs	r1, #44
	ldr	r0, [r7, #4]
	bl	split_string
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	mov	r3, r0
	strb	r3, [r7, #43]
	ldr	r3, [r7, #44]
	adds	r3, r3, #8
	ldr	r1, [r3]
	ldrb	r2, [r7, #43]	@ zero_extendqisi2
	add	r3, r7, #8
	mov	r0, r3
	bl	memcpy
.L9:
	add	r3, r7, #8
	movs	r2, #8
	ldr	r1, .L13+12
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L10
	movs	r3, #0
	b	.L12
.L10:
	movs	r3, #1
.L12:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	.LC1
	.word	commandBuffer
	.word	inputBuffer
	.word	.LC2
	.size	readChar, .-readChar
	.section	.rodata
	.align	2
.LC3:
	.ascii	"AT+BLEGATTCWR=%d,%d,%d,,%d\015\012\000"
	.align	2
.LC4:
	.ascii	"OK\015\012\000"
	.align	2
.LC5:
	.ascii	"OUT\015\012\000"
	.align	2
.LC6:
	.ascii	"system error\015\012\000"
	.section	.text.writeResponse,"ax",%progbits
	.align	1
	.global	writeResponse
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	writeResponse, %function
writeResponse:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #144
	add	r7, sp, #8
	str	r0, [r7, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #3]
	mov	r3, r1
	strb	r3, [r7, #2]
	mov	r3, r2
	strb	r3, [r7, #1]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L16
	cmp	r3, #1
	beq	.L17
	b	.L20
.L16:
	ldr	r0, [r7, #4]
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	movs	r1, #2
	str	r1, [sp, #4]
	movs	r1, #2
	str	r1, [sp]
	ldr	r1, .L21
	bl	sprintf
	movw	r2, #1500
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	sendCommand
	ldr	r3, [r7, #4]
	ldr	r1, .L21+4
	mov	r0, r3
	bl	sprintf
	mov	r2, #500
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	sendCommand
	b	.L19
.L17:
	ldr	r0, [r7, #4]
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	movs	r1, #3
	str	r1, [sp, #4]
	movs	r1, #2
	str	r1, [sp]
	ldr	r1, .L21
	bl	sprintf
	movw	r2, #1500
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	sendCommand
	ldr	r3, [r7, #4]
	ldr	r1, .L21+8
	mov	r0, r3
	bl	sprintf
	mov	r2, #500
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	sendCommand
	b	.L19
.L20:
	ldr	r0, [r7, #4]
	ldrb	r2, [r7, #2]	@ zero_extendqisi2
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	movs	r1, #12
	str	r1, [sp, #4]
	movs	r1, #2
	str	r1, [sp]
	ldr	r1, .L21
	bl	sprintf
	movw	r2, #1500
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	sendCommand
	ldr	r3, [r7, #4]
	ldr	r1, .L21+12
	mov	r0, r3
	bl	sprintf
	mov	r2, #500
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	sendCommand
	nop
.L19:
	nop
	adds	r7, r7, #136
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	writeResponse, .-writeResponse
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

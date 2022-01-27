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
	.file	"sha256.c"
	.text
	.section	.text.B5_SHA256_GETUINT32,"ax",%progbits
	.align	1
	.global	B5_SHA256_GETUINT32
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_SHA256_GETUINT32, %function
B5_SHA256_GETUINT32:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7, #4]
	adds	r2, r2, #3
	ldr	r1, [r7, #8]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	B5_SHA256_GETUINT32, .-B5_SHA256_GETUINT32
	.section	.text.B5_SHA256_PUTUINT32,"ax",%progbits
	.align	1
	.global	B5_SHA256_PUTUINT32
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_SHA256_PUTUINT32, %function
B5_SHA256_PUTUINT32:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	lsrs	r1, r3, #24
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	lsrs	r1, r3, #16
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	lsrs	r1, r3, #8
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	uxtb	r2, r2
	strb	r2, [r3]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	B5_SHA256_PUTUINT32, .-B5_SHA256_PUTUINT32
	.section	.text.B5_SHA256_P,"ax",%progbits
	.align	1
	.global	B5_SHA256_P
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_SHA256_P, %function
B5_SHA256_P:
	@ args = 24, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #44]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	ror	r1, r3, #6
	ldr	r3, [r7, #32]
	ror	r3, r3, #11
	eors	r1, r1, r3
	ldr	r3, [r7, #32]
	ror	r3, r3, #25
	eors	r3, r3, r1
	add	r2, r2, r3
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #40]
	eors	r1, r1, r3
	ldr	r3, [r7, #32]
	ands	r1, r1, r3
	ldr	r3, [r7, #40]
	eors	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ror	r2, r3, #2
	ldr	r3, [r7, #12]
	ror	r3, r3, #13
	eors	r2, r2, r3
	ldr	r3, [r7, #12]
	ror	r3, r3, #22
	eors	r2, r2, r3
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #8]
	ands	r1, r1, r3
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #8]
	orrs	r0, r0, r3
	ldr	r3, [r7, #4]
	ands	r3, r3, r0
	orrs	r3, r3, r1
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	B5_SHA256_P, .-B5_SHA256_P
	.section	.text.B5_Sha256ProcessBlock,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_Sha256ProcessBlock, %function
B5_Sha256ProcessBlock:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #104
	movs	r2, #0
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #108
	movs	r2, #4
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	movs	r2, #8
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #116
	movs	r2, #12
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #120
	movs	r2, #16
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #124
	movs	r2, #20
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #128
	movs	r2, #24
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #132
	movs	r2, #28
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #136
	movs	r2, #32
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #140
	movs	r2, #36
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #144
	movs	r2, #40
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #148
	movs	r2, #44
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #152
	movs	r2, #48
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #156
	movs	r2, #52
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #160
	movs	r2, #56
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	adds	r3, r3, #164
	movs	r2, #60
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_SHA256_GETUINT32
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	str	r3, [r7, #16]
	ldr	r4, [r7, #44]
	ldr	r5, [r7, #40]
	ldr	r6, [r7, #36]
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #104]
	add	ip, r7, #32
	ldr	r3, .L5
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #16]
	ldr	r5, [r7, #44]
	ldr	r6, [r7, #40]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #108]
	add	ip, r7, #36
	ldr	r3, .L5+4
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #20]
	ldr	r5, [r7, #16]
	ldr	r6, [r7, #44]
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #112]
	add	ip, r7, #40
	ldr	r3, .L5+8
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #24]
	ldr	r5, [r7, #20]
	ldr	r6, [r7, #16]
	ldr	r3, [r7, #40]
	str	r3, [r7, #4]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #116]
	add	ip, r7, #44
	ldr	r3, .L5+12
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #28]
	ldr	r5, [r7, #24]
	ldr	r6, [r7, #20]
	ldr	r3, [r7, #44]
	str	r3, [r7, #4]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #120]
	add	ip, r7, #16
	ldr	r3, .L5+16
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #32]
	ldr	r5, [r7, #28]
	ldr	r6, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #4]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #124]
	add	ip, r7, #20
	ldr	r3, .L5+20
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #36]
	ldr	r5, [r7, #32]
	ldr	r6, [r7, #28]
	ldr	r3, [r7, #20]
	str	r3, [r7, #4]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #128]
	add	ip, r7, #24
	ldr	r3, .L5+24
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #40]
	ldr	r5, [r7, #36]
	ldr	r6, [r7, #32]
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #132]
	add	ip, r7, #28
	ldr	r3, .L5+28
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #44]
	ldr	r5, [r7, #40]
	ldr	r6, [r7, #36]
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #136]
	add	ip, r7, #32
	ldr	r3, .L5+32
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #16]
	ldr	r5, [r7, #44]
	ldr	r6, [r7, #40]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #140]
	add	ip, r7, #36
	ldr	r3, .L5+36
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #20]
	ldr	r5, [r7, #16]
	ldr	r6, [r7, #44]
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #144]
	add	ip, r7, #40
	ldr	r3, .L5+40
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #24]
	ldr	r5, [r7, #20]
	ldr	r6, [r7, #16]
	ldr	r3, [r7, #40]
	str	r3, [r7, #4]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #148]
	add	ip, r7, #44
	ldr	r3, .L5+44
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	b	.L6
.L7:
	.align	2
.L5:
	.word	1116352408
	.word	1899447441
	.word	-1245643825
	.word	-373957723
	.word	961987163
	.word	1508970993
	.word	-1841331548
	.word	-1424204075
	.word	-670586216
	.word	310598401
	.word	607225278
	.word	1426881987
.L6:
	ldr	r4, [r7, #28]
	ldr	r5, [r7, #24]
	ldr	r6, [r7, #20]
	ldr	r3, [r7, #44]
	str	r3, [r7, #4]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #152]
	add	ip, r7, #16
	ldr	r3, .L8
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #32]
	ldr	r5, [r7, #28]
	ldr	r6, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #4]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #156]
	add	ip, r7, #20
	ldr	r3, .L8+4
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #36]
	ldr	r5, [r7, #32]
	ldr	r6, [r7, #28]
	ldr	r3, [r7, #20]
	str	r3, [r7, #4]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	add	ip, r7, #24
	ldr	r3, .L8+8
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r4, [r7, #40]
	ldr	r5, [r7, #36]
	ldr	r6, [r7, #32]
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	add	ip, r7, #28
	ldr	r3, .L8+12
	str	r3, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	bl	B5_SHA256_P
	ldr	r6, [r7, #44]
	ldr	r3, [r7, #40]
	str	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r7]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #140]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #108]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #108]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #108]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #104]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #168]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	add	r4, r7, #32
	ldr	r5, .L8+16
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r7]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #144]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #112]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #112]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #112]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #108]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #172]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	add	r4, r7, #36
	ldr	r5, .L8+20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #20]
	ldr	r3, [r7, #16]
	str	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r7]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #148]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #116]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #116]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #116]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #112]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #176]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	add	r4, r7, #40
	ldr	r5, .L8+24
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r7]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #152]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #120]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #120]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	b	.L9
.L10:
	.align	2
.L8:
	.word	1925078388
	.word	-2132889090
	.word	-1680079193
	.word	-1046744716
	.word	-459576895
	.word	-272742522
	.word	264347078
.L9:
	ldr	r0, [r0, #120]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #116]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #180]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	add	r4, r7, #44
	ldr	r5, .L11
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #28]
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r7]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #156]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #124]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #124]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #124]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #120]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #184]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	add	r4, r7, #16
	ldr	r5, .L11+4
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #32]
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r7]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #128]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #128]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #128]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #124]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #188]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	add	r4, r7, #20
	ldr	r5, .L11+8
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #36]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r7]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #132]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #132]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #132]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #128]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #192]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	add	r4, r7, #24
	ldr	r5, .L11+12
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #40]
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r7]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #136]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #136]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #136]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #132]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #196]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	add	r4, r7, #28
	ldr	r5, .L11+16
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #44]
	ldr	r3, [r7, #40]
	str	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r7]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #140]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #140]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #140]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #136]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #200]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	add	r4, r7, #32
	ldr	r5, .L11+20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	b	.L12
.L13:
	.align	2
.L11:
	.word	604807628
	.word	770255983
	.word	1249150122
	.word	1555081692
	.word	1996064986
	.word	-1740746414
.L12:
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r7]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #144]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #144]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #144]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #140]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #204]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	add	r4, r7, #36
	ldr	r5, .L14
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #20]
	ldr	r3, [r7, #16]
	str	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r7]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #148]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #148]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #148]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #144]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #208]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	add	r4, r7, #40
	ldr	r5, .L14+4
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r7]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #152]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #152]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #152]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #148]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #212]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	add	r4, r7, #44
	ldr	r5, .L14+8
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #28]
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r7]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #156]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #156]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #156]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #152]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #216]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	add	r4, r7, #16
	ldr	r5, .L14+12
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #32]
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r7]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #156]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #220]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	add	r4, r7, #20
	ldr	r5, .L14+16
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #36]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r7]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #160]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #224]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	add	r4, r7, #24
	ldr	r5, .L14+20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	b	.L15
.L16:
	.align	2
.L14:
	.word	-1473132947
	.word	-1341970488
	.word	-1084653625
	.word	-958395405
	.word	-710438585
	.word	113926993
.L15:
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #40]
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r7]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #164]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #228]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	add	r4, r7, #28
	ldr	r5, .L17
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #44]
	ldr	r3, [r7, #40]
	str	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r7]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #168]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #232]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	add	r4, r7, #32
	ldr	r5, .L17+4
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r7]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #172]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #236]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	add	r4, r7, #36
	ldr	r5, .L17+8
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #20]
	ldr	r3, [r7, #16]
	str	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r7]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #176]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #240]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	add	r4, r7, #40
	ldr	r5, .L17+12
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r7]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #180]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #244]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	add	r4, r7, #44
	ldr	r5, .L17+16
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #28]
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r7]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #184]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #248]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	add	r4, r7, #16
	ldr	r5, .L17+20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	b	.L18
.L19:
	.align	2
.L17:
	.word	338241895
	.word	666307205
	.word	773529912
	.word	1294757372
	.word	1396182291
	.word	1695183700
.L18:
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #32]
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r7]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #188]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #252]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	add	r4, r7, #20
	ldr	r5, .L20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #36]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r7]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #192]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #256]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	add	r4, r7, #24
	ldr	r5, .L20+4
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #40]
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r7]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #196]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #260]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	add	r4, r7, #28
	ldr	r5, .L20+8
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #44]
	ldr	r3, [r7, #40]
	str	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r7]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #200]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #264]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	add	r4, r7, #32
	ldr	r5, .L20+12
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r7]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #204]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #268]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	add	r4, r7, #36
	ldr	r5, .L20+16
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #20]
	ldr	r3, [r7, #16]
	str	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r7]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #208]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #272]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	add	r4, r7, #40
	ldr	r5, .L20+20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	b	.L21
.L22:
	.align	2
.L20:
	.word	1986661051
	.word	-2117940946
	.word	-1838011259
	.word	-1564481375
	.word	-1474664885
	.word	-1035236496
.L21:
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r7]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #212]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #276]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	add	r4, r7, #44
	ldr	r5, .L23
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #28]
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r7]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #216]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #280]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	add	r4, r7, #16
	ldr	r5, .L23+4
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #32]
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r7]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #220]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #284]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	add	r4, r7, #20
	ldr	r5, .L23+8
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #36]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r7]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #224]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #288]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	add	r4, r7, #24
	ldr	r5, .L23+12
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #40]
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r7]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #228]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #292]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	add	r4, r7, #28
	ldr	r5, .L23+16
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #44]
	ldr	r3, [r7, #40]
	str	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r7]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #232]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #296]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #296]
	add	r4, r7, #32
	ldr	r5, .L23+20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	b	.L24
.L25:
	.align	2
.L23:
	.word	-949202525
	.word	-778901479
	.word	-694614492
	.word	-200395387
	.word	275423344
	.word	430227734
.L24:
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r7]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #236]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #300]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #300]
	add	r4, r7, #36
	ldr	r5, .L26
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #20]
	ldr	r3, [r7, #16]
	str	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r7]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #296]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #296]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #296]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #240]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #304]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #304]
	add	r4, r7, #40
	ldr	r5, .L26+4
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r7]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #300]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #300]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #300]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #244]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #308]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #308]
	add	r4, r7, #44
	ldr	r5, .L26+8
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #28]
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r7]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #304]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #304]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #304]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #248]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #312]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #312]
	add	r4, r7, #16
	ldr	r5, .L26+12
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #32]
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r7]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #308]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #308]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #308]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #252]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #316]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #316]
	add	r4, r7, #20
	ldr	r5, .L26+16
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #36]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r7]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #312]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #312]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #312]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #256]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #320]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #320]
	add	r4, r7, #24
	ldr	r5, .L26+20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	b	.L27
.L28:
	.align	2
.L26:
	.word	506948616
	.word	659060556
	.word	883997877
	.word	958139571
	.word	1322822218
	.word	1537002063
.L27:
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #40]
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r7]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #316]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #316]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #316]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #296]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #260]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #324]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #324]
	add	r4, r7, #28
	ldr	r5, .L29
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #44]
	ldr	r3, [r7, #40]
	str	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r7]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #320]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #320]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #320]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #300]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #264]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #328]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #328]
	add	r4, r7, #32
	ldr	r5, .L29+4
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r7]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #324]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #324]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #324]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #304]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #268]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #332]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #332]
	add	r4, r7, #36
	ldr	r5, .L29+8
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #20]
	ldr	r3, [r7, #16]
	str	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r7]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #328]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #328]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #328]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #308]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #272]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #336]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #336]
	add	r4, r7, #40
	ldr	r5, .L29+12
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r7]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #332]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #332]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #332]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #312]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #276]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #340]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #340]
	add	r4, r7, #44
	ldr	r5, .L29+16
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #28]
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r7]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #336]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #336]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #336]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #316]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #280]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #344]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #344]
	add	r4, r7, #16
	ldr	r5, .L29+20
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	b	.L30
.L31:
	.align	2
.L29:
	.word	1747873779
	.word	1955562222
	.word	2024104815
	.word	-2067236844
	.word	-1933114872
	.word	-1866530822
.L30:
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #32]
	ldr	r3, [r7, #28]
	str	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r7]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #340]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #340]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #340]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #320]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #284]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #348]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #348]
	add	r4, r7, #20
	ldr	r5, .L32
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #36]
	ldr	r3, [r7, #32]
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r7]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #344]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #344]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #344]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #324]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #288]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #352]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #352]
	add	r4, r7, #24
	ldr	r5, .L32+4
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #40
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r6, [r7, #40]
	ldr	r3, [r7, #36]
	str	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r7]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #348]
	ror	r4, r0, #17
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #348]
	ror	r0, r0, #19
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #348]
	lsrs	r0, r0, #10
	eors	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #328]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #296]
	ror	r5, r0, #7
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #296]
	ror	r0, r0, #18
	eors	r5, r5, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #296]
	lsrs	r0, r0, #3
	eors	r0, r0, r5
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #292]
	add	r4, r4, r0
	ldr	r0, [r7, #12]
	str	r4, [r0, #356]
	ldr	r0, [r7, #12]
	ldr	r0, [r0, #356]
	add	r4, r7, #28
	ldr	r5, .L32+8
	str	r5, [sp, #20]
	str	r0, [sp, #16]
	add	r0, r7, #44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	B5_SHA256_P
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #44]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
	nop
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L33:
	.align	2
.L32:
	.word	-1538233109
	.word	-1090935817
	.word	-965641998
	.size	B5_Sha256ProcessBlock, .-B5_Sha256ProcessBlock
	.section	.text.B5_Sha256_Init,"ax",%progbits
	.align	1
	.global	B5_Sha256_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_Sha256_Init, %function
B5_Sha256_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L35
	mov	r3, #-1
	b	.L36
.L35:
	mov	r2, #360
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	memset
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L37
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, .L37+4
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L37+8
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, .L37+12
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L37+16
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, .L37+20
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, .L37+24
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r2, .L37+28
	str	r2, [r3, #36]
	movs	r3, #0
.L36:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	1779033703
	.word	-1150833019
	.word	1013904242
	.word	-1521486534
	.word	1359893119
	.word	-1694144372
	.word	528734635
	.word	1541459225
	.size	B5_Sha256_Init, .-B5_Sha256_Init
	.section	.text.B5_Sha256_Update,"ax",%progbits
	.align	1
	.global	B5_Sha256_Update
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_Sha256_Update, %function
B5_Sha256_Update:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L40
	mov	r3, #-1
	b	.L41
.L40:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L43
.L42:
	mvn	r3, #2
	b	.L41
.L43:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	rsb	r3, r3, #64
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L44
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L44:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	bhi	.L46
	ldr	r3, [r7, #12]
	add	r2, r3, #40
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	memcpy
	ldr	r3, [r7, #12]
	adds	r3, r3, #40
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	B5_Sha256ProcessBlock
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L46
.L47:
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	B5_Sha256ProcessBlock
	ldr	r3, [r7, #4]
	subs	r3, r3, #64
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #64
	str	r3, [r7, #8]
.L46:
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bgt	.L47
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #12]
	add	r2, r3, #40
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	memcpy
.L48:
	movs	r3, #0
.L41:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	B5_Sha256_Update, .-B5_Sha256_Update
	.section	.text.B5_Sha256_Finit,"ax",%progbits
	.align	1
	.global	B5_Sha256_Finit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_Sha256_Finit, %function
B5_Sha256_Finit:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #96
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L50
	mov	r3, #-1
	b	.L55
.L50:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L52
	mvn	r3, #2
	b	.L55
.L52:
	add	r3, r7, #16
	movs	r2, #64
	movs	r1, #0
	mov	r0, r3
	bl	memset
	movs	r3, #128
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsrs	r2, r3, #29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #3
	orrs	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	str	r3, [r7, #88]
	add	r3, r7, #8
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #92]
	bl	B5_SHA256_PUTUINT32
	add	r3, r7, #8
	movs	r2, #4
	mov	r1, r3
	ldr	r0, [r7, #88]
	bl	B5_SHA256_PUTUINT32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #63
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #55
	bhi	.L53
	ldr	r3, [r7, #84]
	rsb	r3, r3, #56
	b	.L54
.L53:
	ldr	r3, [r7, #84]
	rsb	r3, r3, #120
.L54:
	str	r3, [r7, #80]
	ldr	r2, [r7, #80]
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	B5_Sha256_Update
	add	r3, r7, #8
	movs	r2, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	B5_Sha256_Update
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_SHA256_PUTUINT32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r2, #4
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_SHA256_PUTUINT32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #8
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_SHA256_PUTUINT32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	movs	r2, #12
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_SHA256_PUTUINT32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	movs	r2, #16
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_SHA256_PUTUINT32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	movs	r2, #20
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_SHA256_PUTUINT32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	movs	r2, #24
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_SHA256_PUTUINT32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	movs	r2, #28
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_SHA256_PUTUINT32
	movs	r3, #0
.L55:
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	B5_Sha256_Finit, .-B5_Sha256_Finit
	.section	.text.B5_HmacSha256_Init,"ax",%progbits
	.align	1
	.global	B5_HmacSha256_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_HmacSha256_Init, %function
B5_HmacSha256_Init:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L57
	mvn	r3, #2
	b	.L63
.L57:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L59
	mov	r3, #-1
	b	.L63
.L59:
	mov	r2, #488
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	memset
	ldrsh	r3, [r7, #6]
	cmp	r3, #64
	ble	.L60
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	B5_Sha256_Init
	ldr	r3, [r7, #12]
	ldrsh	r2, [r7, #6]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_Sha256_Update
	ldr	r3, [r7, #12]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	B5_Sha256_Finit
	add	r3, r7, #20
	str	r3, [r7, #8]
	movs	r3, #32
	strh	r3, [r7, #6]	@ movhi
.L60:
	ldr	r3, [r7, #12]
	add	r3, r3, #360
	movs	r2, #64
	movs	r1, #54
	mov	r0, r3
	bl	memset
	ldr	r3, [r7, #12]
	add	r3, r3, #424
	movs	r2, #64
	movs	r1, #92
	mov	r0, r3
	bl	memset
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L61
.L62:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	add	r3, r3, #360
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	add	r3, r3, #360
	mov	r2, r1
	strb	r2, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	add	r3, r3, #424
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	eors	r3, r3, r2
	uxtb	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	add	r3, r3, #424
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L61:
	ldrsh	r3, [r7, #6]
	ldr	r2, [r7, #52]
	cmp	r2, r3
	blt	.L62
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	B5_Sha256_Init
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #360
	movs	r2, #64
	mov	r1, r3
	bl	B5_Sha256_Update
	movs	r3, #0
.L63:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	B5_HmacSha256_Init, .-B5_HmacSha256_Init
	.section	.text.B5_HmacSha256_Update,"ax",%progbits
	.align	1
	.global	B5_HmacSha256_Update
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_HmacSha256_Update, %function
B5_HmacSha256_Update:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L65
	mov	r3, #-1
	b	.L66
.L65:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L68
.L67:
	mvn	r3, #2
	b	.L66
.L68:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L69
	movs	r3, #0
	b	.L66
.L69:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	B5_Sha256_Update
	movs	r3, #0
.L66:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	B5_HmacSha256_Update, .-B5_HmacSha256_Update
	.section	.text.B5_HmacSha256_Finit,"ax",%progbits
	.align	1
	.global	B5_HmacSha256_Finit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	B5_HmacSha256_Finit, %function
B5_HmacSha256_Finit:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L71
	mov	r3, #-1
	b	.L74
.L71:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L73
	mvn	r3, #2
	b	.L74
.L73:
	ldr	r3, [r7, #4]
	add	r2, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	B5_Sha256_Finit
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	B5_Sha256_Init
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #424
	movs	r2, #64
	mov	r1, r3
	bl	B5_Sha256_Update
	ldr	r3, [r7, #4]
	add	r1, r7, #8
	movs	r2, #32
	mov	r0, r3
	bl	B5_Sha256_Update
	ldr	r3, [r7, #4]
	ldr	r1, [r7]
	mov	r0, r3
	bl	B5_Sha256_Finit
	movs	r3, #0
.L74:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	B5_HmacSha256_Finit, .-B5_HmacSha256_Finit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

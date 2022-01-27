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
	.file	"usbd_msc_scsi.c"
	.text
	.section	.text.SCSI_ProcessCmd,"ax",%progbits
	.align	1
	.global	SCSI_ProcessCmd
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_ProcessCmd, %function
SCSI_ProcessCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #90
	bhi	.L2
	adr	r2, .L4
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L4:
	.word	.L15+1
	.word	.L2+1
	.word	.L2+1
	.word	.L14+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L13+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L12+1
	.word	.L11+1
	.word	.L2+1
	.word	.L2+1
	.word	.L10+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L9+1
	.word	.L2+1
	.word	.L8+1
	.word	.L2+1
	.word	.L2+1
	.word	.L7+1
	.word	.L2+1
	.word	.L6+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L5+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L3+1
	.p2align 1
.L15:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_TestUnitReady
	mov	r3, r0
	b	.L16
.L14:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_RequestSense
	mov	r3, r0
	b	.L16
.L13:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_Inquiry
	mov	r3, r0
	b	.L16
.L11:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_StartStopUnit
	mov	r3, r0
	b	.L16
.L10:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_StartStopUnit
	mov	r3, r0
	b	.L16
.L12:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_ModeSense6
	mov	r3, r0
	b	.L16
.L3:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_ModeSense10
	mov	r3, r0
	b	.L16
.L9:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_ReadFormatCapacity
	mov	r3, r0
	b	.L16
.L8:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_ReadCapacity10
	mov	r3, r0
	b	.L16
.L7:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_Read10
	mov	r3, r0
	b	.L16
.L6:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_Write10
	mov	r3, r0
	b	.L16
.L5:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_Verify10
	mov	r3, r0
	b	.L16
.L2:
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #32
	movs	r2, #5
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
.L16:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SCSI_ProcessCmd, .-SCSI_ProcessCmd
	.section	.text.SCSI_TestUnitReady,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_TestUnitReady, %function
SCSI_TestUnitReady:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	movs	r3, #32
	movs	r2, #5
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L19
.L18:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #540]
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L20
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #58
	movs	r2, #2
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	ldr	r3, [r7, #20]
	movs	r2, #5
	strb	r2, [r3, #8]
	mov	r3, #-1
	b	.L19
.L20:
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	movs	r3, #0
.L19:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SCSI_TestUnitReady, .-SCSI_TestUnitReady
	.section	.text.SCSI_Inquiry,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_Inquiry, %function
SCSI_Inquiry:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L22
	ldr	r3, .L27
	str	r3, [r7, #28]
	movs	r3, #7
	strh	r3, [r7, #26]	@ movhi
	b	.L23
.L22:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #540]
	ldr	r1, [r3, #28]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	adds	r3, r3, #5
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	ldrh	r2, [r7, #26]
	cmp	r2, r3
	bcc	.L23
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	strh	r3, [r7, #26]	@ movhi
.L23:
	ldr	r3, [r7, #20]
	ldrh	r2, [r7, #26]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	b	.L24
.L25:
	ldrh	r3, [r7, #26]
	subs	r3, r3, #1
	strh	r3, [r7, #26]	@ movhi
	ldrh	r3, [r7, #26]
	ldr	r2, [r7, #28]
	add	r2, r2, r3
	ldrh	r3, [r7, #26]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3, #12]
.L24:
	ldrh	r3, [r7, #26]
	cmp	r3, #0
	bne	.L25
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L28:
	.align	2
.L27:
	.word	MSC_Page00_Inquiry_Data
	.size	SCSI_Inquiry, .-SCSI_Inquiry
	.section	.text.SCSI_ReadCapacity10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_ReadCapacity10, %function
SCSI_ReadCapacity10:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #540]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #96
	ldr	r2, [r7, #20]
	add	r2, r2, #16384
	adds	r2, r2, #94
	ldrb	r0, [r7, #11]	@ zero_extendqisi2
	mov	r1, r3
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L30
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #58
	movs	r2, #2
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L31
.L30:
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #96
	ldr	r3, [r3]
	subs	r3, r3, #1
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #96
	ldr	r3, [r3]
	subs	r3, r3, #1
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #13]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #96
	ldr	r3, [r3]
	subs	r3, r3, #1
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #14]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #96
	ldr	r3, [r3]
	uxtb	r3, r3
	subs	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #15]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	asrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #16]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	asrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #17]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #18]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3, #19]
	ldr	r3, [r7, #20]
	movs	r2, #8
	strh	r2, [r3, #10]	@ movhi
	movs	r3, #0
.L31:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	SCSI_ReadCapacity10, .-SCSI_ReadCapacity10
	.section	.text.SCSI_ReadFormatCapacity,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_ReadFormatCapacity, %function
SCSI_ReadFormatCapacity:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #24]
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	b	.L33
.L34:
	ldrh	r3, [r7, #30]
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #12]
	ldrh	r3, [r7, #30]
	adds	r3, r3, #1
	strh	r3, [r7, #30]	@ movhi
.L33:
	ldrh	r3, [r7, #30]
	cmp	r3, #11
	bls	.L34
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #540]
	ldr	r3, [r3, #4]
	add	r2, r7, #22
	add	r1, r7, #16
	ldrb	r0, [r7, #11]	@ zero_extendqisi2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L35
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #58
	movs	r2, #2
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L37
.L35:
	ldr	r3, [r7, #24]
	movs	r2, #8
	strb	r2, [r3, #15]
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #17]
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #18]
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	subs	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #19]
	ldr	r3, [r7, #24]
	movs	r2, #2
	strb	r2, [r3, #20]
	ldrh	r3, [r7, #22]
	asrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #21]
	ldrh	r3, [r7, #22]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #22]
	ldrh	r3, [r7, #22]
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3, #23]
	ldr	r3, [r7, #24]
	movs	r2, #12
	strh	r2, [r3, #10]	@ movhi
	movs	r3, #0
.L37:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SCSI_ReadFormatCapacity, .-SCSI_ReadFormatCapacity
	.section	.text.SCSI_ModeSense6,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_ModeSense6, %function
SCSI_ModeSense6:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #16]
	movs	r3, #8
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #16]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	b	.L39
.L40:
	ldrh	r3, [r7, #22]
	subs	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
	ldrh	r2, [r7, #22]
	ldrh	r3, [r7, #22]
	ldr	r1, .L42
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3, #12]
.L39:
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	bne	.L40
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L43:
	.align	2
.L42:
	.word	MSC_Mode_Sense6_data
	.size	SCSI_ModeSense6, .-SCSI_ModeSense6
	.section	.text.SCSI_ModeSense10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_ModeSense10, %function
SCSI_ModeSense10:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	movs	r3, #8
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrh	r2, [r7, #22]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	b	.L45
.L46:
	ldrh	r3, [r7, #22]
	subs	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
	ldrh	r2, [r7, #22]
	ldrh	r3, [r7, #22]
	ldr	r1, .L48
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3, #12]
.L45:
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	bne	.L46
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L49:
	.align	2
.L48:
	.word	MSC_Mode_Sense10_data
	.size	SCSI_ModeSense10, .-SCSI_ModeSense10
	.section	.text.SCSI_RequestSense,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_RequestSense, %function
SCSI_RequestSense:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #16]
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L51
.L52:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #12]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #23]
.L51:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #17
	bls	.L52
	ldr	r3, [r7, #16]
	movs	r2, #112
	strb	r2, [r3, #12]
	ldr	r3, [r7, #16]
	movs	r2, #12
	strb	r2, [r3, #19]
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #92
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #93
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L53
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #92
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	addw	r3, r3, #2055
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	strb	r2, [r3, #14]
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #92
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	addw	r3, r3, #2055
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	strb	r2, [r3, #24]
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #92
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	addw	r3, r3, #2055
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	strb	r2, [r3, #25]
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #92
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #92
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #92
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L53
	ldr	r3, [r7, #16]
	add	r3, r3, #16384
	adds	r3, r3, #92
	movs	r2, #0
	strb	r2, [r3]
.L53:
	ldr	r3, [r7, #16]
	movs	r2, #18
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #18
	bhi	.L54
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #10]	@ movhi
.L54:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SCSI_RequestSense, .-SCSI_RequestSense
	.section	.text.SCSI_SenseCode,"ax",%progbits
	.align	1
	.global	SCSI_SenseCode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_SenseCode, %function
SCSI_SenseCode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #93
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	addw	r3, r3, #2055
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r2, [r7, #2]
	strb	r2, [r3, #4]
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	lsls	r2, r3, #8
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #93
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, [r7, #12]
	addw	r3, r3, #2055
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r1, [r3, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #93
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #93
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #93
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L58
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #93
	movs	r2, #0
	strb	r2, [r3]
.L58:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SCSI_SenseCode, .-SCSI_SenseCode
	.section	.text.SCSI_StartStopUnit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_StartStopUnit, %function
SCSI_StartStopUnit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SCSI_StartStopUnit, .-SCSI_StartStopUnit
	.section	.text.SCSI_Read10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_Read10, %function
SCSI_Read10:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L62
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #24
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L63
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	movs	r3, #32
	movs	r2, #5
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L64
.L63:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #540]
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L65
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #58
	movs	r2, #2
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L64
.L65:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7, #4]
	adds	r2, r2, #5
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7, #4]
	adds	r2, r2, #8
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	str	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	uxth	r3, r3
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	bl	SCSI_CheckAddressRange
	mov	r3, r0
	cmp	r3, #0
	bge	.L66
	mov	r3, #-1
	b	.L64
.L66:
	ldr	r3, [r7, #20]
	movs	r2, #2
	strb	r2, [r3, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	mul	r2, r3, r2
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	str	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	mul	r2, r3, r2
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	str	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #20
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L62
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	movs	r3, #32
	movs	r2, #5
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L64
.L62:
	ldr	r3, [r7, #20]
	mov	r2, #16384
	strh	r2, [r3, #10]	@ movhi
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_ProcessRead
	mov	r3, r0
.L64:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SCSI_Read10, .-SCSI_Read10
	.section	.text.SCSI_Write10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_Write10, %function
SCSI_Write10:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L68
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #24
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L69
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	movs	r3, #32
	movs	r2, #5
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L70
.L69:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #540]
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L71
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #58
	movs	r2, #2
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L70
.L71:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #540]
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L72
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #39
	movs	r2, #2
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L70
.L72:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7, #4]
	adds	r2, r2, #5
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7, #4]
	adds	r2, r2, #8
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	str	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	uxth	r3, r3
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	bl	SCSI_CheckAddressRange
	mov	r3, r0
	cmp	r3, #0
	bge	.L73
	mov	r3, #-1
	b	.L70
.L73:
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	mul	r2, r3, r2
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	str	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	mul	r2, r3, r2
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	str	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #20
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L74
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	movs	r3, #32
	movs	r2, #5
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L70
.L74:
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3, #8]
	ldr	r3, [r7, #20]
	add	r2, r3, #12
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	cmp	r3, #16384
	it	cs
	movcs	r3, #16384
	uxth	r3, r3
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	USBD_LL_PrepareReceive
	movs	r3, #0
	b	.L70
.L68:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SCSI_ProcessWrite
	mov	r3, r0
.L70:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SCSI_Write10, .-SCSI_Write10
	.section	.text.SCSI_Verify10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_Verify10, %function
SCSI_Verify10:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L77
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #36
	movs	r2, #5
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L78
.L77:
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	uxth	r3, r3
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	bl	SCSI_CheckAddressRange
	mov	r3, r0
	cmp	r3, #0
	bge	.L79
	mov	r3, #-1
	b	.L78
.L79:
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	movs	r3, #0
.L78:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SCSI_Verify10, .-SCSI_Verify10
	.section	.text.SCSI_CheckAddressRange,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_CheckAddressRange, %function
SCSI_CheckAddressRange:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #11]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldrh	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #96
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L81
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	movs	r3, #33
	movs	r2, #5
	ldr	r0, [r7, #12]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L82
.L81:
	movs	r3, #0
.L82:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SCSI_CheckAddressRange, .-SCSI_CheckAddressRange
	.section	.text.SCSI_ProcessRead,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_ProcessRead, %function
SCSI_ProcessRead:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	cmp	r3, #16384
	it	cs
	movcs	r3, #16384
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #540]
	ldr	r4, [r3, #16]
	ldr	r3, [r7, #12]
	add	r1, r3, #12
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	udiv	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	mov	r0, r3
	ldr	r3, [r7, #8]
	udiv	r3, r3, r0
	uxth	r3, r3
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	bge	.L84
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	movs	r3, #17
	movs	r2, #4
	ldr	r0, [r7, #4]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L85
.L84:
	ldr	r3, [r7, #12]
	add	r2, r3, #12
	ldr	r3, [r7, #8]
	uxth	r3, r3
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_Transmit
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #100
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #52
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #52
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L86
	ldr	r3, [r7, #12]
	movs	r2, #3
	strb	r2, [r3, #8]
.L86:
	movs	r3, #0
.L85:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	SCSI_ProcessRead, .-SCSI_ProcessRead
	.section	.text.SCSI_ProcessWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SCSI_ProcessWrite, %function
SCSI_ProcessWrite:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	cmp	r3, #16384
	it	cs
	movcs	r3, #16384
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #540]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #12]
	add	r1, r3, #12
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	udiv	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #94
	ldrh	r3, [r3]
	mov	r0, r3
	ldr	r3, [r7, #8]
	udiv	r3, r3, r0
	uxth	r3, r3
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	bge	.L88
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	movs	r3, #3
	movs	r2, #4
	ldr	r0, [r7, #4]
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L89
.L88:
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #100
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #100
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #52
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #52
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L90
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
	b	.L91
.L90:
	ldr	r3, [r7, #12]
	add	r2, r3, #12
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #104
	ldr	r3, [r3]
	cmp	r3, #16384
	it	cs
	movcs	r3, #16384
	uxth	r3, r3
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_PrepareReceive
.L91:
	movs	r3, #0
.L89:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	SCSI_ProcessWrite, .-SCSI_ProcessWrite
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

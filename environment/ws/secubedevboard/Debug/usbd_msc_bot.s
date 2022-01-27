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
	.file	"usbd_msc_bot.c"
	.text
	.section	.text.MSC_BOT_Init,"ax",%progbits
	.align	1
	.global	MSC_BOT_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_Init, %function
MSC_BOT_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #9]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #93
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #92
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #540]
	ldr	r3, [r3]
	movs	r0, #0
	blx	r3
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_FlushEP
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_FlushEP
	ldr	r3, [r7, #12]
	add	r2, r3, #16384
	adds	r2, r2, #12
	movs	r3, #31
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_PrepareReceive
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	MSC_BOT_Init, .-MSC_BOT_Init
	.section	.text.MSC_BOT_Reset,"ax",%progbits
	.align	1
	.global	MSC_BOT_Reset
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_Reset, %function
MSC_BOT_Reset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #9]
	ldr	r3, [r7, #12]
	add	r2, r3, #16384
	adds	r2, r2, #12
	movs	r3, #31
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_PrepareReceive
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	MSC_BOT_Reset, .-MSC_BOT_Reset
	.section	.text.MSC_BOT_DeInit,"ax",%progbits
	.align	1
	.global	MSC_BOT_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_DeInit, %function
MSC_BOT_DeInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	MSC_BOT_DeInit, .-MSC_BOT_DeInit
	.section	.text.MSC_BOT_DataIn,"ax",%progbits
	.align	1
	.global	MSC_BOT_DataIn
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_DataIn, %function
MSC_BOT_DataIn:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L5
	cmp	r3, #2
	blt	.L11
	subs	r3, r3, #3
	cmp	r3, #1
	bhi	.L11
	b	.L10
.L5:
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #27
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	SCSI_ProcessCmd
	mov	r3, r0
	cmp	r3, #0
	bge	.L12
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
	b	.L12
.L10:
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
	b	.L9
.L11:
	nop
	b	.L13
.L12:
	nop
.L9:
.L13:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	MSC_BOT_DataIn, .-MSC_BOT_DataIn
	.section	.text.MSC_BOT_DataOut,"ax",%progbits
	.align	1
	.global	MSC_BOT_DataOut
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_DataOut, %function
MSC_BOT_DataOut:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L15
	cmp	r3, #1
	beq	.L16
	b	.L18
.L15:
	ldr	r0, [r7, #4]
	bl	MSC_BOT_CBW_Decode
	b	.L18
.L16:
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #27
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	SCSI_ProcessCmd
	mov	r3, r0
	cmp	r3, #0
	bge	.L20
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
.L20:
	nop
.L18:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	MSC_BOT_DataOut, .-MSC_BOT_DataOut
	.section	.text.MSC_BOT_CBW_Decode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_CBW_Decode, %function
MSC_BOT_CBW_Decode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #48
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #20
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #52
	str	r2, [r3]
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_GetRxDataSize
	mov	r3, r0
	cmp	r3, #31
	bne	.L22
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r2, .L29
	cmp	r3, r2
	bne	.L22
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L22
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #26
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L22
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #26
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #16
	bls	.L23
.L22:
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	movs	r3, #32
	movs	r2, #5
	ldr	r0, [r7, #4]
	bl	SCSI_SenseCode
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #9]
	ldr	r0, [r7, #4]
	bl	MSC_BOT_Abort
	b	.L28
.L23:
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #25
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #27
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	SCSI_ProcessCmd
	mov	r3, r0
	cmp	r3, #0
	bge	.L25
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L26
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
	b	.L28
.L26:
	ldr	r0, [r7, #4]
	bl	MSC_BOT_Abort
	b	.L28
.L25:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L28
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L28
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L28
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #10]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #12]
	add	r1, r3, #12
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendData
	b	.L28
.L27:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #10]
	cmp	r3, #0
	bne	.L28
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
.L28:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	1128420181
	.size	MSC_BOT_CBW_Decode, .-MSC_BOT_CBW_Decode
	.section	.text.MSC_BOT_SendData,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_SendData, %function
MSC_BOT_SendData:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #20]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #52
	ldr	r2, [r3]
	ldrh	r3, [r7, #6]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #52
	str	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, #16384
	adds	r3, r3, #56
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #4
	strb	r2, [r3, #8]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #129
	ldr	r0, [r7, #12]
	bl	USBD_LL_Transmit
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	MSC_BOT_SendData, .-MSC_BOT_SendData
	.section	.text.MSC_BOT_SendCSW,"ax",%progbits
	.align	1
	.global	MSC_BOT_SendCSW
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_SendCSW, %function
MSC_BOT_SendCSW:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #44
	ldr	r2, .L33
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #56
	ldrb	r2, [r7, #3]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #8]
	ldr	r3, [r7, #12]
	add	r2, r3, #16384
	adds	r2, r2, #44
	movs	r3, #13
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_Transmit
	ldr	r3, [r7, #12]
	add	r2, r3, #16384
	adds	r2, r2, #12
	movs	r3, #31
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_PrepareReceive
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L34:
	.align	2
.L33:
	.word	1396855637
	.size	MSC_BOT_SendCSW, .-MSC_BOT_SendCSW
	.section	.text.MSC_BOT_Abort,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_Abort, %function
MSC_BOT_Abort:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L36
	ldr	r3, [r7, #12]
	add	r3, r3, #16384
	adds	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L36
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
.L36:
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L38
	ldr	r3, [r7, #12]
	add	r2, r3, #16384
	adds	r2, r2, #12
	movs	r3, #31
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USBD_LL_PrepareReceive
.L38:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	MSC_BOT_Abort, .-MSC_BOT_Abort
	.section	.text.MSC_BOT_CplClrFeature,"ax",%progbits
	.align	1
	.global	MSC_BOT_CplClrFeature
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MSC_BOT_CplClrFeature, %function
MSC_BOT_CplClrFeature:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L40
	movs	r1, #129
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #9]
	b	.L42
.L40:
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L42
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L42
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	MSC_BOT_SendCSW
.L42:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	MSC_BOT_CplClrFeature, .-MSC_BOT_CplClrFeature
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

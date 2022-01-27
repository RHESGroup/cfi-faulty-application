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
	.file	"stm32f4xx_hal_pcd.c"
	.text
	.section	.text.HAL_PCD_Init,"ax",%progbits
	.align	1
	.global	HAL_PCD_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_Init, %function
HAL_PCD_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #40
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	movs	r2, #3
	strb	r2, [r3, #897]
	ldr	r0, [r7, #4]
	bl	HAL_PCD_MspInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_DisableGlobalInt
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r6, [r7, #4]
	mov	r5, sp
	add	r4, r6, #16
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	stm	r5, {r0, r1}
	adds	r3, r6, #4
	ldm	r3, {r1, r2, r3}
	ldr	r0, [r7]
	bl	USB_CoreInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	USB_SetCurrentMode
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L4
.L5:
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #57
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	uxtb	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #56
	mov	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	uxth	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #62
	mov	r2, r0	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #59
	movs	r2, #0
	strb	r2, [r3]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #64
	movs	r2, #0
	str	r2, [r3]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #68
	movs	r2, #0
	str	r2, [r3]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #76
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r3, [r7, #12]
	cmp	r3, #14
	bls	.L5
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L6
.L7:
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	addw	r3, r3, #477
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	uxtb	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #476
	mov	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	uxth	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #62
	mov	r2, r0	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	addw	r3, r3, #479
	movs	r2, #0
	strb	r2, [r3]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #484
	movs	r2, #0
	str	r2, [r3]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	movs	r2, #0
	str	r2, [r3]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #496
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L6:
	ldr	r3, [r7, #12]
	cmp	r3, #14
	bls	.L7
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r6, [r7, #4]
	mov	r5, sp
	add	r4, r6, #16
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	stm	r5, {r0, r1}
	adds	r3, r6, #4
	ldm	r3, {r1, r2, r3}
	ldr	r0, [r7]
	bl	USB_DevInit
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #897]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_DevDisconnect
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	HAL_PCD_Init, .-HAL_PCD_Init
	.section	.text.HAL_PCD_DeInit,"ax",%progbits
	.align	1
	.global	HAL_PCD_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DeInit, %function
HAL_PCD_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L9
	movs	r3, #1
	b	.L10
.L9:
	ldr	r3, [r7, #4]
	movs	r2, #3
	strb	r2, [r3, #897]
	ldr	r0, [r7, #4]
	bl	HAL_PCD_Stop
	ldr	r0, [r7, #4]
	bl	HAL_PCD_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #897]
	movs	r3, #0
.L10:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_DeInit, .-HAL_PCD_DeInit
	.section	.text.HAL_PCD_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_PCD_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_MspInit, %function
HAL_PCD_MspInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_MspInit, .-HAL_PCD_MspInit
	.section	.text.HAL_PCD_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_PCD_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_MspDeInit, %function
HAL_PCD_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_MspDeInit, .-HAL_PCD_MspDeInit
	.section	.text.HAL_PCD_Start,"ax",%progbits
	.align	1
	.global	HAL_PCD_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_Start, %function
HAL_PCD_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L14
	movs	r3, #2
	b	.L15
.L14:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_DevConnect
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_EnableGlobalInt
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L15:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_Start, .-HAL_PCD_Start
	.section	.text.HAL_PCD_Stop,"ax",%progbits
	.align	1
	.global	HAL_PCD_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_Stop, %function
HAL_PCD_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L17
	movs	r3, #2
	b	.L18
.L17:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_DisableGlobalInt
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_StopDevice
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_DevDisconnect
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L18:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_Stop, .-HAL_PCD_Stop
	.section	.text.HAL_PCD_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_PCD_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_IRQHandler, %function
HAL_PCD_IRQHandler:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_GetMode
	mov	r3, r0
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L22
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #2
	str	r2, [r3, #20]
.L22:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #524288
	cmp	r3, #524288
	bne	.L23
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadDevAllOutEpInterrupt
	str	r0, [r7, #32]
	b	.L24
.L29:
	ldr	r3, [r7, #32]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	USB_ReadDevOutEPInterrupt
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #28]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L27
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #484
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	lsls	r1, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r1
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ubfx	r3, r3, #0, #19
	subs	r1, r2, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	add	r3, r3, #500
	str	r1, [r3]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	add	r3, r3, #484
	ldr	r3, [r3]
	add	r1, r1, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	add	r3, r3, #488
	str	r1, [r3]
.L27:
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	HAL_PCD_DataOutStageCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L26
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L26
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #496
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L26
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #900
	mov	r2, r3
	movs	r1, #1
	bl	USB_EP0_OutStart
.L26:
	ldr	r3, [r7, #20]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L28
	ldr	r0, [r7, #4]
	bl	HAL_PCD_SetupStageCallback
	ldr	r3, [r7, #28]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #8
	str	r3, [r2, #8]
.L28:
	ldr	r3, [r7, #20]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #28]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #16
	str	r3, [r2, #8]
.L25:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #1
	str	r3, [r7, #32]
.L24:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L29
.L23:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #262144
	cmp	r3, #262144
	bne	.L30
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadDevAllInEpInterrupt
	str	r0, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L31
.L39:
	ldr	r3, [r7, #32]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	USB_ReadDevInEPInterrupt
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L33
	movs	r2, #1
	ldr	r3, [r7, #28]
	lsl	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #16]
	mvns	r3, r3
	ldr	r1, [r7, #24]
	add	r1, r1, #2048
	ands	r3, r3, r2
	str	r3, [r1, #52]
	ldr	r3, [r7, #28]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L34
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #68
	ldr	r1, [r3]
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #64
	ldr	r3, [r3]
	add	r1, r1, r3
	ldr	r0, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #68
	str	r1, [r3]
.L34:
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	HAL_PCD_DataInStageCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L33
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L33
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #76
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #900
	mov	r2, r3
	movs	r1, #1
	bl	USB_EP0_OutStart
.L33:
	ldr	r3, [r7, #20]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L35
	ldr	r3, [r7, #28]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #8
	str	r3, [r2, #8]
.L35:
	ldr	r3, [r7, #20]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #28]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #16
	str	r3, [r2, #8]
.L36:
	ldr	r3, [r7, #20]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #28]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #64
	str	r3, [r2, #8]
.L37:
	ldr	r3, [r7, #20]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L38
	ldr	r3, [r7, #28]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #2
	str	r3, [r2, #8]
.L38:
	ldr	r3, [r7, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L32
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #4]
	bl	PCD_WriteEmptyTxFifo
.L32:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #1
	str	r3, [r7, #32]
.L31:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L39
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #-2147483648
	cmp	r3, #-2147483648
	bne	.L40
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #24]
	add	r2, r2, #2048
	bic	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r0, [r7, #4]
	bl	HAL_PCD_ResumeCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #-2147483648
	str	r2, [r3, #20]
.L40:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #2048
	cmp	r3, #2048
	bne	.L41
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L42
	ldr	r0, [r7, #4]
	bl	HAL_PCD_SuspendCallback
.L42:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #2048
	str	r2, [r3, #20]
.L41:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #4096
	cmp	r3, #4096
	bne	.L43
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #24]
	add	r2, r2, #2048
	bic	r3, r3, #1
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	USB_FlushTxFifo
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L44
.L45:
	ldr	r3, [r7, #36]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #255
	str	r3, [r2, #8]
	ldr	r3, [r7, #36]
	lsls	r2, r3, #5
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #255
	str	r3, [r2, #8]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L44:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #36]
	cmp	r2, r3
	bcc	.L45
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	mov	r2, r3
	mov	r3, #-1
	str	r3, [r2, #24]
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #24]
	add	r2, r2, #2048
	orr	r3, r3, #65537
	str	r3, [r2, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #24]
	add	r2, r2, #2048
	orr	r3, r3, #11
	str	r3, [r2, #132]
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3, #68]
	ldr	r2, [r7, #24]
	add	r2, r2, #2048
	orr	r3, r3, #11
	str	r3, [r2, #68]
	b	.L47
.L46:
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #24]
	add	r2, r2, #2048
	orr	r3, r3, #11
	str	r3, [r2, #20]
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #24]
	add	r2, r2, #2048
	orr	r3, r3, #11
	str	r3, [r2, #16]
.L47:
	ldr	r3, [r7, #24]
	add	r3, r3, #2048
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	add	r2, r2, #2048
	bic	r3, r3, #2032
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #900
	mov	r2, r3
	bl	USB_EP0_OutStart
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #4096
	str	r2, [r3, #20]
.L43:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #8192
	cmp	r3, #8192
	bne	.L48
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ActivateSetup
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #15360
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_GetDevSpeed
	mov	r3, r0
	cmp	r3, #0
	bne	.L49
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r2, #512
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #9216
	str	r2, [r3, #12]
	b	.L50
.L49:
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #64
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #5120
	str	r2, [r3, #12]
.L50:
	ldr	r0, [r7, #4]
	bl	HAL_PCD_ResetCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #8192
	str	r2, [r3, #20]
.L48:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	and	r2, r3, #15
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #472
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #17
	and	r3, r3, #15
	cmp	r3, #2
	bne	.L52
	ldr	r2, [r7, #12]
	movw	r3, #32752
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #4
	uxth	r3, r3
	ubfx	r3, r3, #0, #11
	uxth	r3, r3
	mov	r2, r3
	ldr	r0, [r7, #24]
	bl	USB_ReadPacket
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #4
	ubfx	r3, r3, #0, #11
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #4
	ubfx	r3, r3, #0, #11
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #24]
	b	.L53
.L52:
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #17
	and	r3, r3, #15
	cmp	r3, #6
	bne	.L53
	ldr	r3, [r7, #4]
	add	r3, r3, #900
	movs	r2, #8
	mov	r1, r3
	ldr	r0, [r7, #24]
	bl	USB_ReadPacket
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #4
	ubfx	r3, r3, #0, #11
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #24]
.L53:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3, #24]
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #8
	cmp	r3, #8
	bne	.L54
	ldr	r0, [r7, #4]
	bl	HAL_PCD_SOFCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #8
	str	r2, [r3, #20]
.L54:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #1048576
	cmp	r3, #1048576
	bne	.L55
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	HAL_PCD_ISOINIncompleteCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #1048576
	str	r2, [r3, #20]
.L55:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #2097152
	cmp	r3, #2097152
	bne	.L56
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	HAL_PCD_ISOOUTIncompleteCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #2097152
	str	r2, [r3, #20]
.L56:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #1073741824
	cmp	r3, #1073741824
	bne	.L57
	ldr	r0, [r7, #4]
	bl	HAL_PCD_ConnectCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r2, r2, #1073741824
	str	r2, [r3, #20]
.L57:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_ReadInterrupts
	mov	r3, r0
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L58
	ldr	r0, [r7, #4]
	bl	HAL_PCD_DisconnectCallback
.L58:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	b	.L19
.L59:
	nop
.L19:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_IRQHandler, .-HAL_PCD_IRQHandler
	.section	.text.HAL_PCD_DataOutStageCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_DataOutStageCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DataOutStageCallback, %function
HAL_PCD_DataOutStageCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_DataOutStageCallback, .-HAL_PCD_DataOutStageCallback
	.section	.text.HAL_PCD_DataInStageCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_DataInStageCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DataInStageCallback, %function
HAL_PCD_DataInStageCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_DataInStageCallback, .-HAL_PCD_DataInStageCallback
	.section	.text.HAL_PCD_SetupStageCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_SetupStageCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_SetupStageCallback, %function
HAL_PCD_SetupStageCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_SetupStageCallback, .-HAL_PCD_SetupStageCallback
	.section	.text.HAL_PCD_SOFCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_SOFCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_SOFCallback, %function
HAL_PCD_SOFCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_SOFCallback, .-HAL_PCD_SOFCallback
	.section	.text.HAL_PCD_ResetCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_ResetCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ResetCallback, %function
HAL_PCD_ResetCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_ResetCallback, .-HAL_PCD_ResetCallback
	.section	.text.HAL_PCD_SuspendCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_SuspendCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_SuspendCallback, %function
HAL_PCD_SuspendCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_SuspendCallback, .-HAL_PCD_SuspendCallback
	.section	.text.HAL_PCD_ResumeCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_ResumeCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ResumeCallback, %function
HAL_PCD_ResumeCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_ResumeCallback, .-HAL_PCD_ResumeCallback
	.section	.text.HAL_PCD_ISOOUTIncompleteCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_ISOOUTIncompleteCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ISOOUTIncompleteCallback, %function
HAL_PCD_ISOOUTIncompleteCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_ISOOUTIncompleteCallback, .-HAL_PCD_ISOOUTIncompleteCallback
	.section	.text.HAL_PCD_ISOINIncompleteCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_ISOINIncompleteCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ISOINIncompleteCallback, %function
HAL_PCD_ISOINIncompleteCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_ISOINIncompleteCallback, .-HAL_PCD_ISOINIncompleteCallback
	.section	.text.HAL_PCD_ConnectCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_ConnectCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ConnectCallback, %function
HAL_PCD_ConnectCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_ConnectCallback, .-HAL_PCD_ConnectCallback
	.section	.text.HAL_PCD_DisconnectCallback,"ax",%progbits
	.align	1
	.weak	HAL_PCD_DisconnectCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DisconnectCallback, %function
HAL_PCD_DisconnectCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_DisconnectCallback, .-HAL_PCD_DisconnectCallback
	.section	.text.HAL_PCD_DevConnect,"ax",%progbits
	.align	1
	.global	HAL_PCD_DevConnect
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DevConnect, %function
HAL_PCD_DevConnect:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L72
	movs	r3, #2
	b	.L73
.L72:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_DevConnect
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L73:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_DevConnect, .-HAL_PCD_DevConnect
	.section	.text.HAL_PCD_DevDisconnect,"ax",%progbits
	.align	1
	.global	HAL_PCD_DevDisconnect
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DevDisconnect, %function
HAL_PCD_DevDisconnect:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L75
	movs	r3, #2
	b	.L76
.L75:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_DevDisconnect
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L76:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_DevDisconnect, .-HAL_PCD_DevDisconnect
	.section	.text.HAL_PCD_SetAddress,"ax",%progbits
	.align	1
	.global	HAL_PCD_SetAddress
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_SetAddress, %function
HAL_PCD_SetAddress:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L78
	movs	r3, #2
	b	.L79
.L78:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	USB_SetDevAddress
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L79:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_SetAddress, .-HAL_PCD_SetAddress
	.section	.text.HAL_PCD_EP_Open,"ax",%progbits
	.align	1
	.global	HAL_PCD_EP_Open
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_EP_Open, %function
HAL_PCD_EP_Open:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #3]
	mov	r3, r1	@ movhi
	strh	r3, [r7]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #2]
	movs	r3, #0
	strb	r3, [r7, #11]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L81
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #56
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L82
.L81:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #472
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L82:
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldrsb	r3, [r7, #3]
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #1]
	ldrh	r2, [r7]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #2]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #6]	@ movhi
.L83:
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L84
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #4]
.L84:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L85
	movs	r3, #2
	b	.L86
.L85:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	USB_ActivateEndpoint
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
.L86:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_EP_Open, .-HAL_PCD_EP_Open
	.section	.text.HAL_PCD_EP_Close,"ax",%progbits
	.align	1
	.global	HAL_PCD_EP_Close
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_EP_Close, %function
HAL_PCD_EP_Close:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L88
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #56
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L89
.L88:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #472
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L89:
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldrsb	r3, [r7, #3]
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L90
	movs	r3, #2
	b	.L91
.L90:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	USB_DeactivateEndpoint
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L91:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_EP_Close, .-HAL_PCD_EP_Close
	.section	.text.HAL_PCD_EP_Receive,"ax",%progbits
	.align	1
	.global	HAL_PCD_EP_Receive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_EP_Receive, %function
HAL_PCD_EP_Receive:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #472
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3, #1]
	ldrb	r3, [r7, #11]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L93
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
.L93:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L94
	movs	r3, #2
	b	.L95
.L94:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	and	r3, r3, #127
	cmp	r3, #0
	bne	.L96
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r1, [r7, #20]
	bl	USB_EP0StartXfer
	b	.L97
.L96:
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r1, [r7, #20]
	bl	USB_EPStartXfer
.L97:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L95:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_EP_Receive, .-HAL_PCD_EP_Receive
	.section	.text.HAL_PCD_EP_GetRxCount,"ax",%progbits
	.align	1
	.global	HAL_PCD_EP_GetRxCount
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_EP_GetRxCount, %function
HAL_PCD_EP_GetRxCount:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #500
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_EP_GetRxCount, .-HAL_PCD_EP_GetRxCount
	.section	.text.HAL_PCD_EP_Transmit,"ax",%progbits
	.align	1
	.global	HAL_PCD_EP_Transmit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_EP_Transmit, %function
HAL_PCD_EP_Transmit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #56
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3, #1]
	ldrb	r3, [r7, #11]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L101
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
.L101:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L102
	movs	r3, #2
	b	.L103
.L102:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	and	r3, r3, #127
	cmp	r3, #0
	bne	.L104
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r1, [r7, #20]
	bl	USB_EP0StartXfer
	b	.L105
.L104:
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r1, [r7, #20]
	bl	USB_EPStartXfer
.L105:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L103:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_EP_Transmit, .-HAL_PCD_EP_Transmit
	.section	.text.HAL_PCD_EP_SetStall,"ax",%progbits
	.align	1
	.global	HAL_PCD_EP_SetStall
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_EP_SetStall, %function
HAL_PCD_EP_SetStall:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L107
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #56
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L108
.L107:
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #472
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L108:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #2]
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldrsb	r3, [r7, #3]
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L109
	movs	r3, #2
	b	.L110
.L109:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	USB_EPSetStall
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r3, r3, #127
	cmp	r3, #0
	bne	.L111
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #900
	mov	r2, r3
	bl	USB_EP0_OutStart
.L111:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L110:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_EP_SetStall, .-HAL_PCD_EP_SetStall
	.section	.text.HAL_PCD_EP_ClrStall,"ax",%progbits
	.align	1
	.global	HAL_PCD_EP_ClrStall
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_EP_ClrStall, %function
HAL_PCD_EP_ClrStall:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L113
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #56
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L114
.L113:
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, #472
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L114:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #2]
	ldrb	r3, [r7, #3]
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
	ldrsb	r3, [r7, #3]
	uxtb	r3, r3
	lsrs	r3, r3, #7
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L115
	movs	r3, #2
	b	.L116
.L115:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	USB_EPClearStall
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L116:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_EP_ClrStall, .-HAL_PCD_EP_ClrStall
	.section	.text.HAL_PCD_EP_Flush,"ax",%progbits
	.align	1
	.global	HAL_PCD_EP_Flush
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_EP_Flush, %function
HAL_PCD_EP_Flush:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #896]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L118
	movs	r3, #2
	b	.L119
.L118:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #896]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L120
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r3, r3, #127
	mov	r1, r3
	mov	r0, r2
	bl	USB_FlushTxFifo
	b	.L121
.L120:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	USB_FlushRxFifo
.L121:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #896]
	movs	r3, #0
.L119:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_EP_Flush, .-HAL_PCD_EP_Flush
	.section	.text.HAL_PCD_ActivateRemoteWakeup,"ax",%progbits
	.align	1
	.global	HAL_PCD_ActivateRemoteWakeup
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ActivateRemoteWakeup, %function
HAL_PCD_ActivateRemoteWakeup:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L123
	ldr	r3, [r7, #12]
	add	r3, r3, #2048
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	add	r2, r2, #2048
	orr	r3, r3, #1
	str	r3, [r2, #4]
.L123:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_ActivateRemoteWakeup, .-HAL_PCD_ActivateRemoteWakeup
	.section	.text.HAL_PCD_DeActivateRemoteWakeup,"ax",%progbits
	.align	1
	.global	HAL_PCD_DeActivateRemoteWakeup
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DeActivateRemoteWakeup, %function
HAL_PCD_DeActivateRemoteWakeup:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #2048
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #12]
	add	r2, r2, #2048
	bic	r3, r3, #1
	str	r3, [r2, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_DeActivateRemoteWakeup, .-HAL_PCD_DeActivateRemoteWakeup
	.section	.text.HAL_PCD_GetState,"ax",%progbits
	.align	1
	.global	HAL_PCD_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_GetState, %function
HAL_PCD_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #897]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCD_GetState, .-HAL_PCD_GetState
	.section	.text.PCD_WriteEmptyTxFifo,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	PCD_WriteEmptyTxFifo, %function
PCD_WriteEmptyTxFifo:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #56
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L130
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
.L130:
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	str	r3, [r7, #24]
	b	.L131
.L134:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L132
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
.L132:
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r3, [r7, #28]
	uxth	r0, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #20]
	bl	USB_WritePacket
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
.L131:
	ldr	r3, [r7]
	lsls	r2, r3, #5
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #24]
	uxth	r3, r3
	ldr	r2, [r7, #24]
	cmp	r2, r3
	bcs	.L133
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bcs	.L133
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L134
.L133:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L135
	movs	r2, #1
	ldr	r3, [r7]
	lsl	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	add	r3, r3, #2048
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #16]
	mvns	r3, r3
	ldr	r1, [r7, #20]
	add	r1, r1, #2048
	ands	r3, r3, r2
	str	r3, [r1, #52]
.L135:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	PCD_WriteEmptyTxFifo, .-PCD_WriteEmptyTxFifo
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

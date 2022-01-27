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
	.file	"usbd_conf.c"
	.text
	.comm	hpcd_USB_OTG_HS,952,4
	.section	.text.HAL_PCD_MspInit,"ax",%progbits
	.align	1
	.global	HAL_PCD_MspInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_MspInit, %function
HAL_PCD_MspInit:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L4
	cmp	r3, r2
	bne	.L3
	movw	r3, #15395
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #3
	str	r3, [r7, #32]
	movs	r3, #10
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L4+4
	bl	HAL_GPIO_Init
	mov	r3, #2048
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #3
	str	r3, [r7, #32]
	movs	r3, #10
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L4+8
	bl	HAL_GPIO_Init
	movs	r3, #9
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #3
	str	r3, [r7, #32]
	movs	r3, #10
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L4+12
	bl	HAL_GPIO_Init
	movs	r3, #40
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #3
	str	r3, [r7, #32]
	movs	r3, #10
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r1, r3
	ldr	r0, .L4+16
	bl	HAL_GPIO_Init
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, .L4+20
	ldr	r3, [r3, #48]
	ldr	r2, .L4+20
	orr	r3, r3, #536870912
	str	r3, [r2, #48]
	ldr	r3, .L4+20
	ldr	r3, [r3, #48]
	and	r3, r3, #536870912
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L4+20
	ldr	r3, [r3, #48]
	ldr	r2, .L4+20
	orr	r3, r3, #1073741824
	str	r3, [r2, #48]
	ldr	r3, .L4+20
	ldr	r3, [r3, #48]
	and	r3, r3, #1073741824
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	movs	r1, #7
	movs	r0, #77
	bl	HAL_NVIC_SetPriority
	movs	r0, #77
	bl	HAL_NVIC_EnableIRQ
.L3:
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	1074003968
	.word	1073873920
	.word	1073881088
	.word	1073874944
	.word	1073872896
	.word	1073887232
	.size	HAL_PCD_MspInit, .-HAL_PCD_MspInit
	.section	.text.HAL_PCD_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_PCD_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_MspDeInit, %function
HAL_PCD_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L9
	cmp	r3, r2
	bne	.L8
	ldr	r3, .L9+4
	ldr	r3, [r3, #48]
	ldr	r2, .L9+4
	bic	r3, r3, #536870912
	str	r3, [r2, #48]
	ldr	r3, .L9+4
	ldr	r3, [r3, #48]
	ldr	r2, .L9+4
	bic	r3, r3, #1073741824
	str	r3, [r2, #48]
	movw	r1, #15395
	ldr	r0, .L9+8
	bl	HAL_GPIO_DeInit
	mov	r1, #2048
	ldr	r0, .L9+12
	bl	HAL_GPIO_DeInit
	movs	r1, #9
	ldr	r0, .L9+16
	bl	HAL_GPIO_DeInit
	movs	r1, #40
	ldr	r0, .L9+20
	bl	HAL_GPIO_DeInit
	movs	r0, #77
	bl	HAL_NVIC_DisableIRQ
.L8:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	1074003968
	.word	1073887232
	.word	1073873920
	.word	1073881088
	.word	1073874944
	.word	1073872896
	.size	HAL_PCD_MspDeInit, .-HAL_PCD_MspDeInit
	.section	.text.HAL_PCD_SetupStageCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_SetupStageCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_SetupStageCallback, %function
HAL_PCD_SetupStageCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #948]
	ldr	r3, [r7, #4]
	add	r3, r3, #900
	mov	r1, r3
	mov	r0, r2
	bl	USBD_LL_SetupStage
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_SetupStageCallback, .-HAL_PCD_SetupStageCallback
	.section	.text.HAL_PCD_DataOutStageCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_DataOutStageCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DataOutStageCallback, %function
HAL_PCD_DataOutStageCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #948]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #488
	ldr	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	bl	USBD_LL_DataOutStage
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_DataOutStageCallback, .-HAL_PCD_DataOutStageCallback
	.section	.text.HAL_PCD_DataInStageCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_DataInStageCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DataInStageCallback, %function
HAL_PCD_DataInStageCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #948]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #68
	ldr	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	bl	USBD_LL_DataInStage
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_DataInStageCallback, .-HAL_PCD_DataInStageCallback
	.section	.text.HAL_PCD_SOFCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_SOFCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_SOFCallback, %function
HAL_PCD_SOFCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	mov	r0, r3
	bl	USBD_LL_SOF
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_SOFCallback, .-HAL_PCD_SOFCallback
	.section	.text.HAL_PCD_ResetCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_ResetCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ResetCallback, %function
HAL_PCD_ResetCallback:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L16
	cmp	r3, #2
	beq	.L17
	b	.L20
.L16:
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L19
.L17:
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L19
.L20:
	movs	r3, #1
	strb	r3, [r7, #15]
	nop
.L19:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	ldrb	r2, [r7, #15]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	USBD_LL_SetSpeed
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	mov	r0, r3
	bl	USBD_LL_Reset
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_ResetCallback, .-HAL_PCD_ResetCallback
	.section	.text.HAL_PCD_SuspendCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_SuspendCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_SuspendCallback, %function
HAL_PCD_SuspendCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	mov	r0, r3
	bl	USBD_LL_Suspend
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r3, r3, #3584
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	add	r2, r2, #3584
	orr	r3, r3, #1
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L23
	ldr	r3, .L24
	ldr	r3, [r3, #16]
	ldr	r2, .L24
	orr	r3, r3, #6
	str	r3, [r2, #16]
.L23:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	-536810240
	.size	HAL_PCD_SuspendCallback, .-HAL_PCD_SuspendCallback
	.section	.text.HAL_PCD_ResumeCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_ResumeCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ResumeCallback, %function
HAL_PCD_ResumeCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	mov	r0, r3
	bl	USBD_LL_Resume
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_ResumeCallback, .-HAL_PCD_ResumeCallback
	.section	.text.HAL_PCD_ISOOUTIncompleteCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_ISOOUTIncompleteCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ISOOUTIncompleteCallback, %function
HAL_PCD_ISOOUTIncompleteCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	USBD_LL_IsoOUTIncomplete
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_ISOOUTIncompleteCallback, .-HAL_PCD_ISOOUTIncompleteCallback
	.section	.text.HAL_PCD_ISOINIncompleteCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_ISOINIncompleteCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ISOINIncompleteCallback, %function
HAL_PCD_ISOINIncompleteCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	USBD_LL_IsoINIncomplete
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_ISOINIncompleteCallback, .-HAL_PCD_ISOINIncompleteCallback
	.section	.text.HAL_PCD_ConnectCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_ConnectCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_ConnectCallback, %function
HAL_PCD_ConnectCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	mov	r0, r3
	bl	USBD_LL_DevConnected
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_ConnectCallback, .-HAL_PCD_ConnectCallback
	.section	.text.HAL_PCD_DisconnectCallback,"ax",%progbits
	.align	1
	.global	HAL_PCD_DisconnectCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCD_DisconnectCallback, %function
HAL_PCD_DisconnectCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #948]
	mov	r0, r3
	bl	USBD_LL_DevDisconnected
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_PCD_DisconnectCallback, .-HAL_PCD_DisconnectCallback
	.section	.text.USBD_LL_Init,"ax",%progbits
	.align	1
	.global	USBD_LL_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_Init, %function
USBD_LL_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L32
	ldr	r2, .L34
	ldr	r3, [r7, #4]
	str	r3, [r2, #948]
	ldr	r3, [r7, #4]
	ldr	r2, .L34
	str	r2, [r3, #544]
	ldr	r3, .L34
	ldr	r2, .L34+4
	str	r2, [r3]
	ldr	r3, .L34
	movs	r2, #11
	str	r2, [r3, #4]
	ldr	r3, .L34
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L34
	movs	r2, #1
	str	r2, [r3, #16]
	ldr	r3, .L34
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, .L34
	movs	r2, #1
	str	r2, [r3, #24]
	ldr	r3, .L34
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, .L34
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L34
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, .L34
	movs	r2, #1
	str	r2, [r3, #44]
	ldr	r3, .L34
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L34
	movs	r2, #0
	str	r2, [r3, #52]
	ldr	r0, .L34
	bl	HAL_PCD_Init
	mov	r1, #512
	ldr	r0, .L34
	bl	HAL_PCDEx_SetRxFiFo
	movs	r2, #128
	movs	r1, #0
	ldr	r0, .L34
	bl	HAL_PCDEx_SetTxFiFo
	mov	r2, #372
	movs	r1, #1
	ldr	r0, .L34
	bl	HAL_PCDEx_SetTxFiFo
.L32:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	hpcd_USB_OTG_HS
	.word	1074003968
	.size	USBD_LL_Init, .-USBD_LL_Init
	.section	.text.USBD_LL_DeInit,"ax",%progbits
	.align	1
	.global	USBD_LL_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_DeInit, %function
USBD_LL_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	mov	r0, r3
	bl	HAL_PCD_DeInit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_DeInit, .-USBD_LL_DeInit
	.section	.text.USBD_LL_Start,"ax",%progbits
	.align	1
	.global	USBD_LL_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_Start, %function
USBD_LL_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	mov	r0, r3
	bl	HAL_PCD_Start
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_Start, .-USBD_LL_Start
	.section	.text.USBD_LL_Stop,"ax",%progbits
	.align	1
	.global	USBD_LL_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_Stop, %function
USBD_LL_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	mov	r0, r3
	bl	HAL_PCD_Stop
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_Stop, .-USBD_LL_Stop
	.section	.text.USBD_LL_OpenEP,"ax",%progbits
	.align	1
	.global	USBD_LL_OpenEP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_OpenEP, %function
USBD_LL_OpenEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #3]
	mov	r3, r1
	strb	r3, [r7, #2]
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #544]
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	ldrh	r2, [r7]
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	bl	HAL_PCD_EP_Open
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_OpenEP, .-USBD_LL_OpenEP
	.section	.text.USBD_LL_CloseEP,"ax",%progbits
	.align	1
	.global	USBD_LL_CloseEP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_CloseEP, %function
USBD_LL_CloseEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	HAL_PCD_EP_Close
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_CloseEP, .-USBD_LL_CloseEP
	.section	.text.USBD_LL_FlushEP,"ax",%progbits
	.align	1
	.global	USBD_LL_FlushEP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_FlushEP, %function
USBD_LL_FlushEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	HAL_PCD_EP_Flush
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_FlushEP, .-USBD_LL_FlushEP
	.section	.text.USBD_LL_StallEP,"ax",%progbits
	.align	1
	.global	USBD_LL_StallEP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_StallEP, %function
USBD_LL_StallEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	HAL_PCD_EP_SetStall
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_StallEP, .-USBD_LL_StallEP
	.section	.text.USBD_LL_ClearStallEP,"ax",%progbits
	.align	1
	.global	USBD_LL_ClearStallEP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_ClearStallEP, %function
USBD_LL_ClearStallEP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	HAL_PCD_EP_ClrStall
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_ClearStallEP, .-USBD_LL_ClearStallEP
	.section	.text.USBD_LL_IsStallEP,"ax",%progbits
	.align	1
	.global	USBD_LL_IsStallEP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_IsStallEP, %function
USBD_LL_IsStallEP:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	str	r3, [r7, #12]
	ldrsb	r3, [r7, #3]
	cmp	r3, #0
	bge	.L53
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	ldr	r1, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #58
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L54
.L53:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r2, r3, #127
	ldr	r1, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	add	r3, r3, #478
	ldrb	r3, [r3]	@ zero_extendqisi2
.L54:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_LL_IsStallEP, .-USBD_LL_IsStallEP
	.section	.text.USBD_LL_SetUSBAddress,"ax",%progbits
	.align	1
	.global	USBD_LL_SetUSBAddress
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_SetUSBAddress, %function
USBD_LL_SetUSBAddress:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	HAL_PCD_SetAddress
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_SetUSBAddress, .-USBD_LL_SetUSBAddress
	.section	.text.USBD_LL_Transmit,"ax",%progbits
	.align	1
	.global	USBD_LL_Transmit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_Transmit, %function
USBD_LL_Transmit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #11]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #544]
	ldrh	r3, [r7, #8]
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	bl	HAL_PCD_EP_Transmit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_Transmit, .-USBD_LL_Transmit
	.section	.text.USBD_LL_PrepareReceive,"ax",%progbits
	.align	1
	.global	USBD_LL_PrepareReceive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_PrepareReceive, %function
USBD_LL_PrepareReceive:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #11]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #544]
	ldrh	r3, [r7, #8]
	ldrb	r1, [r7, #11]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	bl	HAL_PCD_EP_Receive
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_PrepareReceive, .-USBD_LL_PrepareReceive
	.section	.text.USBD_LL_GetRxDataSize,"ax",%progbits
	.align	1
	.global	USBD_LL_GetRxDataSize
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_GetRxDataSize, %function
USBD_LL_GetRxDataSize:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	HAL_PCD_EP_GetRxCount
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_GetRxDataSize, .-USBD_LL_GetRxDataSize
	.section	.text.USBD_LL_Delay,"ax",%progbits
	.align	1
	.global	USBD_LL_Delay
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_Delay, %function
USBD_LL_Delay:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	HAL_Delay
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_Delay, .-USBD_LL_Delay
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

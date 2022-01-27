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
	.file	"stm32f4xx_hal.c"
	.text
	.comm	uwTick,4,4
	.section	.text.HAL_Init,"ax",%progbits
	.align	1
	.global	HAL_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_Init, %function
HAL_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L3
	ldr	r3, [r3]
	ldr	r2, .L3
	orr	r3, r3, #512
	str	r3, [r2]
	ldr	r3, .L3
	ldr	r3, [r3]
	ldr	r2, .L3
	orr	r3, r3, #1024
	str	r3, [r2]
	ldr	r3, .L3
	ldr	r3, [r3]
	ldr	r2, .L3
	orr	r3, r3, #256
	str	r3, [r2]
	movs	r0, #3
	bl	HAL_NVIC_SetPriorityGrouping
	movs	r0, #0
	bl	HAL_InitTick
	bl	HAL_MspInit
	movs	r3, #0
	mov	r0, r3
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	1073888256
	.size	HAL_Init, .-HAL_Init
	.section	.text.HAL_DeInit,"ax",%progbits
	.align	1
	.global	HAL_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DeInit, %function
HAL_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L7
	mov	r2, #-1
	str	r2, [r3, #32]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L7
	mov	r2, #-1
	str	r2, [r3, #36]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, .L7
	mov	r2, #-1
	str	r2, [r3, #16]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L7
	mov	r2, #-1
	str	r2, [r3, #20]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, .L7
	mov	r2, #-1
	str	r2, [r3, #24]
	ldr	r3, .L7
	movs	r2, #0
	str	r2, [r3, #24]
	bl	HAL_MspDeInit
	movs	r3, #0
	mov	r0, r3
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	1073887232
	.size	HAL_DeInit, .-HAL_DeInit
	.section	.text.HAL_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_MspInit, %function
HAL_MspInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_MspInit, .-HAL_MspInit
	.section	.text.HAL_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_MspDeInit, %function
HAL_MspDeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_MspDeInit, .-HAL_MspDeInit
	.section	.text.HAL_InitTick,"ax",%progbits
	.align	1
	.weak	HAL_InitTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_InitTick, %function
HAL_InitTick:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	bl	HAL_RCC_GetHCLKFreq
	mov	r3, r0
	ldr	r2, .L13
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #6
	mov	r0, r3
	bl	HAL_SYSTICK_Config
	movs	r2, #0
	ldr	r1, [r7, #4]
	mov	r0, #-1
	bl	HAL_NVIC_SetPriority
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	274877907
	.size	HAL_InitTick, .-HAL_InitTick
	.section	.text.HAL_IncTick,"ax",%progbits
	.align	1
	.weak	HAL_IncTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_IncTick, %function
HAL_IncTick:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L16
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L16
	str	r3, [r2]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L17:
	.align	2
.L16:
	.word	uwTick
	.size	HAL_IncTick, .-HAL_IncTick
	.section	.text.HAL_GetTick,"ax",%progbits
	.align	1
	.weak	HAL_GetTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_GetTick, %function
HAL_GetTick:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L20
	ldr	r3, [r3]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L21:
	.align	2
.L20:
	.word	uwTick
	.size	HAL_GetTick, .-HAL_GetTick
	.section	.text.HAL_Delay,"ax",%progbits
	.align	1
	.weak	HAL_Delay
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_Delay, %function
HAL_Delay:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	nop
.L23:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L23
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_Delay, .-HAL_Delay
	.section	.text.HAL_SuspendTick,"ax",%progbits
	.align	1
	.weak	HAL_SuspendTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SuspendTick, %function
HAL_SuspendTick:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L25
	ldr	r3, [r3]
	ldr	r2, .L25
	bic	r3, r3, #2
	str	r3, [r2]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L26:
	.align	2
.L25:
	.word	-536813552
	.size	HAL_SuspendTick, .-HAL_SuspendTick
	.section	.text.HAL_ResumeTick,"ax",%progbits
	.align	1
	.weak	HAL_ResumeTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ResumeTick, %function
HAL_ResumeTick:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L28
	ldr	r3, [r3]
	ldr	r2, .L28
	orr	r3, r3, #2
	str	r3, [r2]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L29:
	.align	2
.L28:
	.word	-536813552
	.size	HAL_ResumeTick, .-HAL_ResumeTick
	.section	.text.HAL_GetHalVersion,"ax",%progbits
	.align	1
	.global	HAL_GetHalVersion
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_GetHalVersion, %function
HAL_GetHalVersion:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L32
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L33:
	.align	2
.L32:
	.word	17040384
	.size	HAL_GetHalVersion, .-HAL_GetHalVersion
	.section	.text.HAL_GetREVID,"ax",%progbits
	.align	1
	.global	HAL_GetREVID
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_GetREVID, %function
HAL_GetREVID:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L36
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L37:
	.align	2
.L36:
	.word	-536600576
	.size	HAL_GetREVID, .-HAL_GetREVID
	.section	.text.HAL_GetDEVID,"ax",%progbits
	.align	1
	.global	HAL_GetDEVID
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_GetDEVID, %function
HAL_GetDEVID:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L40
	ldr	r3, [r3]
	ubfx	r3, r3, #0, #12
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L41:
	.align	2
.L40:
	.word	-536600576
	.size	HAL_GetDEVID, .-HAL_GetDEVID
	.section	.text.HAL_DBGMCU_EnableDBGSleepMode,"ax",%progbits
	.align	1
	.global	HAL_DBGMCU_EnableDBGSleepMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DBGMCU_EnableDBGSleepMode, %function
HAL_DBGMCU_EnableDBGSleepMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L43
	ldr	r3, [r3, #4]
	ldr	r2, .L43
	orr	r3, r3, #1
	str	r3, [r2, #4]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L44:
	.align	2
.L43:
	.word	-536600576
	.size	HAL_DBGMCU_EnableDBGSleepMode, .-HAL_DBGMCU_EnableDBGSleepMode
	.section	.text.HAL_DBGMCU_DisableDBGSleepMode,"ax",%progbits
	.align	1
	.global	HAL_DBGMCU_DisableDBGSleepMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DBGMCU_DisableDBGSleepMode, %function
HAL_DBGMCU_DisableDBGSleepMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L46
	ldr	r3, [r3, #4]
	ldr	r2, .L46
	bic	r3, r3, #1
	str	r3, [r2, #4]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L47:
	.align	2
.L46:
	.word	-536600576
	.size	HAL_DBGMCU_DisableDBGSleepMode, .-HAL_DBGMCU_DisableDBGSleepMode
	.section	.text.HAL_DBGMCU_EnableDBGStopMode,"ax",%progbits
	.align	1
	.global	HAL_DBGMCU_EnableDBGStopMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DBGMCU_EnableDBGStopMode, %function
HAL_DBGMCU_EnableDBGStopMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L49
	ldr	r3, [r3, #4]
	ldr	r2, .L49
	orr	r3, r3, #2
	str	r3, [r2, #4]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L50:
	.align	2
.L49:
	.word	-536600576
	.size	HAL_DBGMCU_EnableDBGStopMode, .-HAL_DBGMCU_EnableDBGStopMode
	.section	.text.HAL_DBGMCU_DisableDBGStopMode,"ax",%progbits
	.align	1
	.global	HAL_DBGMCU_DisableDBGStopMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DBGMCU_DisableDBGStopMode, %function
HAL_DBGMCU_DisableDBGStopMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L52
	ldr	r3, [r3, #4]
	ldr	r2, .L52
	bic	r3, r3, #2
	str	r3, [r2, #4]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L53:
	.align	2
.L52:
	.word	-536600576
	.size	HAL_DBGMCU_DisableDBGStopMode, .-HAL_DBGMCU_DisableDBGStopMode
	.section	.text.HAL_DBGMCU_EnableDBGStandbyMode,"ax",%progbits
	.align	1
	.global	HAL_DBGMCU_EnableDBGStandbyMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DBGMCU_EnableDBGStandbyMode, %function
HAL_DBGMCU_EnableDBGStandbyMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L55
	ldr	r3, [r3, #4]
	ldr	r2, .L55
	orr	r3, r3, #4
	str	r3, [r2, #4]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L56:
	.align	2
.L55:
	.word	-536600576
	.size	HAL_DBGMCU_EnableDBGStandbyMode, .-HAL_DBGMCU_EnableDBGStandbyMode
	.section	.text.HAL_DBGMCU_DisableDBGStandbyMode,"ax",%progbits
	.align	1
	.global	HAL_DBGMCU_DisableDBGStandbyMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DBGMCU_DisableDBGStandbyMode, %function
HAL_DBGMCU_DisableDBGStandbyMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L58
	ldr	r3, [r3, #4]
	ldr	r2, .L58
	bic	r3, r3, #4
	str	r3, [r2, #4]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L59:
	.align	2
.L58:
	.word	-536600576
	.size	HAL_DBGMCU_DisableDBGStandbyMode, .-HAL_DBGMCU_DisableDBGStandbyMode
	.section	.text.HAL_EnableCompensationCell,"ax",%progbits
	.align	1
	.global	HAL_EnableCompensationCell
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_EnableCompensationCell, %function
HAL_EnableCompensationCell:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7]
	ldr	r3, [r7]
	clz	r3, r3
	mov	r2, r3
	ldr	r3, .L62
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L63:
	.align	2
.L62:
	.word	277463296
	.size	HAL_EnableCompensationCell, .-HAL_EnableCompensationCell
	.section	.text.HAL_DisableCompensationCell,"ax",%progbits
	.align	1
	.global	HAL_DisableCompensationCell
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DisableCompensationCell, %function
HAL_DisableCompensationCell:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7]
	ldr	r3, [r7]
	clz	r3, r3
	mov	r2, r3
	ldr	r3, .L66
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L67:
	.align	2
.L66:
	.word	277463296
	.size	HAL_DisableCompensationCell, .-HAL_DisableCompensationCell
	.section	.text.HAL_EnableMemorySwappingBank,"ax",%progbits
	.align	1
	.global	HAL_EnableMemorySwappingBank
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_EnableMemorySwappingBank, %function
HAL_EnableMemorySwappingBank:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, #256
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7]
	ldr	r3, [r7]
	clz	r3, r3
	add	r3, r3, #276824064
	add	r3, r3, #638976
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_EnableMemorySwappingBank, .-HAL_EnableMemorySwappingBank
	.section	.text.HAL_DisableMemorySwappingBank,"ax",%progbits
	.align	1
	.global	HAL_DisableMemorySwappingBank
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DisableMemorySwappingBank, %function
HAL_DisableMemorySwappingBank:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, #256
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7]
	ldr	r3, [r7]
	clz	r3, r3
	add	r3, r3, #276824064
	add	r3, r3, #638976
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_DisableMemorySwappingBank, .-HAL_DisableMemorySwappingBank
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

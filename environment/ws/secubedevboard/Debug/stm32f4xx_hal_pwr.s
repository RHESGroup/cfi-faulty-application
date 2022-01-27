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
	.file	"stm32f4xx_hal_pwr.c"
	.text
	.section	.text.HAL_PWR_DeInit,"ax",%progbits
	.align	1
	.global	HAL_PWR_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_DeInit, %function
HAL_PWR_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r3, [r3, #32]
	ldr	r2, .L2
	orr	r3, r3, #268435456
	str	r3, [r2, #32]
	ldr	r3, .L2
	ldr	r3, [r3, #32]
	ldr	r2, .L2
	bic	r3, r3, #268435456
	str	r3, [r2, #32]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073887232
	.size	HAL_PWR_DeInit, .-HAL_PWR_DeInit
	.section	.text.HAL_PWR_EnableBkUpAccess,"ax",%progbits
	.align	1
	.global	HAL_PWR_EnableBkUpAccess
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_EnableBkUpAccess, %function
HAL_PWR_EnableBkUpAccess:
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
	add	r3, r3, #229376
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
	.size	HAL_PWR_EnableBkUpAccess, .-HAL_PWR_EnableBkUpAccess
	.section	.text.HAL_PWR_DisableBkUpAccess,"ax",%progbits
	.align	1
	.global	HAL_PWR_DisableBkUpAccess
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_DisableBkUpAccess, %function
HAL_PWR_DisableBkUpAccess:
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
	add	r3, r3, #229376
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
	.size	HAL_PWR_DisableBkUpAccess, .-HAL_PWR_DisableBkUpAccess
	.section	.text.HAL_PWR_ConfigPVD,"ax",%progbits
	.align	1
	.global	HAL_PWR_ConfigPVD
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_ConfigPVD, %function
HAL_PWR_ConfigPVD:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L14
	ldr	r3, [r3]
	bic	r2, r3, #224
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, .L14
	orrs	r3, r3, r2
	str	r3, [r1]
	ldr	r3, .L14+4
	ldr	r3, [r3, #4]
	ldr	r2, .L14+4
	bic	r3, r3, #65536
	str	r3, [r2, #4]
	ldr	r3, .L14+4
	ldr	r3, [r3]
	ldr	r2, .L14+4
	bic	r3, r3, #65536
	str	r3, [r2]
	ldr	r3, .L14+4
	ldr	r3, [r3, #8]
	ldr	r2, .L14+4
	bic	r3, r3, #65536
	str	r3, [r2, #8]
	ldr	r3, .L14+4
	ldr	r3, [r3, #12]
	ldr	r2, .L14+4
	bic	r3, r3, #65536
	str	r3, [r2, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L9
	ldr	r3, .L14+4
	ldr	r3, [r3]
	ldr	r2, .L14+4
	orr	r3, r3, #65536
	str	r3, [r2]
.L9:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r3, r3, #131072
	cmp	r3, #0
	beq	.L10
	ldr	r3, .L14+4
	ldr	r3, [r3, #4]
	ldr	r2, .L14+4
	orr	r3, r3, #65536
	str	r3, [r2, #4]
.L10:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L11
	ldr	r3, .L14+4
	ldr	r3, [r3, #8]
	ldr	r2, .L14+4
	orr	r3, r3, #65536
	str	r3, [r2, #8]
.L11:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L14+4
	ldr	r3, [r3, #12]
	ldr	r2, .L14+4
	orr	r3, r3, #65536
	str	r3, [r2, #12]
.L13:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L15:
	.align	2
.L14:
	.word	1073770496
	.word	1073822720
	.size	HAL_PWR_ConfigPVD, .-HAL_PWR_ConfigPVD
	.section	.text.HAL_PWR_EnablePVD,"ax",%progbits
	.align	1
	.global	HAL_PWR_EnablePVD
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_EnablePVD, %function
HAL_PWR_EnablePVD:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #16
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
	add	r3, r3, #229376
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
	.size	HAL_PWR_EnablePVD, .-HAL_PWR_EnablePVD
	.section	.text.HAL_PWR_DisablePVD,"ax",%progbits
	.align	1
	.global	HAL_PWR_DisablePVD
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_DisablePVD, %function
HAL_PWR_DisablePVD:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #16
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
	add	r3, r3, #229376
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
	.size	HAL_PWR_DisablePVD, .-HAL_PWR_DisablePVD
	.section	.text.HAL_PWR_EnableWakeUpPin,"ax",%progbits
	.align	1
	.global	HAL_PWR_EnableWakeUpPin
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_EnableWakeUpPin, %function
HAL_PWR_EnableWakeUpPin:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L21
	ldr	r2, [r3, #4]
	ldr	r1, .L21
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L22:
	.align	2
.L21:
	.word	1073770496
	.size	HAL_PWR_EnableWakeUpPin, .-HAL_PWR_EnableWakeUpPin
	.section	.text.HAL_PWR_DisableWakeUpPin,"ax",%progbits
	.align	1
	.global	HAL_PWR_DisableWakeUpPin
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_DisableWakeUpPin, %function
HAL_PWR_DisableWakeUpPin:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L24
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L24
	ands	r3, r3, r2
	str	r3, [r1, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L25:
	.align	2
.L24:
	.word	1073770496
	.size	HAL_PWR_DisableWakeUpPin, .-HAL_PWR_DisableWakeUpPin
	.section	.text.HAL_PWR_EnterSLEEPMode,"ax",%progbits
	.align	1
	.global	HAL_PWR_EnterSLEEPMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_EnterSLEEPMode, %function
HAL_PWR_EnterSLEEPMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L29
	ldr	r3, [r3, #16]
	ldr	r2, .L29
	bic	r3, r3, #4
	str	r3, [r2, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L27
	.syntax unified
@ 385 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L28
.L27:
	.syntax unified
@ 406 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	.syntax unified
@ 396 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	.syntax unified
@ 396 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
	nop
.L28:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L30:
	.align	2
.L29:
	.word	-536810240
	.size	HAL_PWR_EnterSLEEPMode, .-HAL_PWR_EnterSLEEPMode
	.section	.text.HAL_PWR_EnterSTOPMode,"ax",%progbits
	.align	1
	.global	HAL_PWR_EnterSTOPMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_EnterSTOPMode, %function
HAL_PWR_EnterSTOPMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, .L34
	ldr	r3, [r3]
	bic	r2, r3, #3
	ldr	r1, .L34
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1]
	ldr	r3, .L34+4
	ldr	r3, [r3, #16]
	ldr	r2, .L34+4
	orr	r3, r3, #4
	str	r3, [r2, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L32
	.syntax unified
@ 385 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L33
.L32:
	.syntax unified
@ 406 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	sev
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	.syntax unified
@ 396 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	.syntax unified
@ 396 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
	nop
.L33:
	ldr	r3, .L34+4
	ldr	r3, [r3, #16]
	ldr	r2, .L34+4
	bic	r3, r3, #4
	str	r3, [r2, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L35:
	.align	2
.L34:
	.word	1073770496
	.word	-536810240
	.size	HAL_PWR_EnterSTOPMode, .-HAL_PWR_EnterSTOPMode
	.section	.text.HAL_PWR_EnterSTANDBYMode,"ax",%progbits
	.align	1
	.global	HAL_PWR_EnterSTANDBYMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_EnterSTANDBYMode, %function
HAL_PWR_EnterSTANDBYMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L37
	ldr	r3, [r3]
	ldr	r2, .L37
	orr	r3, r3, #2
	str	r3, [r2]
	ldr	r3, .L37+4
	ldr	r3, [r3, #16]
	ldr	r2, .L37+4
	orr	r3, r3, #4
	str	r3, [r2, #16]
	.syntax unified
@ 385 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L38:
	.align	2
.L37:
	.word	1073770496
	.word	-536810240
	.size	HAL_PWR_EnterSTANDBYMode, .-HAL_PWR_EnterSTANDBYMode
	.section	.text.HAL_PWR_PVD_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_PWR_PVD_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_PVD_IRQHandler, %function
HAL_PWR_PVD_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L42
	ldr	r3, [r3, #20]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L41
	bl	HAL_PWR_PVDCallback
	ldr	r3, .L42
	mov	r2, #65536
	str	r2, [r3, #20]
.L41:
	nop
	pop	{r7, pc}
.L43:
	.align	2
.L42:
	.word	1073822720
	.size	HAL_PWR_PVD_IRQHandler, .-HAL_PWR_PVD_IRQHandler
	.section	.text.HAL_PWR_PVDCallback,"ax",%progbits
	.align	1
	.weak	HAL_PWR_PVDCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_PVDCallback, %function
HAL_PWR_PVDCallback:
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
	.size	HAL_PWR_PVDCallback, .-HAL_PWR_PVDCallback
	.section	.text.HAL_PWR_EnableSleepOnExit,"ax",%progbits
	.align	1
	.global	HAL_PWR_EnableSleepOnExit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_EnableSleepOnExit, %function
HAL_PWR_EnableSleepOnExit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L46
	ldr	r3, [r3, #16]
	ldr	r2, .L46
	orr	r3, r3, #2
	str	r3, [r2, #16]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L47:
	.align	2
.L46:
	.word	-536810240
	.size	HAL_PWR_EnableSleepOnExit, .-HAL_PWR_EnableSleepOnExit
	.section	.text.HAL_PWR_DisableSleepOnExit,"ax",%progbits
	.align	1
	.global	HAL_PWR_DisableSleepOnExit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_DisableSleepOnExit, %function
HAL_PWR_DisableSleepOnExit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L49
	ldr	r3, [r3, #16]
	ldr	r2, .L49
	bic	r3, r3, #2
	str	r3, [r2, #16]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L50:
	.align	2
.L49:
	.word	-536810240
	.size	HAL_PWR_DisableSleepOnExit, .-HAL_PWR_DisableSleepOnExit
	.section	.text.HAL_PWR_EnableSEVOnPend,"ax",%progbits
	.align	1
	.global	HAL_PWR_EnableSEVOnPend
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_EnableSEVOnPend, %function
HAL_PWR_EnableSEVOnPend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L52
	ldr	r3, [r3, #16]
	ldr	r2, .L52
	orr	r3, r3, #16
	str	r3, [r2, #16]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L53:
	.align	2
.L52:
	.word	-536810240
	.size	HAL_PWR_EnableSEVOnPend, .-HAL_PWR_EnableSEVOnPend
	.section	.text.HAL_PWR_DisableSEVOnPend,"ax",%progbits
	.align	1
	.global	HAL_PWR_DisableSEVOnPend
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWR_DisableSEVOnPend, %function
HAL_PWR_DisableSEVOnPend:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L55
	ldr	r3, [r3, #16]
	ldr	r2, .L55
	bic	r3, r3, #16
	str	r3, [r2, #16]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L56:
	.align	2
.L55:
	.word	-536810240
	.size	HAL_PWR_DisableSEVOnPend, .-HAL_PWR_DisableSEVOnPend
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

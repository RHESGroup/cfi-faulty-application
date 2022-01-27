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
	.file	"stm32f4xx_hal_pwr_ex.c"
	.text
	.section	.text.HAL_PWREx_EnableBkUpReg,"ax",%progbits
	.align	1
	.global	HAL_PWREx_EnableBkUpReg
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_EnableBkUpReg, %function
HAL_PWREx_EnableBkUpReg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #12]
	mov	r3, #512
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	clz	r3, r3
	mov	r2, r3
	ldr	r3, .L6
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L3
.L5:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L3
	movs	r3, #3
	b	.L4
.L3:
	ldr	r3, .L6+4
	ldr	r3, [r3, #4]
	and	r3, r3, #8
	cmp	r3, #8
	bne	.L5
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	277053472
	.word	1073770496
	.size	HAL_PWREx_EnableBkUpReg, .-HAL_PWREx_EnableBkUpReg
	.section	.text.HAL_PWREx_DisableBkUpReg,"ax",%progbits
	.align	1
	.global	HAL_PWREx_DisableBkUpReg
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_DisableBkUpReg, %function
HAL_PWREx_DisableBkUpReg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #12]
	mov	r3, #512
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	clz	r3, r3
	mov	r2, r3
	ldr	r3, .L13
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L10
.L12:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L10
	movs	r3, #3
	b	.L11
.L10:
	ldr	r3, .L13+4
	ldr	r3, [r3, #4]
	and	r3, r3, #8
	cmp	r3, #8
	beq	.L12
	movs	r3, #0
.L11:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	277053472
	.word	1073770496
	.size	HAL_PWREx_DisableBkUpReg, .-HAL_PWREx_DisableBkUpReg
	.section	.text.HAL_PWREx_EnableFlashPowerDown,"ax",%progbits
	.align	1
	.global	HAL_PWREx_EnableFlashPowerDown
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_EnableFlashPowerDown, %function
HAL_PWREx_EnableFlashPowerDown:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, #512
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
	.size	HAL_PWREx_EnableFlashPowerDown, .-HAL_PWREx_EnableFlashPowerDown
	.section	.text.HAL_PWREx_DisableFlashPowerDown,"ax",%progbits
	.align	1
	.global	HAL_PWREx_DisableFlashPowerDown
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_DisableFlashPowerDown, %function
HAL_PWREx_DisableFlashPowerDown:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, #512
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
	.size	HAL_PWREx_DisableFlashPowerDown, .-HAL_PWREx_DisableFlashPowerDown
	.section	.text.HAL_PWREx_GetVoltageRange,"ax",%progbits
	.align	1
	.global	HAL_PWREx_GetVoltageRange
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_GetVoltageRange, %function
HAL_PWREx_GetVoltageRange:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L21
	ldr	r3, [r3]
	and	r3, r3, #49152
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L22:
	.align	2
.L21:
	.word	1073770496
	.size	HAL_PWREx_GetVoltageRange, .-HAL_PWREx_GetVoltageRange
	.section	.text.HAL_PWREx_ControlVoltageScaling,"ax",%progbits
	.align	1
	.global	HAL_PWREx_ControlVoltageScaling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_ControlVoltageScaling, %function
HAL_PWREx_ControlVoltageScaling:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, .L34
	ldr	r3, [r3, #64]
	ldr	r2, .L34
	orr	r3, r3, #268435456
	str	r3, [r2, #64]
	ldr	r3, .L34
	ldr	r3, [r3, #64]
	and	r3, r3, #268435456
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, .L34
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #8
	beq	.L24
	ldr	r3, .L34+4
	movs	r2, #0
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L25
.L27:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L25
	movs	r3, #3
	b	.L26
.L25:
	ldr	r3, .L34
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	bne	.L27
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L34+8
	ldr	r3, [r3]
	bic	r2, r3, #49152
	ldr	r1, .L34+8
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1]
	ldr	r3, .L34+8
	ldr	r3, [r3]
	and	r3, r3, #49152
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, .L34+4
	movs	r2, #1
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L28
.L29:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L28
	movs	r3, #3
	b	.L26
.L28:
	ldr	r3, .L34
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L29
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L30
.L31:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L30
	movs	r3, #3
	b	.L26
.L30:
	ldr	r3, .L34+8
	ldr	r3, [r3, #4]
	and	r3, r3, #16384
	cmp	r3, #16384
	bne	.L31
	b	.L33
.L24:
	movs	r3, #1
	b	.L26
.L33:
	movs	r3, #0
.L26:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	1073887232
	.word	1111949408
	.word	1073770496
	.size	HAL_PWREx_ControlVoltageScaling, .-HAL_PWREx_ControlVoltageScaling
	.section	.text.HAL_PWREx_EnableOverDrive,"ax",%progbits
	.align	1
	.global	HAL_PWREx_EnableOverDrive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_EnableOverDrive, %function
HAL_PWREx_EnableOverDrive:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7]
	ldr	r3, .L44
	ldr	r3, [r3, #64]
	ldr	r2, .L44
	orr	r3, r3, #268435456
	str	r3, [r2, #64]
	ldr	r3, .L44
	ldr	r3, [r3, #64]
	and	r3, r3, #268435456
	str	r3, [r7]
	ldr	r3, [r7]
	mov	r3, #65536
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	clz	r3, r3
	add	r3, r3, #276824064
	add	r3, r3, #229376
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L38
.L40:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L38
	movs	r3, #3
	b	.L39
.L38:
	ldr	r3, .L44+4
	ldr	r3, [r3, #4]
	and	r3, r3, #65536
	cmp	r3, #65536
	bne	.L40
	mov	r3, #131072
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	clz	r3, r3
	add	r3, r3, #276824064
	add	r3, r3, #229376
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L42
.L43:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L42
	movs	r3, #3
	b	.L39
.L42:
	ldr	r3, .L44+4
	ldr	r3, [r3, #4]
	and	r3, r3, #131072
	cmp	r3, #131072
	bne	.L43
	movs	r3, #0
.L39:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	1073887232
	.word	1073770496
	.size	HAL_PWREx_EnableOverDrive, .-HAL_PWREx_EnableOverDrive
	.section	.text.HAL_PWREx_DisableOverDrive,"ax",%progbits
	.align	1
	.global	HAL_PWREx_DisableOverDrive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_DisableOverDrive, %function
HAL_PWREx_DisableOverDrive:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7]
	ldr	r3, .L54
	ldr	r3, [r3, #64]
	ldr	r2, .L54
	orr	r3, r3, #268435456
	str	r3, [r2, #64]
	ldr	r3, .L54
	ldr	r3, [r3, #64]
	and	r3, r3, #268435456
	str	r3, [r7]
	ldr	r3, [r7]
	mov	r3, #131072
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	clz	r3, r3
	add	r3, r3, #276824064
	add	r3, r3, #229376
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L48
.L50:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L48
	movs	r3, #3
	b	.L49
.L48:
	ldr	r3, .L54+4
	ldr	r3, [r3, #4]
	and	r3, r3, #131072
	cmp	r3, #131072
	beq	.L50
	mov	r3, #65536
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	clz	r3, r3
	add	r3, r3, #276824064
	add	r3, r3, #229376
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L52
.L53:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L52
	movs	r3, #3
	b	.L49
.L52:
	ldr	r3, .L54+4
	ldr	r3, [r3, #4]
	and	r3, r3, #65536
	cmp	r3, #65536
	beq	.L53
	movs	r3, #0
.L49:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	1073887232
	.word	1073770496
	.size	HAL_PWREx_DisableOverDrive, .-HAL_PWREx_DisableOverDrive
	.section	.text.HAL_PWREx_EnterUnderDriveSTOPMode,"ax",%progbits
	.align	1
	.global	HAL_PWREx_EnterUnderDriveSTOPMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PWREx_EnterUnderDriveSTOPMode, %function
HAL_PWREx_EnterUnderDriveSTOPMode:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L62
	ldr	r3, [r3, #64]
	ldr	r2, .L62
	orr	r3, r3, #268435456
	str	r3, [r2, #64]
	ldr	r3, .L62
	ldr	r3, [r3, #64]
	and	r3, r3, #268435456
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, .L62+4
	ldr	r3, [r3, #4]
	ldr	r2, .L62+4
	orr	r3, r3, #786432
	str	r3, [r2, #4]
	ldr	r3, .L62+4
	ldr	r3, [r3]
	ldr	r2, .L62+4
	orr	r3, r3, #786432
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #16]
	b	.L57
.L59:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L57
	movs	r3, #3
	b	.L58
.L57:
	ldr	r3, .L62+4
	ldr	r3, [r3, #4]
	and	r3, r3, #786432
	cmp	r3, #786432
	beq	.L59
	ldr	r3, .L62+4
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #3072
	bic	r3, r3, #3
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, .L62+4
	ldr	r3, [r7, #20]
	str	r3, [r2]
	ldr	r3, .L62+8
	ldr	r3, [r3, #16]
	ldr	r2, .L62+8
	orr	r3, r3, #4
	str	r3, [r2, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L60
	.syntax unified
@ 385 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L61
.L60:
	.syntax unified
@ 396 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
	nop
.L61:
	ldr	r3, .L62+8
	ldr	r3, [r3, #16]
	ldr	r2, .L62+8
	bic	r3, r3, #4
	str	r3, [r2, #16]
	movs	r3, #0
.L58:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L63:
	.align	2
.L62:
	.word	1073887232
	.word	1073770496
	.word	-536810240
	.size	HAL_PWREx_EnterUnderDriveSTOPMode, .-HAL_PWREx_EnterUnderDriveSTOPMode
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

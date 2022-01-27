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
	.file	"stm32f4xx_hal_flash_ex.c"
	.text
	.section	.text.HAL_FLASHEx_Erase,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_Erase
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_Erase, %function
HAL_FLASHEx_Erase:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #1
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L10
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L2
	movs	r3, #2
	b	.L3
.L2:
	ldr	r3, .L10
	movs	r2, #1
	strb	r2, [r3, #24]
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L5
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	FLASH_MassErase
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, .L10+4
	ldr	r3, [r3, #16]
	ldr	r2, .L10+4
	bic	r3, r3, #32768
	bic	r3, r3, #4
	str	r3, [r2, #16]
	b	.L6
.L5:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	b	.L7
.L9:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	FLASH_Erase_Sector
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, .L10+4
	ldr	r3, [r3, #16]
	ldr	r2, .L10+4
	bic	r3, r3, #250
	str	r3, [r2, #16]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	b	.L6
.L8:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L7:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L9
.L6:
	bl	FLASH_FlushCaches
.L4:
	ldr	r3, .L10
	movs	r2, #0
	strb	r2, [r3, #24]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	pFlash
	.word	1073888256
	.size	HAL_FLASHEx_Erase, .-HAL_FLASHEx_Erase
	.section	.text.HAL_FLASHEx_Erase_IT,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_Erase_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_Erase_IT, %function
HAL_FLASHEx_Erase_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L17
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L13
	movs	r3, #2
	b	.L14
.L13:
	ldr	r3, .L17
	movs	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, .L17+4
	ldr	r3, [r3, #16]
	ldr	r2, .L17+4
	orr	r3, r3, #16777216
	str	r3, [r2, #16]
	ldr	r3, .L17+4
	ldr	r3, [r3, #16]
	ldr	r2, .L17+4
	orr	r3, r3, #33554432
	str	r3, [r2, #16]
	ldr	r3, .L17+4
	movs	r2, #243
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L15
	ldr	r3, .L17
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, .L17
	str	r3, [r2, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	FLASH_MassErase
	b	.L16
.L15:
	ldr	r3, .L17
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, .L17
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, .L17
	str	r3, [r2, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r2, r3
	ldr	r3, .L17
	strb	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r1, r3
	mov	r0, r2
	bl	FLASH_Erase_Sector
.L16:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L14:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	pFlash
	.word	1073888256
	.size	HAL_FLASHEx_Erase_IT, .-HAL_FLASHEx_Erase_IT
	.section	.text.HAL_FLASHEx_OBProgram,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_OBProgram
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_OBProgram, %function
HAL_FLASHEx_OBProgram:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #15]
	ldr	r3, .L27
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L20
	movs	r3, #2
	b	.L21
.L20:
	ldr	r3, .L27
	movs	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L22
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L23
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r1, r3
	mov	r0, r2
	bl	FLASH_OB_EnableWRP
	mov	r3, r0
	strb	r3, [r7, #15]
	b	.L22
.L23:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r1, r3
	mov	r0, r2
	bl	FLASH_OB_DisableWRP
	mov	r3, r0
	strb	r3, [r7, #15]
.L22:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r0, r3
	bl	FLASH_OB_RDP_LevelConfig
	mov	r3, r0
	strb	r3, [r7, #15]
.L24:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	and	r3, r3, #32
	uxtb	r0, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	and	r3, r3, #64
	uxtb	r1, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	mov	r2, r3
	bl	FLASH_OB_UserConfig
	mov	r3, r0
	strb	r3, [r7, #15]
.L25:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	uxtb	r3, r3
	mov	r0, r3
	bl	FLASH_OB_BOR_LevelConfig
	mov	r3, r0
	strb	r3, [r7, #15]
.L26:
	ldr	r3, .L27
	movs	r2, #0
	strb	r2, [r3, #24]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L21:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L28:
	.align	2
.L27:
	.word	pFlash
	.size	HAL_FLASHEx_OBProgram, .-HAL_FLASHEx_OBProgram
	.section	.text.HAL_FLASHEx_OBGetConfig,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_OBGetConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_OBGetConfig, %function
HAL_FLASHEx_OBGetConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #15
	str	r2, [r3]
	bl	FLASH_OB_GetWRP
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	bl	FLASH_OB_GetRDP
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	bl	FLASH_OB_GetUser
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #24]
	bl	FLASH_OB_GetBOR
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_FLASHEx_OBGetConfig, .-HAL_FLASHEx_OBGetConfig
	.section	.text.HAL_FLASHEx_AdvOBProgram,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_AdvOBProgram
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_AdvOBProgram, %function
HAL_FLASHEx_AdvOBProgram:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L32
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	mov	r0, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #14]
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	bl	FLASH_OB_EnablePCROP
	mov	r3, r0
	strb	r3, [r7, #15]
	b	.L31
.L32:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #12]
	mov	r0, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #14]
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	bl	FLASH_OB_DisablePCROP
	mov	r3, r0
	strb	r3, [r7, #15]
.L31:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	mov	r0, r3
	bl	FLASH_OB_BootConfig
	mov	r3, r0
	strb	r3, [r7, #15]
.L33:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_FLASHEx_AdvOBProgram, .-HAL_FLASHEx_AdvOBProgram
	.section	.text.HAL_FLASHEx_AdvOBGetConfig,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_AdvOBGetConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_AdvOBGetConfig, %function
HAL_FLASHEx_AdvOBGetConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L36
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, .L36+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, .L36+8
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L37:
	.align	2
.L36:
	.word	1073888278
	.word	1073888282
	.word	1073888276
	.size	HAL_FLASHEx_AdvOBGetConfig, .-HAL_FLASHEx_AdvOBGetConfig
	.section	.text.HAL_FLASHEx_OB_SelectPCROP,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_OB_SelectPCROP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_OB_SelectPCROP, %function
HAL_FLASHEx_OB_SelectPCROP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #255
	strb	r3, [r7, #7]
	ldr	r3, .L40
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #127
	strb	r3, [r7, #7]
	ldr	r2, .L40
	ldrb	r3, [r7, #7]
	orn	r3, r3, #127
	uxtb	r3, r3
	strb	r3, [r2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L41:
	.align	2
.L40:
	.word	1073888279
	.size	HAL_FLASHEx_OB_SelectPCROP, .-HAL_FLASHEx_OB_SelectPCROP
	.section	.text.HAL_FLASHEx_OB_DeSelectPCROP,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_OB_DeSelectPCROP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_OB_DeSelectPCROP, %function
HAL_FLASHEx_OB_DeSelectPCROP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #255
	strb	r3, [r7, #7]
	ldr	r3, .L44
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #127
	strb	r3, [r7, #7]
	ldr	r2, .L44
	ldrb	r3, [r7, #7]
	strb	r3, [r2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L45:
	.align	2
.L44:
	.word	1073888279
	.size	HAL_FLASHEx_OB_DeSelectPCROP, .-HAL_FLASHEx_OB_DeSelectPCROP
	.section	.text.HAL_FLASHEx_OB_GetBank2WRP,"ax",%progbits
	.align	1
	.global	HAL_FLASHEx_OB_GetBank2WRP
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_FLASHEx_OB_GetBank2WRP, %function
HAL_FLASHEx_OB_GetBank2WRP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L48
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L49:
	.align	2
.L48:
	.word	1073888282
	.size	HAL_FLASHEx_OB_GetBank2WRP, .-HAL_FLASHEx_OB_GetBank2WRP
	.section	.text.FLASH_MassErase,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_MassErase, %function
FLASH_MassErase:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, .L54
	ldr	r3, [r3, #16]
	ldr	r2, .L54
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, [r7]
	cmp	r3, #3
	bne	.L51
	ldr	r3, .L54
	ldr	r3, [r3, #16]
	ldr	r2, .L54
	orr	r3, r3, #32768
	orr	r3, r3, #4
	str	r3, [r2, #16]
	b	.L52
.L51:
	ldr	r3, [r7]
	cmp	r3, #1
	bne	.L53
	ldr	r3, .L54
	ldr	r3, [r3, #16]
	ldr	r2, .L54
	orr	r3, r3, #4
	str	r3, [r2, #16]
	b	.L52
.L53:
	ldr	r3, .L54
	ldr	r3, [r3, #16]
	ldr	r2, .L54
	orr	r3, r3, #32768
	str	r3, [r2, #16]
.L52:
	ldr	r3, .L54
	ldr	r2, [r3, #16]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, .L54
	orr	r3, r3, #65536
	str	r3, [r2, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L55:
	.align	2
.L54:
	.word	1073888256
	.size	FLASH_MassErase, .-FLASH_MassErase
	.section	.text.FLASH_Erase_Sector,"ax",%progbits
	.align	1
	.global	FLASH_Erase_Sector
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_Erase_Sector, %function
FLASH_Erase_Sector:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L57
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L58
.L57:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L59
	mov	r3, #256
	str	r3, [r7, #20]
	b	.L58
.L59:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L60
	mov	r3, #512
	str	r3, [r7, #20]
	b	.L58
.L60:
	mov	r3, #768
	str	r3, [r7, #20]
.L58:
	ldr	r3, [r7, #4]
	cmp	r3, #11
	bls	.L61
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #4]
.L61:
	ldr	r3, .L63
	ldr	r3, [r3, #16]
	ldr	r2, .L63
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L63
	ldr	r2, [r3, #16]
	ldr	r1, .L63
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, .L63
	ldr	r3, [r3, #16]
	ldr	r2, .L63
	bic	r3, r3, #248
	str	r3, [r2, #16]
	movs	r3, #248
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
	ldr	r2, [r7, #4]
	lsl	r3, r2, r3
	orr	r2, r3, #2
	ldr	r3, .L63
	ldr	r3, [r3, #16]
	ldr	r1, .L63
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, .L63
	ldr	r3, [r3, #16]
	ldr	r2, .L63
	orr	r3, r3, #65536
	str	r3, [r2, #16]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L64:
	.align	2
.L63:
	.word	1073888256
	.size	FLASH_Erase_Sector, .-FLASH_Erase_Sector
	.section	.text.FLASH_OB_EnableWRP,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_EnableWRP, %function
FLASH_OB_EnableWRP:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L66
	ldr	r3, [r7, #4]
	ldr	r2, .L74
	cmp	r3, r2
	bne	.L67
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L68
	ldr	r3, [r7]
	cmp	r3, #3
	beq	.L68
.L67:
	ldr	r3, [r7, #4]
	cmp	r3, #4096
	bcs	.L69
.L68:
	ldr	r3, [r7, #4]
	ldr	r2, .L74
	cmp	r3, r2
	bne	.L70
	ldr	r3, .L74+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #12
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L74+4
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L72
.L70:
	ldr	r3, .L74+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L74+4
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L72
.L69:
	ldr	r3, .L74+8
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #12
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L74+8
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L72:
	ldr	r3, [r7, #4]
	ldr	r2, .L74
	cmp	r3, r2
	bne	.L66
	ldr	r3, [r7]
	cmp	r3, #3
	bne	.L66
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L66
	ldr	r3, .L74+8
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #12
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L74+8
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L66:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L75:
	.align	2
.L74:
	.word	16773120
	.word	1073888278
	.word	1073888282
	.size	FLASH_OB_EnableWRP, .-FLASH_OB_EnableWRP
	.section	.text.FLASH_OB_DisableWRP,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_DisableWRP, %function
FLASH_OB_DisableWRP:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L77
	ldr	r3, [r7, #4]
	ldr	r2, .L85
	cmp	r3, r2
	bne	.L78
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L79
	ldr	r3, [r7]
	cmp	r3, #3
	beq	.L79
.L78:
	ldr	r3, [r7, #4]
	cmp	r3, #4096
	bcs	.L80
.L79:
	ldr	r3, [r7, #4]
	ldr	r2, .L85
	cmp	r3, r2
	bne	.L81
	ldr	r3, .L85+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #12
	uxth	r3, r3
	ldr	r1, .L85+4
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L83
.L81:
	ldr	r3, .L85+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	ldr	r1, .L85+4
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L83
.L80:
	ldr	r3, .L85+8
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #12
	uxth	r3, r3
	ldr	r1, .L85+8
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L83:
	ldr	r3, [r7, #4]
	ldr	r2, .L85
	cmp	r3, r2
	bne	.L77
	ldr	r3, [r7]
	cmp	r3, #3
	bne	.L77
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L77
	ldr	r3, .L85+8
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #12
	uxth	r3, r3
	ldr	r1, .L85+8
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L77:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L86:
	.align	2
.L85:
	.word	16773120
	.word	1073888278
	.word	1073888282
	.size	FLASH_OB_DisableWRP, .-FLASH_OB_DisableWRP
	.section	.text.FLASH_OB_BootConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_BootConfig, %function
FLASH_OB_BootConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L88
	ldr	r3, .L90
	ldrb	r3, [r3]
	uxtb	r3, r3
	ldr	r2, .L90
	bic	r3, r3, #16
	uxtb	r3, r3
	strb	r3, [r2]
	ldr	r3, .L90
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldr	r1, .L90
	ldrb	r3, [r7, #7]
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
.L88:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L91:
	.align	2
.L90:
	.word	1073888276
	.size	FLASH_OB_BootConfig, .-FLASH_OB_BootConfig
	.section	.text.FLASH_OB_EnablePCROP,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_EnablePCROP, %function
FLASH_OB_EnablePCROP:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #23]
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L93
	ldr	r3, [r7, #4]
	cmp	r3, #1
	beq	.L94
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bne	.L95
.L94:
	ldr	r3, .L98
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #12]
	uxth	r3, r3
	ldr	r1, .L98
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L96
.L95:
	ldr	r3, .L98+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #8]
	uxth	r3, r3
	ldr	r1, .L98+4
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L96:
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bne	.L93
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L93
	ldr	r3, .L98+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #8]
	uxth	r3, r3
	ldr	r1, .L98+4
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L93:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L99:
	.align	2
.L98:
	.word	1073888278
	.word	1073888282
	.size	FLASH_OB_EnablePCROP, .-FLASH_OB_EnablePCROP
	.section	.text.FLASH_OB_DisablePCROP,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_DisablePCROP, %function
FLASH_OB_DisablePCROP:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #23]
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L101
	ldr	r3, [r7, #4]
	cmp	r3, #1
	beq	.L102
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bne	.L103
.L102:
	ldr	r3, .L106
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #12]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L106
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L104
.L103:
	ldr	r3, .L106+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #8]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L106+4
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L104:
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bne	.L101
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L101
	ldr	r3, .L106+4
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #8]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L106+4
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L101:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L107:
	.align	2
.L106:
	.word	1073888278
	.word	1073888282
	.size	FLASH_OB_DisablePCROP, .-FLASH_OB_DisablePCROP
	.section	.text.FLASH_OB_RDP_LevelConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_RDP_LevelConfig, %function
FLASH_OB_RDP_LevelConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L109
	ldr	r2, .L111
	ldrb	r3, [r7, #7]
	strb	r3, [r2]
.L109:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L112:
	.align	2
.L111:
	.word	1073888277
	.size	FLASH_OB_RDP_LevelConfig, .-FLASH_OB_RDP_LevelConfig
	.section	.text.FLASH_OB_UserConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_UserConfig, %function
FLASH_OB_UserConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	movs	r3, #255
	strb	r3, [r7, #15]
	movs	r3, #0
	strb	r3, [r7, #14]
	movw	r0, #50000
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L114
	ldr	r3, .L116
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #31
	strb	r3, [r7, #15]
	ldrb	r2, [r7, #6]
	ldrb	r3, [r7, #15]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldrb	r3, [r7, #5]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r1, .L116
	ldrb	r3, [r7, #7]
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
.L114:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L117:
	.align	2
.L116:
	.word	1073888276
	.size	FLASH_OB_UserConfig, .-FLASH_OB_UserConfig
	.section	.text.FLASH_OB_BOR_LevelConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_BOR_LevelConfig, %function
FLASH_OB_BOR_LevelConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L120
	ldrb	r3, [r3]
	uxtb	r3, r3
	ldr	r2, .L120
	bic	r3, r3, #12
	uxtb	r3, r3
	strb	r3, [r2]
	ldr	r3, .L120
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldr	r1, .L120
	ldrb	r3, [r7, #7]
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L121:
	.align	2
.L120:
	.word	1073888276
	.size	FLASH_OB_BOR_LevelConfig, .-FLASH_OB_BOR_LevelConfig
	.section	.text.FLASH_OB_GetUser,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_GetUser, %function
FLASH_OB_GetUser:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L124
	ldr	r3, [r3, #20]
	uxtb	r3, r3
	bic	r3, r3, #31
	uxtb	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L125:
	.align	2
.L124:
	.word	1073888256
	.size	FLASH_OB_GetUser, .-FLASH_OB_GetUser
	.section	.text.FLASH_OB_GetWRP,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_GetWRP, %function
FLASH_OB_GetWRP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L128
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L129:
	.align	2
.L128:
	.word	1073888278
	.size	FLASH_OB_GetWRP, .-FLASH_OB_GetWRP
	.section	.text.FLASH_OB_GetRDP,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_GetRDP, %function
FLASH_OB_GetRDP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #170
	strb	r3, [r7, #7]
	ldr	r3, .L135
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #204
	bne	.L131
	movs	r3, #204
	strb	r3, [r7, #7]
	b	.L132
.L131:
	ldr	r3, .L135
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #85
	bne	.L133
	movs	r3, #85
	strb	r3, [r7, #7]
	b	.L132
.L133:
	movs	r3, #170
	strb	r3, [r7, #7]
.L132:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L136:
	.align	2
.L135:
	.word	1073888277
	.size	FLASH_OB_GetRDP, .-FLASH_OB_GetRDP
	.section	.text.FLASH_OB_GetBOR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_OB_GetBOR, %function
FLASH_OB_GetBOR:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L139
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #12
	uxtb	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L140:
	.align	2
.L139:
	.word	1073888276
	.size	FLASH_OB_GetBOR, .-FLASH_OB_GetBOR
	.section	.text.FLASH_FlushCaches,"ax",%progbits
	.align	1
	.global	FLASH_FlushCaches
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	FLASH_FlushCaches, %function
FLASH_FlushCaches:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L145
	ldr	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L142
	ldr	r3, .L145
	ldr	r3, [r3]
	ldr	r2, .L145
	bic	r3, r3, #512
	str	r3, [r2]
	ldr	r3, .L145
	ldr	r3, [r3]
	ldr	r2, .L145
	orr	r3, r3, #2048
	str	r3, [r2]
	ldr	r3, .L145
	ldr	r3, [r3]
	ldr	r2, .L145
	bic	r3, r3, #2048
	str	r3, [r2]
	ldr	r3, .L145
	ldr	r3, [r3]
	ldr	r2, .L145
	orr	r3, r3, #512
	str	r3, [r2]
.L142:
	ldr	r3, .L145
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L144
	ldr	r3, .L145
	ldr	r3, [r3]
	ldr	r2, .L145
	bic	r3, r3, #1024
	str	r3, [r2]
	ldr	r3, .L145
	ldr	r3, [r3]
	ldr	r2, .L145
	orr	r3, r3, #4096
	str	r3, [r2]
	ldr	r3, .L145
	ldr	r3, [r3]
	ldr	r2, .L145
	bic	r3, r3, #4096
	str	r3, [r2]
	ldr	r3, .L145
	ldr	r3, [r3]
	ldr	r2, .L145
	orr	r3, r3, #1024
	str	r3, [r2]
.L144:
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L146:
	.align	2
.L145:
	.word	1073888256
	.size	FLASH_FlushCaches, .-FLASH_FlushCaches
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

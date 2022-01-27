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
	.file	"stm32f4xx_hal_sd.c"
	.text
	.section	.text.HAL_SD_Init,"ax",%progbits
	.align	1
	.global	HAL_SD_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_Init, %function
HAL_SD_Init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #39]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #28]
	ldr	r0, [r7, #4]
	bl	HAL_SD_MspInit
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #118
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r5, [r3]
	mov	r4, sp
	add	r3, r7, #24
	ldm	r3, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	add	r3, r7, #12
	ldm	r3, {r1, r2, r3}
	mov	r0, r5
	bl	SDIO_Init
	ldr	r0, [r7, #4]
	bl	SD_PowerON
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	ldrb	r3, [r7, #39]
	uxtb	r3, r3
	b	.L6
.L2:
	ldr	r0, [r7, #4]
	bl	SD_Initialize_Cards
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L4
	ldrb	r3, [r7, #39]
	uxtb	r3, r3
	b	.L6
.L4:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	HAL_SD_Get_CardInfo
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L5
	ldr	r3, [r7]
	ldrh	r3, [r3, #84]
	lsls	r3, r3, #16
	mov	r2, r3
	mov	r3, #0
	ldr	r0, [r7, #4]
	bl	SD_Select_Deselect
	mov	r3, r0
	strb	r3, [r7, #39]
.L5:
	ldr	r3, [r7, #4]
	ldr	r5, [r3]
	ldr	r3, [r7, #4]
	mov	r4, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	adds	r3, r3, #4
	ldm	r3, {r1, r2, r3}
	mov	r0, r5
	bl	SDIO_Init
	ldrb	r3, [r7, #39]
	uxtb	r3, r3
.L6:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	HAL_SD_Init, .-HAL_SD_Init
	.section	.text.HAL_SD_DeInit,"ax",%progbits
	.align	1
	.global	HAL_SD_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_DeInit, %function
HAL_SD_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	SD_PowerOFF
	ldr	r0, [r7, #4]
	bl	HAL_SD_MspDeInit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SD_DeInit, .-HAL_SD_DeInit
	.section	.text.HAL_SD_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_SD_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_MspInit, %function
HAL_SD_MspInit:
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
	.size	HAL_SD_MspInit, .-HAL_SD_MspInit
	.section	.text.HAL_SD_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_SD_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_MspDeInit, %function
HAL_SD_MspDeInit:
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
	.size	HAL_SD_MspDeInit, .-HAL_SD_MspDeInit
	.section	.text.HAL_SD_ReadBlocks,"ax",%progbits
	.align	1
	.global	HAL_SD_ReadBlocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_ReadBlocks, %function
HAL_SD_ReadBlocks:
	@ args = 8, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	strd	r2, [r7]
	movs	r3, #0
	strb	r3, [r7, #71]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L12
	mov	r3, #512
	str	r3, [r7, #88]
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	strd	r2, [r7]
.L12:
	ldr	r3, [r7, #88]
	str	r3, [r7, #40]
	movs	r3, #16
	str	r3, [r7, #44]
	movs	r3, #64
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	mov	r3, #1024
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #40
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #16
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #71]
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L13
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	b	.L38
.L13:
	mov	r3, #-1
	str	r3, [r7, #16]
	ldr	r3, [r7, #92]
	ldr	r2, [r7, #88]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	movs	r3, #144
	str	r3, [r7, #24]
	movs	r3, #2
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_DataConfig
	ldr	r3, [r7, #92]
	cmp	r3, #1
	bls	.L15
	movs	r3, #18
	str	r3, [r7, #44]
	b	.L16
.L15:
	movs	r3, #17
	str	r3, [r7, #44]
.L16:
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #40
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r3, [r7, #92]
	cmp	r3, #1
	bls	.L17
	movs	r1, #18
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #71]
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L19
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	b	.L38
.L22:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L19
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L20
.L21:
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #2
	ldr	r2, [r7, #60]
	adds	r4, r2, r3
	mov	r0, r1
	bl	SDIO_ReadFIFO
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L20:
	ldr	r3, [r7, #64]
	cmp	r3, #7
	bls	.L21
	ldr	r3, [r7, #60]
	adds	r3, r3, #32
	str	r3, [r7, #60]
.L19:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	movw	r3, #810
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L22
	b	.L23
.L17:
	movs	r1, #17
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #71]
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L25
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	b	.L38
.L28:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L25
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L26
.L27:
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #2
	ldr	r2, [r7, #60]
	adds	r4, r2, r3
	mov	r0, r1
	bl	SDIO_ReadFIFO
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L26:
	ldr	r3, [r7, #64]
	cmp	r3, #7
	bls	.L27
	ldr	r3, [r7, #60]
	adds	r3, r3, #32
	str	r3, [r7, #60]
.L25:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	movw	r3, #1578
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L28
.L23:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #92]
	cmp	r3, #1
	bls	.L29
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L30
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #1
	beq	.L30
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L29
.L30:
	ldr	r0, [r7, #12]
	bl	HAL_SD_StopTransfer
	mov	r3, r0
	strb	r3, [r7, #71]
.L29:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #8
	str	r2, [r3, #56]
	movs	r3, #4
	strb	r3, [r7, #71]
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	b	.L38
.L31:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #2
	str	r2, [r3, #56]
	movs	r3, #2
	strb	r3, [r7, #71]
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	b	.L38
.L32:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #32
	str	r2, [r3, #56]
	movs	r3, #6
	strb	r3, [r7, #71]
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	b	.L38
.L33:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, #512
	str	r2, [r3, #56]
	movs	r3, #7
	strb	r3, [r7, #71]
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
	b	.L38
.L34:
	mov	r3, #-1
	str	r3, [r7, #64]
	b	.L35
.L37:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_ReadFIFO
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	str	r3, [r7, #64]
.L35:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2097152
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L37
.L36:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldrb	r3, [r7, #71]	@ zero_extendqisi2
.L38:
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	HAL_SD_ReadBlocks, .-HAL_SD_ReadBlocks
	.section	.text.HAL_SD_WriteBlocks,"ax",%progbits
	.align	1
	.global	HAL_SD_WriteBlocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_WriteBlocks, %function
HAL_SD_WriteBlocks:
	@ args = 8, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	strd	r2, [r7]
	movs	r3, #0
	strb	r3, [r7, #87]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	str	r3, [r7, #72]
	movs	r3, #0
	strb	r3, [r7, #19]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L40
	mov	r3, #512
	str	r3, [r7, #96]
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	strd	r2, [r7]
.L40:
	ldr	r3, [r7, #96]
	str	r3, [r7, #44]
	movs	r3, #16
	str	r3, [r7, #48]
	movs	r3, #64
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #56]
	mov	r3, #1024
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #44
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #16
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #87]
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L41
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	b	.L77
.L41:
	ldr	r3, [r7, #100]
	cmp	r3, #1
	bls	.L43
	movs	r3, #25
	str	r3, [r7, #48]
	b	.L44
.L43:
	movs	r3, #24
	str	r3, [r7, #48]
.L44:
	ldr	r3, [r7]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #44
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r3, [r7, #100]
	cmp	r3, #1
	bls	.L45
	movs	r1, #25
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #87]
	b	.L46
.L45:
	movs	r1, #24
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #87]
.L46:
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	b	.L77
.L47:
	ldr	r3, [r7, #100]
	ldr	r2, [r7, #96]
	mul	r3, r2, r3
	str	r3, [r7, #68]
	mov	r3, #-1
	str	r3, [r7, #20]
	ldr	r3, [r7, #100]
	ldr	r2, [r7, #96]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	movs	r3, #144
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_DataConfig
	ldr	r3, [r7, #100]
	cmp	r3, #1
	bls	.L59
	b	.L49
.L57:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L49
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	cmp	r3, #31
	bhi	.L50
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L51
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	lsrs	r3, r3, #2
	b	.L52
.L51:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	lsrs	r3, r3, #2
	adds	r3, r3, #1
.L52:
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L53
.L54:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #72]
	mov	r0, r3
	bl	SDIO_WriteFIFO
	ldr	r3, [r7, #72]
	adds	r3, r3, #4
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	adds	r3, r3, #4
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L53:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L54
	b	.L49
.L50:
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L55
.L56:
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	mov	r1, r3
	bl	SDIO_WriteFIFO
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L55:
	ldr	r3, [r7, #76]
	cmp	r3, #7
	bls	.L56
	ldr	r3, [r7, #72]
	adds	r3, r3, #32
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	adds	r3, r3, #32
	str	r3, [r7, #80]
.L49:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	movw	r3, #794
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L57
	b	.L58
.L67:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L59
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	cmp	r3, #31
	bhi	.L60
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L61
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	lsrs	r3, r3, #2
	b	.L62
.L61:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	lsrs	r3, r3, #2
	adds	r3, r3, #1
.L62:
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L63
.L64:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r7, #72]
	mov	r0, r3
	bl	SDIO_WriteFIFO
	ldr	r3, [r7, #72]
	adds	r3, r3, #4
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	adds	r3, r3, #4
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L63:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L64
	b	.L59
.L60:
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L65
.L66:
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	mov	r1, r3
	bl	SDIO_WriteFIFO
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L65:
	ldr	r3, [r7, #76]
	cmp	r3, #7
	bls	.L66
	ldr	r3, [r7, #72]
	adds	r3, r3, #32
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	adds	r3, r3, #32
	str	r3, [r7, #80]
.L59:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	movw	r3, #1562
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L67
.L58:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r7, #100]
	cmp	r3, #1
	bls	.L68
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #1
	beq	.L69
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L68
.L69:
	ldr	r0, [r7, #12]
	bl	HAL_SD_StopTransfer
	mov	r3, r0
	strb	r3, [r7, #87]
.L68:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #8
	str	r2, [r3, #56]
	movs	r3, #4
	strb	r3, [r7, #87]
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	b	.L77
.L70:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #2
	str	r2, [r3, #56]
	movs	r3, #2
	strb	r3, [r7, #87]
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	b	.L77
.L71:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L72
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #16
	str	r2, [r3, #56]
	movs	r3, #5
	strb	r3, [r7, #87]
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	b	.L77
.L72:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, #512
	str	r2, [r3, #56]
	movs	r3, #7
	strb	r3, [r7, #87]
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	b	.L77
.L73:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	add	r3, r7, #19
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SD_IsCardProgramming
	mov	r3, r0
	strb	r3, [r7, #87]
	b	.L74
.L76:
	add	r3, r7, #19
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SD_IsCardProgramming
	mov	r3, r0
	strb	r3, [r7, #87]
.L74:
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L75
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #7
	beq	.L76
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L76
.L75:
	ldrb	r3, [r7, #87]	@ zero_extendqisi2
.L77:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SD_WriteBlocks, .-HAL_SD_WriteBlocks
	.section	.text.HAL_SD_ReadBlocks_DMA,"ax",%progbits
	.align	1
	.global	HAL_SD_ReadBlocks_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_ReadBlocks_DMA, %function
HAL_SD_ReadBlocks_DMA:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	strd	r2, [r7]
	movs	r3, #0
	strb	r3, [r7, #63]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #84]
	cmp	r3, #1
	bls	.L79
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #84]
	b	.L80
.L79:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
.L80:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #60]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	orr	r3, r3, #808
	orr	r3, r3, #2
	str	r3, [r2, #60]
	ldr	r3, .L89
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, .L89+4
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, .L89+8
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #88]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #128
	mov	r4, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	lsrs	r3, r3, #2
	mov	r2, r1
	mov	r1, r4
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L81
	mov	r3, #512
	str	r3, [r7, #80]
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	strd	r2, [r7]
.L81:
	ldr	r3, [r7, #80]
	str	r3, [r7, #40]
	movs	r3, #16
	str	r3, [r7, #44]
	movs	r3, #64
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	mov	r3, #1024
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #40
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #16
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #63]
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L82
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	b	.L88
.L82:
	mov	r3, #-1
	str	r3, [r7, #16]
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	movs	r3, #144
	str	r3, [r7, #24]
	movs	r3, #2
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_DataConfig
	ldr	r3, [r7, #84]
	cmp	r3, #1
	bls	.L84
	movs	r3, #18
	str	r3, [r7, #44]
	b	.L85
.L84:
	movs	r3, #17
	str	r3, [r7, #44]
.L85:
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #40
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r3, [r7, #84]
	cmp	r3, #1
	bls	.L86
	movs	r1, #18
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #63]
	b	.L87
.L86:
	movs	r1, #17
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #63]
.L87:
	ldrb	r2, [r7, #63]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
.L88:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L90:
	.align	2
.L89:
	.word	1109755276
	.word	SD_DMA_RxCplt
	.word	SD_DMA_RxError
	.size	HAL_SD_ReadBlocks_DMA, .-HAL_SD_ReadBlocks_DMA
	.section	.text.HAL_SD_WriteBlocks_DMA,"ax",%progbits
	.align	1
	.global	HAL_SD_WriteBlocks_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_WriteBlocks_DMA, %function
HAL_SD_WriteBlocks_DMA:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	strd	r2, [r7]
	movs	r3, #0
	strb	r3, [r7, #63]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #84]
	cmp	r3, #1
	bls	.L92
	ldr	r3, [r7, #12]
	movs	r2, #3
	str	r2, [r3, #84]
	b	.L93
.L92:
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3, #84]
.L93:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #60]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	orr	r3, r3, #792
	orr	r3, r3, #2
	str	r3, [r2, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	ldr	r2, .L103
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	ldr	r2, .L103+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #92]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #128
	mov	r4, r3
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	lsrs	r3, r3, #2
	mov	r2, r4
	bl	HAL_DMA_Start_IT
	ldr	r3, .L103+8
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L94
	mov	r3, #512
	str	r3, [r7, #80]
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	strd	r2, [r7]
.L94:
	ldr	r3, [r7, #80]
	str	r3, [r7, #40]
	movs	r3, #16
	str	r3, [r7, #44]
	movs	r3, #64
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	mov	r3, #1024
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #40
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #16
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #63]
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L95
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	b	.L102
.L95:
	ldr	r3, [r7, #84]
	cmp	r3, #1
	bhi	.L97
	movs	r3, #24
	str	r3, [r7, #44]
	b	.L98
.L97:
	movs	r3, #25
	str	r3, [r7, #44]
.L98:
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #40
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r3, [r7, #84]
	cmp	r3, #1
	bls	.L99
	movs	r1, #25
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #63]
	b	.L100
.L99:
	movs	r1, #24
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #63]
.L100:
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L101
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	b	.L102
.L101:
	mov	r3, #-1
	str	r3, [r7, #16]
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	movs	r3, #144
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_DataConfig
	ldrb	r2, [r7, #63]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
.L102:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L104:
	.align	2
.L103:
	.word	SD_DMA_TxCplt
	.word	SD_DMA_TxError
	.word	1109755276
	.size	HAL_SD_WriteBlocks_DMA, .-HAL_SD_WriteBlocks_DMA
	.section	.text.HAL_SD_CheckReadOperation,"ax",%progbits
	.align	1
	.global	HAL_SD_CheckReadOperation
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_CheckReadOperation, %function
HAL_SD_CheckReadOperation:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	strb	r3, [r7, #15]
	b	.L106
.L108:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L106:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L107
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L107
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L107
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L108
.L107:
	ldr	r3, [r7]
	str	r3, [r7, #24]
	b	.L109
.L111:
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L109:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L110
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L111
.L110:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #1
	bne	.L112
	ldr	r0, [r7, #4]
	bl	HAL_SD_StopTransfer
	mov	r3, r0
	strb	r3, [r7, #31]
.L112:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L113
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L113
	movs	r3, #4
	strb	r3, [r7, #31]
.L113:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	uxtb	r3, r3
	b	.L115
.L114:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L115:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SD_CheckReadOperation, .-HAL_SD_CheckReadOperation
	.section	.text.HAL_SD_CheckWriteOperation,"ax",%progbits
	.align	1
	.global	HAL_SD_CheckWriteOperation
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_CheckWriteOperation, %function
HAL_SD_CheckWriteOperation:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	strb	r3, [r7, #15]
	b	.L117
.L119:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L117:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L118
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L118
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L118
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L119
.L118:
	ldr	r3, [r7]
	str	r3, [r7, #24]
	b	.L120
.L122:
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L120:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L122
.L121:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #3
	bne	.L123
	ldr	r0, [r7, #4]
	bl	HAL_SD_StopTransfer
	mov	r3, r0
	strb	r3, [r7, #31]
.L123:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L124
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L124
	movs	r3, #4
	strb	r3, [r7, #31]
.L124:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L128
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	uxtb	r3, r3
	b	.L126
.L128:
	nop
.L127:
	ldr	r0, [r7, #4]
	bl	HAL_SD_GetStatus
	mov	r3, r0
	cmp	r3, #0
	bne	.L127
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L126:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SD_CheckWriteOperation, .-HAL_SD_CheckWriteOperation
	.section	.text.HAL_SD_Erase,"ax",%progbits
	.align	1
	.global	HAL_SD_Erase
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_Erase, %function
HAL_SD_Erase:
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	strd	r2, [r7]
	movs	r3, #0
	strb	r3, [r7, #55]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	lsrs	r3, r3, #20
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L130
	movs	r3, #37
	strb	r3, [r7, #55]
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	b	.L143
.L130:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	uxtb	r3, r3
	adds	r3, r3, #2
	ldr	r2, .L144
	udiv	r3, r2, r3
	str	r3, [r7, #24]
	movs	r0, #0
	bl	SDIO_GetResponse
	mov	r3, r0
	and	r3, r3, #33554432
	cmp	r3, #33554432
	bne	.L132
	movs	r3, #14
	strb	r3, [r7, #55]
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	b	.L143
.L132:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L133
	ldrd	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	strd	r2, [r7]
	ldrd	r0, [r7, #64]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	strd	r2, [r7, #64]
.L133:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L134
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #1
	beq	.L134
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L135
.L134:
	ldr	r3, [r7]
	str	r3, [r7, #28]
	movs	r3, #32
	str	r3, [r7, #32]
	movs	r3, #64
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	mov	r3, #1024
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #28
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #32
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #55]
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L136
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	b	.L143
.L136:
	ldr	r3, [r7, #64]
	str	r3, [r7, #28]
	movs	r3, #33
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #28
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #33
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #55]
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L135
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	b	.L143
.L135:
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #38
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #28
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #38
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #55]
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L138
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	b	.L143
.L139:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L138:
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	bcc	.L139
	add	r3, r7, #23
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SD_IsCardProgramming
	mov	r3, r0
	strb	r3, [r7, #55]
	mov	r3, #-1
	str	r3, [r7, #48]
	b	.L140
.L142:
	add	r3, r7, #23
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	SD_IsCardProgramming
	mov	r3, r0
	strb	r3, [r7, #55]
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
.L140:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L141
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L141
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #7
	beq	.L142
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L142
.L141:
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
.L143:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L145:
	.align	2
.L144:
	.word	120000
	.size	HAL_SD_Erase, .-HAL_SD_Erase
	.section	.text.HAL_SD_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_SD_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_IRQHandler, %function
HAL_SD_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L147
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, #256
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #72]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r0, [r7, #4]
	bl	HAL_SD_XferCpltCallback
	b	.L148
.L147:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L149
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #2
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #76]
	ldr	r0, [r7, #4]
	bl	HAL_SD_XferErrorCallback
	b	.L148
.L149:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L150
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #8
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #4
	str	r2, [r3, #76]
	ldr	r0, [r7, #4]
	bl	HAL_SD_XferErrorCallback
	b	.L148
.L150:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L151
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #32
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #6
	str	r2, [r3, #76]
	ldr	r0, [r7, #4]
	bl	HAL_SD_XferErrorCallback
	b	.L148
.L151:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L152
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #16
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #5
	str	r2, [r3, #76]
	ldr	r0, [r7, #4]
	bl	HAL_SD_XferErrorCallback
	b	.L148
.L152:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L148
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, #512
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #7
	str	r2, [r3, #76]
	ldr	r0, [r7, #4]
	bl	HAL_SD_XferErrorCallback
.L148:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #60]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	bic	r3, r3, #49920
	bic	r3, r3, #58
	str	r3, [r2, #60]
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SD_IRQHandler, .-HAL_SD_IRQHandler
	.section	.text.HAL_SD_XferCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SD_XferCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_XferCpltCallback, %function
HAL_SD_XferCpltCallback:
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
	.size	HAL_SD_XferCpltCallback, .-HAL_SD_XferCpltCallback
	.section	.text.HAL_SD_XferErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_SD_XferErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_XferErrorCallback, %function
HAL_SD_XferErrorCallback:
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
	.size	HAL_SD_XferErrorCallback, .-HAL_SD_XferErrorCallback
	.section	.text.HAL_SD_DMA_RxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SD_DMA_RxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_DMA_RxCpltCallback, %function
HAL_SD_DMA_RxCpltCallback:
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
	.size	HAL_SD_DMA_RxCpltCallback, .-HAL_SD_DMA_RxCpltCallback
	.section	.text.HAL_SD_DMA_RxErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_SD_DMA_RxErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_DMA_RxErrorCallback, %function
HAL_SD_DMA_RxErrorCallback:
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
	.size	HAL_SD_DMA_RxErrorCallback, .-HAL_SD_DMA_RxErrorCallback
	.section	.text.HAL_SD_DMA_TxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SD_DMA_TxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_DMA_TxCpltCallback, %function
HAL_SD_DMA_TxCpltCallback:
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
	.size	HAL_SD_DMA_TxCpltCallback, .-HAL_SD_DMA_TxCpltCallback
	.section	.text.HAL_SD_DMA_TxErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_SD_DMA_TxErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_DMA_TxErrorCallback, %function
HAL_SD_DMA_TxErrorCallback:
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
	.size	HAL_SD_DMA_TxErrorCallback, .-HAL_SD_DMA_TxErrorCallback
	.section	.text.HAL_SD_Get_CardInfo,"ax",%progbits
	.align	1
	.global	HAL_SD_Get_CardInfo
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_Get_CardInfo, %function
HAL_SD_Get_CardInfo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #86]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #84]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	lsrs	r3, r3, #24
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #2]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	lsrs	r3, r3, #24
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxth	r3, r3
	lsls	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #4
	uxth	r3, r3
	and	r3, r3, #15
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #7
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #9]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #10]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #11]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #12]
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #13]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L160
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #1
	bne	.L161
.L160:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #10
	and	r2, r3, #3072
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #6
	and	r3, r3, #3
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #20]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #21]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #22]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #23]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	lsls	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #6
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #7
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	adds	r3, r3, #1
	mov	r2, r3
	mov	r3, #0
	ldr	r1, [r7]
	strd	r2, [r1, #72]
	ldr	r3, [r7]
	ldrb	r3, [r3, #24]
	uxtb	r3, r3
	adds	r3, r3, #2
	movs	r2, #1
	lsl	r3, r2, r3
	ldr	r2, [r7]
	ldrd	r0, [r2, #72]
	mov	r2, r3
	mov	r3, #0
	mul	r5, r2, r1
	mul	r4, r0, r3
	add	r4, r4, r5
	umull	r2, r3, r0, r2
	adds	r1, r4, r3
	mov	r3, r1
	ldr	r1, [r7]
	strd	r2, [r1, #72]
	ldr	r3, [r7]
	ldrb	r3, [r3, #8]
	uxtb	r3, r3
	mov	r2, r3
	movs	r3, #1
	lsl	r2, r3, r2
	ldr	r3, [r7]
	str	r2, [r3, #80]
	ldr	r3, [r7]
	ldrd	r0, [r3, #72]
	ldr	r3, [r7]
	ldr	r3, [r3, #80]
	mov	r2, r3
	mov	r3, #0
	mul	r5, r2, r1
	mul	r4, r0, r3
	add	r4, r4, r5
	umull	r2, r3, r0, r2
	adds	r1, r4, r3
	mov	r3, r1
	ldr	r1, [r7]
	strd	r2, [r1, #72]
	b	.L162
.L161:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L163
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #16
	and	r2, r3, #4128768
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	mov	r2, r3
	mov	r3, #0
	adds	r4, r2, #1
	adc	r5, r3, #0
	mov	r2, #0
	mov	r3, #0
	lsls	r3, r5, #19
	orr	r3, r3, r4, lsr #13
	lsls	r2, r4, #19
	ldr	r1, [r7]
	strd	r2, [r1, #72]
	ldr	r3, [r7]
	mov	r2, #512
	str	r2, [r3, #80]
	b	.L162
.L163:
	movs	r3, #41
	strb	r3, [r7, #15]
.L162:
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #25]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	lsls	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #126
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #26]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3, #26]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #7
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #26]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #27]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #7
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #28]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #29]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #30]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	lsls	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #12
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #31]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3, #31]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #31]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #32]
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #33]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #34]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #7
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #35]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #36]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #37]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #38]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #39]
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #41]
	ldr	r3, [r7]
	movs	r2, #1
	strb	r2, [r3, #42]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #46]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrh	r3, [r3, #46]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #8]
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #46]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsls	r2, r3, #24
	ldr	r3, [r7]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #48]
	ldr	r3, [r7, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #53]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsls	r2, r3, #24
	ldr	r3, [r7]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	lsrs	r3, r3, #24
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrb	r3, [r3, #60]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #60]
	ldr	r3, [r7, #8]
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	and	r3, r3, #3840
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	lsrs	r3, r3, #8
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldrh	r3, [r3, #62]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #8]
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #64]
	ldr	r3, [r7]
	movs	r2, #1
	strb	r2, [r3, #65]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	HAL_SD_Get_CardInfo, .-HAL_SD_Get_CardInfo
	.section	.text.HAL_SD_WideBusOperation_Config,"ax",%progbits
	.align	1
	.global	HAL_SD_WideBusOperation_Config
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_WideBusOperation_Config, %function
HAL_SD_WideBusOperation_Config:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #16
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #39]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #3
	bne	.L166
	movs	r3, #39
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L174
.L166:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L168
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #1
	beq	.L168
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L169
.L168:
	ldr	r3, [r7]
	cmp	r3, #4096
	bne	.L170
	movs	r3, #39
	strb	r3, [r7, #39]
	b	.L171
.L170:
	ldr	r3, [r7]
	cmp	r3, #2048
	bne	.L172
	ldr	r0, [r7, #4]
	bl	SD_WideBus_Enable
	mov	r3, r0
	strb	r3, [r7, #39]
	b	.L171
.L172:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L173
	ldr	r0, [r7, #4]
	bl	SD_WideBus_Disable
	mov	r3, r0
	strb	r3, [r7, #39]
	b	.L171
.L173:
	movs	r3, #38
	strb	r3, [r7, #39]
.L171:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L169
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r5, [r3]
	mov	r4, sp
	add	r3, r7, #24
	ldm	r3, {r0, r1, r2}
	stm	r4, {r0, r1, r2}
	add	r3, r7, #12
	ldm	r3, {r1, r2, r3}
	mov	r0, r5
	bl	SDIO_Init
.L169:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
.L174:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	HAL_SD_WideBusOperation_Config, .-HAL_SD_WideBusOperation_Config
	.section	.text.HAL_SD_StopTransfer,"ax",%progbits
	.align	1
	.global	HAL_SD_StopTransfer
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_StopTransfer, %function
HAL_SD_StopTransfer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #31]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #12
	str	r3, [r7, #12]
	movs	r3, #64
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	mov	r3, #1024
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #12
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #31]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SD_StopTransfer, .-HAL_SD_StopTransfer
	.section	.text.HAL_SD_HighSpeed,"ax",%progbits
	.align	1
	.global	HAL_SD_HighSpeed
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_HighSpeed, %function
HAL_SD_HighSpeed:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #148
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #143]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #24
	movs	r2, #60
	movs	r1, #0
	mov	r0, r3
	bl	memset
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #128]
	movs	r3, #0
	str	r3, [r7, #136]
	add	r3, r7, #20
	str	r3, [r7, #132]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #44]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	SD_FindSCR
	mov	r3, r0
	strb	r3, [r7, #143]
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L178
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	b	.L194
.L178:
	ldr	r3, [r7, #16]
	and	r3, r3, #50331648
	str	r3, [r7, #128]
	ldr	r3, [r7, #128]
	cmp	r3, #0
	beq	.L180
	movs	r3, #64
	str	r3, [r7, #108]
	movs	r3, #16
	str	r3, [r7, #112]
	movs	r3, #64
	str	r3, [r7, #116]
	movs	r3, #0
	str	r3, [r7, #120]
	mov	r3, #1024
	str	r3, [r7, #124]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #108
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #143]
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L181
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	b	.L194
.L181:
	mov	r3, #-1
	str	r3, [r7, #84]
	movs	r3, #64
	str	r3, [r7, #88]
	movs	r3, #96
	str	r3, [r7, #92]
	movs	r3, #2
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #100]
	movs	r3, #1
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #84
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_DataConfig
	ldr	r3, .L195
	str	r3, [r7, #108]
	movs	r3, #6
	str	r3, [r7, #112]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #108
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #6
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #143]
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L183
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	b	.L194
.L186:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L183
	movs	r3, #0
	str	r3, [r7, #136]
	b	.L184
.L185:
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #136]
	lsls	r3, r3, #2
	ldr	r2, [r7, #132]
	adds	r4, r2, r3
	mov	r0, r1
	bl	SDIO_ReadFIFO
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #136]
	adds	r3, r3, #1
	str	r3, [r7, #136]
.L184:
	ldr	r3, [r7, #136]
	cmp	r3, #7
	bls	.L185
	ldr	r3, [r7, #132]
	adds	r3, r3, #32
	str	r3, [r7, #132]
.L183:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	movw	r3, #1578
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L186
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #8
	str	r2, [r3, #56]
	movs	r3, #4
	strb	r3, [r7, #143]
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	b	.L194
.L187:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L188
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #2
	str	r2, [r3, #56]
	movs	r3, #2
	strb	r3, [r7, #143]
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	b	.L194
.L188:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #32
	str	r2, [r3, #56]
	movs	r3, #6
	strb	r3, [r7, #143]
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	b	.L194
.L189:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L190
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, #512
	str	r2, [r3, #56]
	movs	r3, #7
	strb	r3, [r7, #143]
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
	b	.L194
.L190:
	mov	r3, #-1
	str	r3, [r7, #136]
	b	.L191
.L193:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_ReadFIFO
	mov	r2, r0
	ldr	r3, [r7, #132]
	str	r2, [r3]
	ldr	r3, [r7, #132]
	adds	r3, r3, #4
	str	r3, [r7, #132]
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #136]
.L191:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2097152
	cmp	r3, #0
	beq	.L192
	ldr	r3, [r7, #136]
	cmp	r3, #0
	bne	.L193
.L192:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldrb	r3, [r7, #33]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L180
	movs	r3, #39
	strb	r3, [r7, #143]
.L180:
	ldrb	r3, [r7, #143]	@ zero_extendqisi2
.L194:
	mov	r0, r3
	adds	r7, r7, #148
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L196:
	.align	2
.L195:
	.word	-2130706687
	.size	HAL_SD_HighSpeed, .-HAL_SD_HighSpeed
	.section	.text.HAL_SD_SendSDStatus,"ax",%progbits
	.align	1
	.global	HAL_SD_SendSDStatus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_SendSDStatus, %function
HAL_SD_SendSDStatus:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #59]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r0, #0
	bl	SDIO_GetResponse
	mov	r3, r0
	and	r3, r3, #33554432
	cmp	r3, #33554432
	bne	.L198
	movs	r3, #14
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	b	.L214
.L198:
	movs	r3, #64
	str	r3, [r7, #36]
	movs	r3, #16
	str	r3, [r7, #40]
	movs	r3, #64
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #48]
	mov	r3, #1024
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #36
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L200
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	b	.L214
.L200:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #36]
	movs	r3, #55
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #36
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #55
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L201
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	b	.L214
.L201:
	mov	r3, #-1
	str	r3, [r7, #12]
	movs	r3, #64
	str	r3, [r7, #16]
	movs	r3, #96
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_DataConfig
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #13
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #36
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #13
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L203
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	b	.L214
.L206:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L203
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L204
.L205:
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	adds	r4, r2, r3
	mov	r0, r1
	bl	SDIO_ReadFIFO
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L204:
	ldr	r3, [r7, #60]
	cmp	r3, #7
	bls	.L205
	ldr	r3, [r7]
	adds	r3, r3, #32
	str	r3, [r7]
.L203:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	movw	r3, #1578
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L206
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L207
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #8
	str	r2, [r3, #56]
	movs	r3, #4
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	b	.L214
.L207:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L208
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #2
	str	r2, [r3, #56]
	movs	r3, #2
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	b	.L214
.L208:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L209
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #32
	str	r2, [r3, #56]
	movs	r3, #6
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	b	.L214
.L209:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L210
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, #512
	str	r2, [r3, #56]
	movs	r3, #7
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	b	.L214
.L210:
	mov	r3, #-1
	str	r3, [r7, #60]
	b	.L211
.L213:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_ReadFIFO
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #4
	str	r3, [r7]
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
.L211:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2097152
	cmp	r3, #0
	beq	.L212
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L213
.L212:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
.L214:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	HAL_SD_SendSDStatus, .-HAL_SD_SendSDStatus
	.section	.text.HAL_SD_GetStatus,"ax",%progbits
	.align	1
	.global	HAL_SD_GetStatus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_GetStatus, %function
HAL_SD_GetStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #4
	strb	r3, [r7, #15]
	ldr	r0, [r7, #4]
	bl	SD_GetState
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L216
	movs	r3, #0
	b	.L217
.L216:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L218
	movs	r3, #2
	b	.L217
.L218:
	movs	r3, #1
.L217:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SD_GetStatus, .-HAL_SD_GetStatus
	.section	.text.HAL_SD_GetCardStatus,"ax",%progbits
	.align	1
	.global	HAL_SD_GetCardStatus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SD_GetCardStatus, %function
HAL_SD_GetCardStatus:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #79]
	movs	r3, #0
	str	r3, [r7, #72]
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	HAL_SD_SendSDStatus
	mov	r3, r0
	strb	r3, [r7, #79]
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L220
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
	b	.L222
.L220:
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #6
	and	r3, r3, #3
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #5
	and	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #1]
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #20]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #72]
	uxtb	r3, r3
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #24]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #36]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #72]
	uxtb	r2, r2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #40]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #8]
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #9]
	ldr	r3, [r7, #48]
	lsrs	r3, r3, #4
	and	r3, r3, #15
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #10]
	ldr	r3, [r7, #52]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #56]
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7]
	ldrh	r3, [r3, #12]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #72]
	uxtb	r3, r3
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #60]
	lsrs	r3, r3, #2
	and	r3, r3, #63
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #14]
	ldr	r3, [r7, #60]
	and	r3, r3, #3
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #15]
	ldrb	r3, [r7, #79]	@ zero_extendqisi2
.L222:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SD_GetCardStatus, .-HAL_SD_GetCardStatus
	.section	.text.SD_DMA_RxCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_DMA_RxCplt, %function
SD_DMA_RxCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #80]
	nop
.L224:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L224
	ldr	r0, [r7, #4]
	bl	HAL_DMA_Abort
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	mov	r0, r3
	bl	HAL_SD_DMA_RxCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_DMA_RxCplt, .-SD_DMA_RxCplt
	.section	.text.SD_DMA_RxError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_DMA_RxError, %function
SD_DMA_RxError:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	mov	r0, r3
	bl	HAL_SD_DMA_RxErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_DMA_RxError, .-SD_DMA_RxError
	.section	.text.SD_DMA_TxCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_DMA_TxCplt, %function
SD_DMA_TxCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #80]
	nop
.L227:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L227
	ldr	r0, [r7, #4]
	bl	HAL_DMA_Abort
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	mov	r0, r3
	bl	HAL_SD_DMA_TxCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_DMA_TxCplt, .-SD_DMA_TxCplt
	.section	.text.SD_DMA_TxError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_DMA_TxError, %function
SD_DMA_TxError:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	mov	r0, r3
	bl	HAL_SD_DMA_TxErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_DMA_TxError, .-SD_DMA_TxError
	.section	.text.SD_GetState,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_GetState, %function
SD_GetState:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	SD_SendStatus
	mov	r3, r0
	cmp	r3, #0
	beq	.L230
	movs	r3, #255
	b	.L232
.L230:
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #9
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r3, r3
.L232:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_GetState, .-SD_GetState
	.section	.text.SD_Initialize_Cards,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_Initialize_Cards, %function
SD_Initialize_Cards:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #39]
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_GetPowerState
	mov	r3, r0
	cmp	r3, #0
	bne	.L234
	movs	r3, #37
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L242
.L234:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #4
	beq	.L236
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #2
	str	r3, [r7, #20]
	movs	r3, #192
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	mov	r3, #1024
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r0, [r7, #4]
	bl	SD_CmdResp2Error
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L237
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L242
.L237:
	movs	r0, #0
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	movs	r0, #4
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	movs	r0, #8
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	movs	r0, #12
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #68]
.L236:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L238
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #1
	beq	.L238
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #6
	beq	.L238
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #2
	bne	.L239
.L238:
	movs	r3, #3
	str	r3, [r7, #20]
	movs	r3, #64
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	add	r3, r7, #14
	mov	r2, r3
	movs	r1, #3
	ldr	r0, [r7, #4]
	bl	SD_CmdResp6Error
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L239
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L242
.L239:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #4
	beq	.L240
	ldrh	r3, [r7, #14]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	movs	r3, #9
	str	r3, [r7, #20]
	movs	r3, #192
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r0, [r7, #4]
	bl	SD_CmdResp2Error
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L241
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L242
.L241:
	movs	r0, #0
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	movs	r0, #4
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	movs	r0, #8
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	movs	r0, #12
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #52]
.L240:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
.L242:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_Initialize_Cards, .-SD_Initialize_Cards
	.section	.text.SD_Select_Deselect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_Select_Deselect, %function
SD_Select_Deselect:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	strd	r2, [r7]
	movs	r3, #0
	strb	r3, [r7, #39]
	ldr	r3, [r7]
	str	r3, [r7, #16]
	movs	r3, #7
	str	r3, [r7, #20]
	movs	r3, #64
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	mov	r3, #1024
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #7
	ldr	r0, [r7, #12]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_Select_Deselect, .-SD_Select_Deselect
	.section	.text.SD_PowerON,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_PowerON, %function
SD_PowerON:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #11]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, .L259
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_PowerState_ON
	movs	r0, #1
	bl	HAL_Delay
	ldr	r3, .L259
	movs	r2, #1
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	mov	r3, #1024
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r0, [r7, #4]
	bl	SD_CmdError
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L246
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	b	.L258
.L246:
	mov	r3, #426
	str	r3, [r7, #12]
	movs	r3, #8
	str	r3, [r7, #16]
	movs	r3, #64
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r0, [r7, #4]
	bl	SD_CmdResp7Error
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L248
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #32]
	mov	r3, #1073741824
	str	r3, [r7, #32]
.L248:
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #55
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #55
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L249
	b	.L250
.L256:
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #55
	str	r3, [r7, #16]
	movs	r3, #64
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	mov	r3, #1024
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #55
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L251
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	b	.L258
.L251:
	ldr	r3, [r7, #32]
	orr	r3, r3, #-2147483648
	orr	r3, r3, #1048576
	str	r3, [r7, #12]
	movs	r3, #41
	str	r3, [r7, #16]
	movs	r3, #64
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	mov	r3, #1024
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	ldr	r0, [r7, #4]
	bl	SD_CmdResp3Error
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L252
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	b	.L258
.L252:
	movs	r0, #0
	bl	SDIO_GetResponse
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	lsrs	r3, r3, #31
	cmp	r3, #1
	bne	.L253
	movs	r3, #1
	b	.L254
.L253:
	movs	r3, #0
.L254:
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L250:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L255
	ldr	r3, [r7, #40]
	movw	r2, #65534
	cmp	r3, r2
	bls	.L256
.L255:
	ldr	r3, [r7, #40]
	movw	r2, #65534
	cmp	r3, r2
	bls	.L257
	movs	r3, #27
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
	b	.L258
.L257:
	ldr	r3, [r7, #44]
	and	r3, r3, #1073741824
	cmp	r3, #0
	beq	.L249
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #32]
.L249:
	ldrb	r3, [r7, #11]
	uxtb	r3, r3
.L258:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L260:
	.align	2
.L259:
	.word	1109754016
	.size	SD_PowerON, .-SD_PowerON
	.section	.text.SD_PowerOFF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_PowerOFF, %function
SD_PowerOFF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_PowerState_OFF
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_PowerOFF, .-SD_PowerOFF
	.section	.text.SD_SendStatus,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_SendStatus, %function
SD_SendStatus:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L264
	movs	r3, #38
	strb	r3, [r7, #31]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	b	.L267
.L264:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #8]
	movs	r3, #13
	str	r3, [r7, #12]
	movs	r3, #64
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	mov	r3, #1024
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #13
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #31]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L266
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	b	.L267
.L266:
	movs	r0, #0
	bl	SDIO_GetResponse
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L267:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_SendStatus, .-SD_SendStatus
	.section	.text.SD_CmdError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_CmdError, %function
SD_CmdError:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	mov	r3, #65536
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #128
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	b	.L269
.L271:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #128
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L269:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L270
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L271
.L270:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L272
	movs	r3, #3
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L273
.L272:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L273:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SD_CmdError, .-SD_CmdError
	.section	.text.SD_CmdResp7Error,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_CmdResp7Error, %function
SD_CmdResp7Error:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #41
	strb	r3, [r7, #15]
	mov	r3, #65536
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #69
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	b	.L275
.L277:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #69
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L275:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L276
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L277
.L276:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #4
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L278
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L279
.L278:
	movs	r3, #3
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L280
.L279:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L281
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #64
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L280
.L281:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L280:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SD_CmdResp7Error, .-SD_CmdResp7Error
	.section	.text.SD_CmdResp1Error,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_CmdResp1Error, %function
SD_CmdResp1Error:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L283:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #69
	cmp	r3, #0
	beq	.L283
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L284
	movs	r3, #3
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L285
.L284:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L286
	movs	r3, #1
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L285
.L286:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_GetCommandResponse
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L287
	movs	r3, #16
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L285
.L287:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	movs	r0, #0
	bl	SDIO_GetResponse
	str	r0, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, .L308
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L288
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L285
.L288:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L289
	movs	r3, #28
	b	.L285
.L289:
	ldr	r3, [r7, #8]
	and	r3, r3, #1073741824
	cmp	r3, #0
	beq	.L290
	movs	r3, #9
	b	.L285
.L290:
	ldr	r3, [r7, #8]
	and	r3, r3, #536870912
	cmp	r3, #0
	beq	.L291
	movs	r3, #10
	b	.L285
.L291:
	ldr	r3, [r7, #8]
	and	r3, r3, #268435456
	cmp	r3, #0
	beq	.L292
	movs	r3, #11
	b	.L285
.L292:
	ldr	r3, [r7, #8]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L293
	movs	r3, #12
	b	.L285
.L293:
	ldr	r3, [r7, #8]
	and	r3, r3, #67108864
	cmp	r3, #0
	beq	.L294
	movs	r3, #13
	b	.L285
.L294:
	ldr	r3, [r7, #8]
	and	r3, r3, #16777216
	cmp	r3, #0
	beq	.L295
	movs	r3, #14
	b	.L285
.L295:
	ldr	r3, [r7, #8]
	and	r3, r3, #8388608
	cmp	r3, #0
	beq	.L296
	movs	r3, #15
	b	.L285
.L296:
	ldr	r3, [r7, #8]
	and	r3, r3, #4194304
	cmp	r3, #0
	beq	.L297
	movs	r3, #16
	b	.L285
.L297:
	ldr	r3, [r7, #8]
	and	r3, r3, #2097152
	cmp	r3, #0
	beq	.L298
	movs	r3, #17
	b	.L285
.L298:
	ldr	r3, [r7, #8]
	and	r3, r3, #1048576
	cmp	r3, #0
	beq	.L299
	movs	r3, #18
	b	.L285
.L299:
	ldr	r3, [r7, #8]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L300
	movs	r3, #19
	b	.L285
.L300:
	ldr	r3, [r7, #8]
	and	r3, r3, #262144
	cmp	r3, #0
	beq	.L301
	movs	r3, #20
	b	.L285
.L301:
	ldr	r3, [r7, #8]
	and	r3, r3, #131072
	cmp	r3, #0
	beq	.L302
	movs	r3, #21
	b	.L285
.L302:
	ldr	r3, [r7, #8]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L303
	movs	r3, #22
	b	.L285
.L303:
	ldr	r3, [r7, #8]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L304
	movs	r3, #23
	b	.L285
.L304:
	ldr	r3, [r7, #8]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L305
	movs	r3, #24
	b	.L285
.L305:
	ldr	r3, [r7, #8]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L306
	movs	r3, #25
	b	.L285
.L306:
	ldr	r3, [r7, #8]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L307
	movs	r3, #26
	b	.L285
.L307:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L285:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L309:
	.align	2
.L308:
	.word	-33562616
	.size	SD_CmdResp1Error, .-SD_CmdResp1Error
	.section	.text.SD_CmdResp3Error,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_CmdResp3Error, %function
SD_CmdResp3Error:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L311:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #69
	cmp	r3, #0
	beq	.L311
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L312
	movs	r3, #3
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L313
.L312:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L313:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SD_CmdResp3Error, .-SD_CmdResp3Error
	.section	.text.SD_CmdResp2Error,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_CmdResp2Error, %function
SD_CmdResp2Error:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	nop
.L315:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #69
	cmp	r3, #0
	beq	.L315
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L316
	movs	r3, #3
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L317
.L316:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L318
	movs	r3, #1
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	b	.L317
.L318:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L317:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SD_CmdResp2Error, .-SD_CmdResp2Error
	.section	.text.SD_CmdResp6Error,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_CmdResp6Error, %function
SD_CmdResp6Error:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	movs	r3, #0
	strb	r3, [r7, #23]
	nop
.L320:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #69
	cmp	r3, #0
	beq	.L320
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L321
	movs	r3, #3
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #4
	str	r2, [r3, #56]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L321:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L323
	movs	r3, #1
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #56]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L323:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_GetCommandResponse
	mov	r3, r0
	mov	r2, r3
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L324
	movs	r3, #16
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L324:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	movs	r0, #0
	bl	SDIO_GetResponse
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	and	r3, r3, #57344
	cmp	r3, #0
	bne	.L325
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	b	.L322
.L325:
	ldr	r3, [r7, #16]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L326
	movs	r3, #19
	b	.L322
.L326:
	ldr	r3, [r7, #16]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L327
	movs	r3, #16
	b	.L322
.L327:
	ldr	r3, [r7, #16]
	and	r3, r3, #32768
	cmp	r3, #0
	beq	.L328
	movs	r3, #15
	b	.L322
.L328:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L322:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_CmdResp6Error, .-SD_CmdResp6Error
	.section	.text.SD_WideBus_Enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_WideBus_Enable, %function
SD_WideBus_Enable:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #39]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r0, #0
	bl	SDIO_GetResponse
	mov	r3, r0
	and	r3, r3, #33554432
	cmp	r3, #33554432
	bne	.L330
	movs	r3, #14
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L336
.L330:
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	SD_FindSCR
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L332
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L336
.L332:
	ldr	r3, [r7, #12]
	and	r3, r3, #262144
	cmp	r3, #0
	beq	.L333
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	movs	r3, #55
	str	r3, [r7, #20]
	movs	r3, #64
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	mov	r3, #1024
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #55
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L334
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L336
.L334:
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #6
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #6
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L335
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L336
.L335:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L336
.L333:
	movs	r3, #37
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
.L336:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_WideBus_Enable, .-SD_WideBus_Enable
	.section	.text.SD_WideBus_Disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_WideBus_Disable, %function
SD_WideBus_Disable:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #39]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r0, #0
	bl	SDIO_GetResponse
	mov	r3, r0
	and	r3, r3, #33554432
	cmp	r3, #33554432
	bne	.L338
	movs	r3, #14
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L344
.L338:
	add	r3, r7, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	SD_FindSCR
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L340
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L344
.L340:
	ldr	r3, [r7, #12]
	and	r3, r3, #65536
	cmp	r3, #0
	beq	.L341
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	movs	r3, #55
	str	r3, [r7, #20]
	movs	r3, #64
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	mov	r3, #1024
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #55
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L342
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L344
.L342:
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #6
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #6
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L343
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L344
.L343:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L344
.L341:
	movs	r3, #37
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
.L344:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SD_WideBus_Disable, .-SD_WideBus_Disable
	.section	.text.SD_FindSCR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_FindSCR, %function
SD_FindSCR:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #67]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #8
	str	r3, [r7, #44]
	movs	r3, #16
	str	r3, [r7, #48]
	movs	r3, #64
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #56]
	mov	r3, #1024
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #44
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #67]
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L346
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	b	.L356
.L346:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #44]
	movs	r3, #55
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #44
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #55
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #67]
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L348
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	b	.L356
.L348:
	mov	r3, #-1
	str	r3, [r7, #20]
	movs	r3, #8
	str	r3, [r7, #24]
	movs	r3, #48
	str	r3, [r7, #28]
	movs	r3, #2
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #20
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_DataConfig
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #51
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #44
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	movs	r1, #51
	ldr	r0, [r7, #4]
	bl	SD_CmdResp1Error
	mov	r3, r0
	strb	r3, [r7, #67]
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L350
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	b	.L356
.L351:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2097152
	cmp	r3, #0
	beq	.L350
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #68]
	lsls	r3, r3, #2
	add	r2, r7, #12
	adds	r4, r2, r3
	mov	r0, r1
	bl	SDIO_ReadFIFO
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L350:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	movw	r3, #1578
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L351
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L352
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #8
	str	r2, [r3, #56]
	movs	r3, #4
	strb	r3, [r7, #67]
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	b	.L356
.L352:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L353
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #2
	str	r2, [r3, #56]
	movs	r3, #2
	strb	r3, [r7, #67]
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	b	.L356
.L353:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L354
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #32
	str	r2, [r3, #56]
	movs	r3, #6
	strb	r3, [r7, #67]
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	b	.L356
.L354:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L355
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, #512
	str	r2, [r3, #56]
	movs	r3, #7
	strb	r3, [r7, #67]
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	b	.L356
.L355:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #24
	ldr	r3, [r7, #12]
	lsls	r3, r3, #8
	and	r3, r3, #16711680
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #8
	and	r3, r3, #65280
	orr	r1, r2, r3
	ldr	r3, [r7, #12]
	lsrs	r2, r3, #24
	ldr	r3, [r7]
	adds	r3, r3, #4
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #16]
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	lsls	r3, r3, #8
	and	r3, r3, #16711680
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #8
	and	r3, r3, #65280
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #24
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
.L356:
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	SD_FindSCR, .-SD_FindSCR
	.section	.text.SD_IsCardProgramming,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SD_IsCardProgramming, %function
SD_IsCardProgramming:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #39]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #16]
	movs	r3, #13
	str	r3, [r7, #20]
	movs	r3, #64
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	mov	r3, #1024
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	SDIO_SendCommand
	nop
.L358:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #69
	cmp	r3, #0
	beq	.L358
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L359
	movs	r3, #3
	strb	r3, [r7, #39]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	str	r2, [r3, #56]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L383
.L359:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #52]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L361
	movs	r3, #1
	strb	r3, [r7, #39]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #56]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L383
.L361:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	SDIO_GetCommandResponse
	mov	r3, r0
	cmp	r3, #13
	beq	.L362
	movs	r3, #16
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L383
.L362:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #1535
	str	r2, [r3, #56]
	movs	r0, #0
	bl	SDIO_GetResponse
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #9
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, .L384
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L363
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	b	.L383
.L363:
	ldr	r3, [r7, #12]
	and	r3, r3, #-2147483648
	cmp	r3, #-2147483648
	bne	.L364
	movs	r3, #28
	b	.L383
.L364:
	ldr	r3, [r7, #12]
	and	r3, r3, #1073741824
	cmp	r3, #1073741824
	bne	.L365
	movs	r3, #9
	b	.L383
.L365:
	ldr	r3, [r7, #12]
	and	r3, r3, #536870912
	cmp	r3, #536870912
	bne	.L366
	movs	r3, #10
	b	.L383
.L366:
	ldr	r3, [r7, #12]
	and	r3, r3, #268435456
	cmp	r3, #268435456
	bne	.L367
	movs	r3, #11
	b	.L383
.L367:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #134217728
	bne	.L368
	movs	r3, #12
	b	.L383
.L368:
	ldr	r3, [r7, #12]
	and	r3, r3, #67108864
	cmp	r3, #67108864
	bne	.L369
	movs	r3, #13
	b	.L383
.L369:
	ldr	r3, [r7, #12]
	and	r3, r3, #16777216
	cmp	r3, #16777216
	bne	.L370
	movs	r3, #14
	b	.L383
.L370:
	ldr	r3, [r7, #12]
	and	r3, r3, #8388608
	cmp	r3, #8388608
	bne	.L371
	movs	r3, #15
	b	.L383
.L371:
	ldr	r3, [r7, #12]
	and	r3, r3, #4194304
	cmp	r3, #4194304
	bne	.L372
	movs	r3, #16
	b	.L383
.L372:
	ldr	r3, [r7, #12]
	and	r3, r3, #2097152
	cmp	r3, #2097152
	bne	.L373
	movs	r3, #17
	b	.L383
.L373:
	ldr	r3, [r7, #12]
	and	r3, r3, #1048576
	cmp	r3, #1048576
	bne	.L374
	movs	r3, #18
	b	.L383
.L374:
	ldr	r3, [r7, #12]
	and	r3, r3, #524288
	cmp	r3, #524288
	bne	.L375
	movs	r3, #19
	b	.L383
.L375:
	ldr	r3, [r7, #12]
	and	r3, r3, #262144
	cmp	r3, #262144
	bne	.L376
	movs	r3, #20
	b	.L383
.L376:
	ldr	r3, [r7, #12]
	and	r3, r3, #131072
	cmp	r3, #131072
	bne	.L377
	movs	r3, #21
	b	.L383
.L377:
	ldr	r3, [r7, #12]
	and	r3, r3, #65536
	cmp	r3, #65536
	bne	.L378
	movs	r3, #22
	b	.L383
.L378:
	ldr	r3, [r7, #12]
	and	r3, r3, #32768
	cmp	r3, #32768
	bne	.L379
	movs	r3, #23
	b	.L383
.L379:
	ldr	r3, [r7, #12]
	and	r3, r3, #16384
	cmp	r3, #16384
	bne	.L380
	movs	r3, #24
	b	.L383
.L380:
	ldr	r3, [r7, #12]
	and	r3, r3, #8192
	cmp	r3, #8192
	bne	.L381
	movs	r3, #25
	b	.L383
.L381:
	ldr	r3, [r7, #12]
	and	r3, r3, #8
	cmp	r3, #8
	bne	.L382
	movs	r3, #26
	b	.L383
.L382:
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
.L383:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L385:
	.align	2
.L384:
	.word	-33562616
	.size	SD_IsCardProgramming, .-SD_IsCardProgramming
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"

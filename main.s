	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	setupSounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L3
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L7+8
	ldr	r2, [r2]
	ldr	r7, .L7+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #20]
	mov	r1, r0
	ldr	r2, .L7+16
	mov	r3, #910163968
	mov	r0, #1
	ldr	r4, .L7+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #2]	@ movhi
	mov	r1, r6
	ldr	r3, .L7+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	ldr	r4, .L7+28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	strh	r0, [r7]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	mov	r0, r8
	ldr	r7, .L7+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	str	r3, [r4, #12]
	str	r10, [r4, #16]
	mov	lr, pc
	bx	r7
	ldr	r8, .L7+36
	adr	r3, .L7
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L7+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L7+44
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L8:
	.align	3
.L7:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109024
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L11+8
	ldr	r2, [r2]
	ldr	r7, .L11+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #32]
	mov	r1, r0
	ldr	r2, .L11+16
	mov	r3, #910163968
	mov	r0, #2
	ldr	r4, .L11+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #6]	@ movhi
	mov	r1, r6
	ldr	r3, .L11+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	ldr	r4, .L11+28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	strh	r0, [r7, #4]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	mov	r0, r8
	ldr	r7, .L11+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	str	r3, [r4, #12]
	str	r10, [r4, #16]
	mov	lr, pc
	bx	r7
	ldr	r8, .L11+36
	adr	r3, .L11
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L11+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L11+44
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L12:
	.align	3
.L11:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109028
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L32
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L27
	ldr	r0, .L32+4
	ldr	r3, [r0, #12]
	cmp	r3, r2
	push	{r4, lr}
	beq	.L16
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #28]
	blt	.L16
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L30
	ldr	r2, .L32+8
	ldr	r1, .L32+12
	ldr	r2, [r2]
	strh	r3, [r1, #2]	@ movhi
	str	r3, [r0, #12]
	str	r3, [r2, #20]
.L16:
	ldr	r0, .L32+16
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #28]
	blt	.L20
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L31
	ldr	r2, .L32+8
	ldr	r1, .L32+12
	ldr	r2, [r2]
	strh	r3, [r1, #6]	@ movhi
	str	r3, [r0, #12]
	str	r3, [r2, #32]
.L20:
	mov	r2, #1
	ldr	r3, .L32
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #1
	ldr	r3, .L32
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L27:
	mov	r2, #1
	ldr	r3, .L32
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L30:
	ldm	r0, {r0, r1, r2}
	bl	playSoundA
	b	.L16
.L31:
	ldm	r0, {r0, r1, r2}
	bl	playSoundB
	b	.L20
.L33:
	.align	2
.L32:
	.word	67109376
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	pauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L35
	ldr	r0, .L35+4
	ldr	r1, .L35+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	bx	lr
.L36:
	.align	2
.L35:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L38
	ldr	ip, .L38+4
	ldr	r0, .L38+8
	strh	r1, [r2, #6]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #2]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L39:
	.align	2
.L38:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L41
	ldr	ip, .L41+4
	ldr	r1, [r2]
	ldr	r0, .L41+8
	ldr	r2, .L41+12
	str	r3, [r1, #20]
	str	r3, [ip, #12]
	str	r3, [r1, #32]
	str	r3, [r0, #12]
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	bx	lr
.L42:
	.align	2
.L41:
	.word	dma
	.word	soundA
	.word	soundB
	.word	67109120
	.size	stopSound, .-stopSound
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldrh	r1, [r0, #4]
	ldr	r3, .L45
	orr	r1, r1, #8
	ldrh	r2, [r3]
	ldr	ip, .L45+4
	strh	r1, [r0, #4]	@ movhi
	ldr	r1, .L45+8
	orr	r2, r2, lr
	strh	lr, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [ip, #4092]
	bx	lr
.L46:
	.align	2
.L45:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	goToInstr
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstr, %function
goToInstr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L49
	mov	lr, pc
	bx	r5
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L49+8
	ldr	r3, .L49+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L49+16
	ldr	r3, .L49+20
	mov	r2, #100663296
	ldr	r1, .L49+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L49+28
	ldr	r1, .L49+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r4, #0
	mov	r1, #57088
	mov	r2, #2048
	strh	r1, [r3, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r2, #5
	ldr	r1, .L49+36
	ldr	r3, .L49+40
	str	r4, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	hideSprites
	.word	waitForVBlank
	.word	INSTR2Pal
	.word	loadPalette
	.word	DMANow
	.word	4208
	.word	INSTR2Tiles
	.word	100726784
	.word	INSTR2Map
	.word	seed
	.word	state
	.size	goToInstr, .-goToInstr
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r0, .L53
	mov	r3, #1
	ldr	r2, .L53+4
	ldr	r1, .L53+8
	bl	playSoundA
	mov	r1, #1
	ldr	r2, .L53+12
	ldr	r3, .L53+16
	ldr	r5, .L53+20
	stm	r3, {r1, r2}
	mov	lr, pc
	bx	r5
	ldr	r3, .L53+24
	mov	lr, pc
	bx	r3
	ldr	r0, .L53+28
	ldr	r3, .L53+32
	mov	lr, pc
	bx	r3
	ldr	r4, .L53+36
	ldr	r3, .L53+40
	ldr	r2, .L53+44
	ldr	r1, .L53+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L53+52
	ldr	r1, .L53+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r4, #0
	mov	r1, #2048
	ldr	r2, .L53+60
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	strh	r4, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r2, .L53+64
	ldr	r3, .L53+68
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L54:
	.align	2
.L53:
	.word	TRACK3
	.word	11025
	.word	560640
	.word	30000
	.word	.LANCHOR0
	.word	hideSprites
	.word	waitForVBlank
	.word	TITLEPal
	.word	loadPalette
	.word	DMANow
	.word	7600
	.word	100696064
	.word	TITLETiles
	.word	100718592
	.word	TITLEMap
	.word	-9464
	.word	seed
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	goToStart
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L58
	ldr	r1, .L58+4
	mov	r3, #1
	ldr	r0, .L58+8
	bl	playSoundA
	ldr	r0, .L58+12
	ldr	r3, .L58+16
	ldr	r4, .L58+20
	mov	lr, pc
	bx	r3
	mov	r3, #1376
	mov	r2, #100663296
	ldr	r1, .L58+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L58+28
	ldr	r1, .L58+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1712
	ldr	r2, .L58+36
	ldr	r1, .L58+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L58+44
	ldr	r1, .L58+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #48
	ldr	r2, .L58+52
	ldr	r1, .L58+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L58+60
	ldr	r1, .L58+64
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L58+68
	ldr	r1, .L58+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L58+76
	ldr	r1, .L58+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	lr, #7936
	mov	r2, #0
	mov	ip, #4864
	mov	r0, #1
	ldr	r1, .L58+84
	strh	lr, [r3, #10]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	lr, .L58+88
	ldr	r1, .L58+92
	strh	lr, [r3, #12]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	str	r0, [r1]
	bx	lr
.L59:
	.align	2
.L58:
	.word	11025
	.word	560640
	.word	TRACK1
	.word	back22Pal
	.word	loadPalette
	.word	DMANow
	.word	bg1Tiles
	.word	100726784
	.word	bg1Map
	.word	100679680
	.word	back22Tiles
	.word	100722688
	.word	back22Map
	.word	100696064
	.word	stateScreenTiles
	.word	100718592
	.word	stateScreenMap
	.word	100728832
	.word	spritesTiles
	.word	83886592
	.word	spritesPal
	.word	23812
	.word	-9464
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L62
	mov	lr, pc
	bx	r4
	ldr	r3, .L62+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L62+8
	ldr	r3, .L62+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L62+16
	mov	r3, #4864
	ldr	r2, .L62+20
	ldr	r1, .L62+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L62+28
	ldr	r1, .L62+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	r1, #2048
	ldr	r2, .L62+36
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L62+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L63:
	.align	2
.L62:
	.word	hideSprites
	.word	waitForVBlank
	.word	pause3Pal
	.word	loadPalette
	.word	DMANow
	.word	100696064
	.word	pause3Tiles
	.word	100718592
	.word	pause3Map
	.word	-9464
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	instr
	.syntax unified
	.arm
	.fpu softvfp
	.type	instr, %function
instr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L95
	ldr	r4, .L95+4
	ldr	r6, .L95+8
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	ldrh	r3, [r7]
	tst	r3, #16
	bne	.L86
	ldr	r5, .L95+12
.L65:
	tst	r3, #32
	beq	.L66
	ldr	r3, .L95+16
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L89
.L66:
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	ldr	r4, [r5, #8]
	cmp	r4, #1
	beq	.L90
	cmp	r4, #2
	beq	.L91
.L68:
	cmp	r4, #3
	beq	.L92
.L69:
	cmp	r4, #4
	beq	.L93
.L70:
	mov	r3, #67108864
	mov	r1, #57088
	mov	r2, #2048
	strh	r1, [r3, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7]
	tst	r3, #8
	beq	.L64
	ldr	r3, .L95+16
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L64
	ldr	r3, .L95+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L94
	cmp	r3, #1
	beq	.L73
.L64:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L86:
	ldr	r2, .L95+16
	ldrh	r2, [r2]
	ldr	r5, .L95+12
	tst	r2, #16
	ldreq	r2, [r5, #8]
	addeq	r2, r2, #1
	streq	r2, [r5, #8]
	b	.L65
.L89:
	ldr	r3, [r5, #8]
	cmp	r3, #1
	subne	r3, r3, #1
	strne	r3, [r5, #8]
	b	.L66
.L93:
	ldr	r0, .L95+24
	ldr	r3, .L95+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L95+32
	mov	r3, #3792
	mov	r2, #100663296
	ldr	r1, .L95+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L95+40
	ldr	r1, .L95+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	b	.L70
.L90:
	ldr	r0, .L95+48
	ldr	r3, .L95+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L95+32
	ldr	r3, .L95+52
	mov	r2, #100663296
	ldr	r1, .L95+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L95+40
	ldr	r1, .L95+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5, #8]
	cmp	r4, #2
	bne	.L68
.L91:
	ldr	r0, .L95+64
	ldr	r3, .L95+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L95+32
	ldr	r3, .L95+68
	mov	r2, #100663296
	ldr	r1, .L95+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L95+40
	ldr	r1, .L95+76
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5, #8]
	cmp	r4, #3
	bne	.L69
.L92:
	ldr	r0, .L95+80
	ldr	r3, .L95+28
	mov	lr, pc
	bx	r3
	ldr	r8, .L95+32
	mov	r0, r4
	ldr	r3, .L95+84
	mov	r2, #100663296
	ldr	r1, .L95+88
	mov	lr, pc
	bx	r8
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L95+40
	ldr	r1, .L95+92
	mov	lr, pc
	bx	r8
	ldr	r4, [r5, #8]
	b	.L69
.L94:
	mov	lr, pc
	bx	r6
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToStart
.L73:
	mov	lr, pc
	bx	r6
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToPause
.L96:
	.align	2
.L95:
	.word	oldButtons
	.word	hideSprites
	.word	waitForVBlank
	.word	.LANCHOR0
	.word	buttons
	.word	.LANCHOR1
	.word	INSTR4Pal
	.word	loadPalette
	.word	DMANow
	.word	INSTR4Tiles
	.word	100726784
	.word	INSTR4Map
	.word	INSTR1Pal
	.word	4304
	.word	INSTR1Tiles
	.word	INSTR1Map
	.word	INSTR2Pal
	.word	4208
	.word	INSTR2Tiles
	.word	INSTR2Map
	.word	INSTR3Pal
	.word	4656
	.word	INSTR3Tiles
	.word	INSTR3Map
	.size	instr, .-instr
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L114
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L114+4
	ldrh	r3, [r3]
	ldr	r1, .L114+8
	tst	r3, #8
	str	r2, [r1]
	beq	.L98
	ldr	r1, .L114+12
	ldrh	r1, [r1]
	tst	r1, #8
	beq	.L111
.L98:
	tst	r3, #2
	beq	.L99
	ldr	r2, .L114+12
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L112
.L99:
	tst	r3, #1
	beq	.L97
	ldr	r3, .L114+12
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L113
.L97:
	pop	{r4, lr}
	bx	lr
.L111:
	mov	r1, #128
	ldr	r3, .L114+16
	ldr	ip, .L114+20
	ldr	r0, .L114+24
	strh	r1, [r3, #6]	@ movhi
	pop	{r4, lr}
	strh	r1, [r3, #2]	@ movhi
	str	r2, [ip, #12]
	str	r2, [r0, #12]
	b	goToGame
.L113:
	pop	{r4, lr}
	b	goToInstr
.L112:
	pop	{r4, lr}
	b	goToStart
.L115:
	.align	2
.L114:
	.word	waitForVBlank
	.word	oldButtons
	.word	.LANCHOR1
	.word	buttons
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pause, .-pause
	.align	2
	.global	goToNextLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToNextLevel, %function
goToNextLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L125
	mov	lr, pc
	bx	r6
	ldr	r5, .L125+4
	ldr	r3, .L125+8
	mov	lr, pc
	bx	r3
	ldr	r0, .L125+12
	ldr	r3, .L125+16
	mov	lr, pc
	bx	r3
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L122
	cmp	r4, #2
	beq	.L123
	cmp	r4, #3
	beq	.L124
.L118:
	cmp	r4, #3
	bgt	.L120
	mov	r3, #67108864
	mov	r1, #2048
	ldr	r2, .L125+20
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	mov	lr, pc
	bx	r6
.L120:
	mov	r2, #6
	ldr	r3, .L125+24
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L122:
	ldr	r4, .L125+28
	ldr	r3, .L125+32
	ldr	r2, .L125+36
	ldr	r1, .L125+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L125+44
	ldr	r1, .L125+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L118
.L123:
	ldr	r4, .L125+28
	ldr	r3, .L125+32
	ldr	r2, .L125+36
	ldr	r1, .L125+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L125+44
	ldr	r1, .L125+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L118
.L124:
	mov	r0, r4
	ldr	r3, .L125+32
	ldr	r2, .L125+36
	ldr	r1, .L125+60
	ldr	r7, .L125+28
	mov	lr, pc
	bx	r7
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L125+44
	ldr	r1, .L125+64
	mov	lr, pc
	bx	r7
	ldr	r4, [r5]
	b	.L118
.L126:
	.align	2
.L125:
	.word	hideSprites
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	LEVEL1Pal
	.word	loadPalette
	.word	-9464
	.word	state
	.word	DMANow
	.word	8496
	.word	100696064
	.word	LEVEL1Tiles
	.word	100718592
	.word	LEVEL1Map
	.word	LEVEL2Tiles
	.word	LEVEL2Map
	.word	LEVEL3Tiles
	.word	LEVEL3Map
	.size	goToNextLevel, .-goToNextLevel
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r3, .L139
	ldr	r4, .L139+4
	ldr	r6, .L139+8
	str	r2, [r3]
	mov	lr, pc
	bx	r6
	ldr	r3, [r4]
	ldr	r5, .L139+12
	add	r3, r3, #1
	ldr	r2, .L139+16
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldrh	r3, [r5]
	tst	r3, #2
	beq	.L128
	ldr	r2, .L139+20
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L137
.L128:
	tst	r3, #8
	beq	.L127
	ldr	r3, .L139+20
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L127
	ldr	r3, .L139+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L138
.L127:
	pop	{r4, r5, r6, lr}
	bx	lr
.L137:
	ldr	r2, .L139+24
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L128
	mov	lr, pc
	bx	r6
	ldr	r3, .L139+28
	ldr	r0, [r4]
	mov	lr, pc
	bx	r3
	bl	goToInstr
	ldrh	r3, [r5]
	b	.L128
.L138:
	ldr	r1, .L139+32
	ldr	r1, [r1]
	ldr	r2, .L139+36
	str	r3, [r1, #20]
	ldr	ip, .L139+40
	str	r3, [r1, #32]
	ldr	r1, .L139+44
	strh	r3, [r2, #6]	@ movhi
	ldr	r0, [r4]
	strh	r3, [r2, #2]	@ movhi
	ldr	r2, .L139+28
	str	r3, [ip, #12]
	str	r3, [r1, #12]
	mov	lr, pc
	bx	r2
	pop	{r4, r5, r6, lr}
	b	goToNextLevel
.L140:
	.align	2
.L139:
	.word	.LANCHOR1
	.word	seed
	.word	hideSprites
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	state
	.word	srand
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.size	start, .-start
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r2, .L143
	ldr	r1, .L143+4
	ldr	r0, .L143+8
	mov	r3, #1
	ldr	r4, .L143+12
	bl	playSoundA
	mov	lr, pc
	bx	r4
	ldr	r3, .L143+16
	mov	lr, pc
	bx	r3
	ldr	r0, .L143+20
	ldr	r3, .L143+24
	mov	lr, pc
	bx	r3
	ldr	r5, .L143+28
	mov	r3, #5568
	ldr	r2, .L143+32
	ldr	r1, .L143+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L143+40
	ldr	r1, .L143+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	mov	lr, #2048
	mov	r1, #1
	ldr	r0, .L143+48
	ldr	r3, .L143+52
	ldr	ip, .L143+56
	strh	lr, [r2]	@ movhi
	strh	r0, [r2, #14]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	str	r1, [r3, #8]
	stm	r3, {r1, ip}
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L143+60
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L144:
	.align	2
.L143:
	.word	11025
	.word	560640
	.word	TRACK4
	.word	hideSprites
	.word	waitForVBlank
	.word	WINPal
	.word	loadPalette
	.word	DMANow
	.word	100696064
	.word	WINTiles
	.word	100718592
	.word	WINMap
	.word	-9464
	.word	.LANCHOR0
	.word	30000
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	level
	.syntax unified
	.arm
	.fpu softvfp
	.type	level, %function
level:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L154
	ldr	r3, [r4]
	cmp	r3, #3
	bgt	.L152
.L146:
	ldr	r3, .L154+4
	ldr	r3, [r3]
	cmp	r3, #6
	beq	.L153
.L145:
	pop	{r4, lr}
	bx	lr
.L153:
	ldr	r3, .L154+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L145
	ldr	r3, .L154+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L145
	ldr	r3, [r4, #4]
	sub	r3, r3, #4992
	sub	r3, r3, #8
	str	r3, [r4, #4]
	bl	goToGame
	ldr	r0, [r4, #4]
	ldr	r3, .L154+16
	mov	lr, pc
	bx	r3
	b	.L145
.L152:
	bl	goToWin
	b	.L146
.L155:
	.align	2
.L154:
	.word	.LANCHOR0
	.word	state
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	level, .-level
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L163
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L163+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L156
	ldr	r3, .L163+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L156
	ldr	r3, .L163+12
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L162
.L156:
	pop	{r4, lr}
	bx	lr
.L162:
	pop	{r4, lr}
	b	goToStart
.L164:
	.align	2
.L163:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	state
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r2, .L167
	ldr	r1, .L167+4
	ldr	r0, .L167+8
	mov	r3, #1
	ldr	r4, .L167+12
	bl	playSoundA
	mov	lr, pc
	bx	r4
	ldr	r3, .L167+16
	mov	lr, pc
	bx	r3
	ldr	r0, .L167+20
	ldr	r3, .L167+24
	mov	lr, pc
	bx	r3
	ldr	r5, .L167+28
	ldr	r3, .L167+32
	ldr	r2, .L167+36
	ldr	r1, .L167+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L167+44
	ldr	r1, .L167+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	r1, #2048
	ldr	r2, .L167+52
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L167+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L168:
	.align	2
.L167:
	.word	11025
	.word	560640
	.word	TRACK2
	.word	hideSprites
	.word	waitForVBlank
	.word	LOSTPal
	.word	loadPalette
	.word	DMANow
	.word	6000
	.word	100696064
	.word	LOSTTiles
	.word	100718592
	.word	LOSTMap
	.word	-9464
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L188
	ldr	r6, .L188+4
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r6
	ldr	r3, .L188+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L188+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L170
	ldr	r3, .L188+16
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L186
.L170:
	ldr	r4, .L188+20
	ldr	r3, [r4, #4]
	cmp	r3, #10
	moveq	r2, #0
	ldreq	r5, .L188+24
	ldrheq	r3, [r5]
	addeq	r3, r3, #1
	ldrne	r5, .L188+24
	strheq	r3, [r5]	@ movhi
	streq	r2, [r4, #4]
	mov	lr, pc
	bx	r6
	mov	r2, #67108864
	ldrh	r3, [r5]
	strh	r3, [r2, #16]	@ movhi
	ldr	r6, .L188+28
	ldrh	r1, [r5]
	ldrh	r3, [r2, #20]
	add	r3, r3, r1
	ldr	r1, [r6, #52]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	cmp	r1, #0
	strh	r3, [r2, #20]	@ movhi
	bne	.L187
.L172:
	ldr	r3, [r6, #60]
	cmp	r3, #0
	beq	.L173
	mov	r3, #0
	ldr	r1, .L188+32
	ldr	r2, .L188+36
	ldr	r0, [r1]
	ldr	r1, .L188+40
	str	r3, [r0, #20]
	str	r3, [r0, #32]
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldr	r2, [r1]
	ldr	ip, .L188+44
	ldr	r0, .L188+48
	add	r2, r2, #1
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	str	r2, [r1]
	bl	goToNextLevel
.L173:
	ldr	r3, [r4, #4]
	add	r3, r3, #1
	str	r3, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L187:
	mov	r3, #0
	ldr	r1, .L188+32
	ldr	r1, [r1]
	add	r2, r2, #256
	str	r3, [r1, #20]
	ldr	r0, .L188+44
	str	r3, [r1, #32]
	ldr	r1, .L188+48
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	bl	goToLose
	b	.L172
.L186:
	ldr	r2, .L188+36
	ldr	r0, .L188+44
	ldr	r1, .L188+48
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	bl	goToPause
	b	.L170
.L189:
	.align	2
.L188:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR1
	.word	hOff
	.word	player
	.word	dma
	.word	67109120
	.word	.LANCHOR0
	.word	soundA
	.word	soundB
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L197
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L197+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L190
	ldr	r3, .L197+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L190
	ldr	r3, .L197+12
	ldr	r3, [r3]
	cmp	r3, #4
	beq	.L196
.L190:
	pop	{r4, lr}
	bx	lr
.L196:
	pop	{r4, lr}
	b	goToStart
.L198:
	.align	2
.L197:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	state
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L213
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r4, #1
	mov	r7, #128
	mov	r6, #0
	ldr	r2, .L213+4
	ldrh	r0, [r3, #4]
	ldrh	r1, [r2]
	ldr	r5, .L213+8
	ldr	ip, .L213+12
	ldr	lr, .L213+16
	orr	r1, r1, r4
	orr	r0, r0, #8
	strh	r7, [r3, #132]	@ movhi
	strh	r6, [r3, #128]	@ movhi
	strh	r5, [r3, #130]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	ldr	r6, .L213+20
	strh	r4, [r2, #8]	@ movhi
	strh	r1, [r2]	@ movhi
	ldr	r7, .L213+24
	str	lr, [ip, #4092]
	ldr	r5, .L213+28
	ldr	fp, .L213+32
	ldr	r10, .L213+36
	ldr	r9, .L213+40
	ldr	r8, .L213+44
	ldr	r4, .L213+48
.L200:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L201:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L201
.L203:
	.word	.L202
	.word	.L204
	.word	.L205
	.word	.L206
	.word	.L207
	.word	.L208
	.word	.L209
.L209:
	ldr	r3, .L213+52
	mov	lr, pc
	bx	r3
	b	.L200
.L208:
	ldr	r3, .L213+56
	mov	lr, pc
	bx	r3
	b	.L200
.L207:
	ldr	r3, .L213+60
	mov	lr, pc
	bx	r3
	b	.L200
.L206:
	mov	lr, pc
	bx	r8
	b	.L200
.L205:
	mov	lr, pc
	bx	r9
	b	.L200
.L204:
	mov	lr, pc
	bx	r10
	b	.L200
.L202:
	mov	lr, pc
	bx	fp
	b	.L200
.L214:
	.align	2
.L213:
	.word	goToStart
	.word	67109376
	.word	-1266
	.word	50360320
	.word	interruptHandler
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	level
	.word	instr
	.word	lose
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	hOff,2,2
	.global	prevState
	.global	instrcount
	.global	scount
	.global	lvl
	.global	startTime
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	fpsbuffer,30,4
	.comm	scanLineCounter,2,2
	.global	spaceSoundToPlay
	.comm	spaceSoundLen,4,4
	.comm	spaceSound,4,4
	.global	randomSeed
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.global	size
	.comm	objs,140,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	lvl, %object
	.size	lvl, 4
lvl:
	.word	1
	.type	startTime, %object
	.size	startTime, 4
startTime:
	.word	30000
	.type	instrcount, %object
	.size	instrcount, 4
instrcount:
	.word	1
	.type	size, %object
	.size	size, 4
size:
	.word	5
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	prevState, %object
	.size	prevState, 4
prevState:
	.space	4
	.type	scount, %object
	.size	scount, 4
scount:
	.space	4
	.type	spaceSoundToPlay, %object
	.size	spaceSoundToPlay, 4
spaceSoundToPlay:
	.space	4
	.type	randomSeed, %object
	.size	randomSeed, 4
randomSeed:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"

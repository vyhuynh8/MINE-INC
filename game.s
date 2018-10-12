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
	.file	"game.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies.part.0, %function
drawEnemies.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	push	{r4, r5, lr}
	ldr	ip, [r0, #36]
	ldr	r2, .L18
	ldr	lr, [r0]
	add	r1, r1, #1
	lsl	r1, r1, #3
	strh	lr, [r2, r1]	@ movhi
	cmn	ip, #5
	add	r1, r2, r1
	strh	r3, [r1, #2]	@ movhi
	beq	.L14
	cmn	ip, #1
	beq	.L16
	cmn	ip, #2
	beq	.L17
	tst	ip, #1
	beq	.L6
	ldr	r3, [r0, #52]
	cmp	r3, #5
	ble	.L14
	mov	r2, #212
	mov	r3, #1
	strh	r2, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	str	r3, [r0, #44]
	bx	lr
.L16:
	mov	r2, #324
	mov	r3, #7
	strh	r2, [r1, #4]	@ movhi
	str	r3, [r0, #44]
.L1:
	pop	{r4, r5, lr}
	bx	lr
.L14:
	mov	r2, #192
	mov	r3, #0
	strh	r2, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	str	r3, [r0, #44]
	bx	lr
.L6:
	ldr	r3, .L18+4
	smull	r4, r5, ip, r3
	asr	r3, ip, #31
	rsb	r2, r3, r5, asr #1
	add	r2, r2, r2, lsl #2
	cmp	ip, r2
	beq	.L8
	ldr	r3, [r0, #52]
	cmp	r3, #5
	movle	r2, #204
	movle	r3, #5
	movgt	r2, #196
	movgt	r3, #2
	strh	r2, [r1, #4]	@ movhi
	str	r3, [r0, #44]
	b	.L1
.L17:
	mov	r2, #220
	mov	r3, #8
	strh	r2, [r1, #4]	@ movhi
	pop	{r4, r5, lr}
	str	r3, [r0, #44]
	bx	lr
.L8:
	ldr	r2, .L18+8
	smull	r4, r5, ip, r2
	add	r2, ip, r5
	rsb	r2, r3, r2, asr #2
	rsb	r2, r2, r2, lsl #3
	cmp	ip, r2
	beq	.L10
	ldr	r3, [r0, #52]
	cmp	r3, #4
	movle	r2, #200
	movle	r3, #4
	movgt	r2, #208
	movgt	r3, #3
	strh	r2, [r1, #4]	@ movhi
	str	r3, [r0, #44]
	b	.L1
.L10:
	ldr	r2, .L18+12
	smull	r4, r5, ip, r2
	rsb	r3, r3, r5, asr #1
	add	r2, r3, r3, lsl #2
	add	r3, r3, r2, lsl #1
	subs	r3, ip, r3
	movne	r2, #216
	movne	r3, #6
	moveq	r2, #192
	strh	r2, [r1, #4]	@ movhi
	str	r3, [r0, #44]
	b	.L1
.L19:
	.align	2
.L18:
	.word	shadowOAM
	.word	1717986919
	.word	-1840700269
	.word	780903145
	.size	drawEnemies.part.0, .-drawEnemies.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet.part.2, %function
updateBullet.part.2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #12]
	add	r3, r2, r3
	cmp	r3, #158
	bgt	.L21
	ldr	r1, [r0, #20]
	add	r2, r2, r1
	cmp	r2, #0
	ble	.L21
	ldr	r1, [r0, #16]
	ldr	r2, [r0, #8]
	add	r2, r2, r1
	sub	r1, r2, #1
	cmp	r1, #237
	bls	.L23
.L21:
	mov	r3, #0
	str	r3, [r0, #32]
	bx	lr
.L23:
	str	r3, [r0, #4]
	str	r2, [r0, #8]
	bx	lr
	.size	updateBullet.part.2, .-updateBullet.part.2
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet.part.3, %function
drawBullet.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	cmp	r3, #0
	str	lr, [sp, #-4]!
	bne	.L25
	ldr	r3, .L32
	ldr	r2, [r0, #8]
	ldr	r3, [r3]
	add	r1, r1, #42
	ldr	ip, .L32+4
	ldr	lr, [r0, #4]
	lsl	r1, r1, #3
	lsl	r3, r3, #6
	orr	r2, r2, #16384
.L30:
	add	r0, ip, r1
	add	r3, r3, #10
	strh	lr, [ip, r1]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
.L24:
	ldr	lr, [sp], #4
	bx	lr
.L25:
	cmn	r3, #1
	bne	.L27
	ldr	r3, .L32
	ldr	r2, [r0, #8]
	ldr	r3, [r3]
	add	r1, r1, #42
	ldr	ip, .L32+4
	ldr	lr, [r0, #4]
	lsl	r1, r1, #3
	lsl	r3, r3, #6
	orr	r2, r2, #24576
.L31:
	add	r0, ip, r1
	add	r3, r3, #12
	strh	lr, [ip, r1]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L27:
	cmp	r3, #1
	bne	.L28
	ldr	r3, .L32
	ldr	r2, [r0, #8]
	ldr	r3, [r3]
	add	r1, r1, #42
	ldr	ip, .L32+4
	lsl	r1, r1, #3
	ldr	lr, [r0, #4]
	lsl	r3, r3, #6
	orr	r2, r2, #20480
	b	.L30
.L28:
	cmp	r3, #2
	bne	.L24
	ldr	r3, .L32
	ldr	r2, [r0, #8]
	ldr	r3, [r3]
	add	r1, r1, #42
	ldr	ip, .L32+4
	lsl	r1, r1, #3
	ldr	lr, [r0, #4]
	lsl	r3, r3, #6
	orr	r2, r2, #16384
	b	.L31
.L33:
	.align	2
.L32:
	.word	poffset
	.word	shadowOAM
	.size	drawBullet.part.3, .-drawBullet.part.3
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L46
	mov	r10, #0
	mov	r5, r4
	mov	r9, #32
	ldr	r6, .L46+4
	ldr	r8, .L46+8
	ldr	r7, .L46+12
	sub	sp, sp, #12
.L35:
	mov	lr, pc
	bx	r6
	mov	ip, #31
	mov	r1, #1
	mov	fp, #0
	mov	lr, #30
	smull	r2, r3, r0, r8
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, ip
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl r1
	add	r0, r0, r1
	str	r10, [r5, #4]
	str	r9, [r5, #16]
	str	r0, [r5, #52]
	str	lr, [r5, #28]
	str	ip, [r5]
	str	fp, [r5, #8]
	str	r1, [r5, #12]
	str	r1, [r5, #32]
	mov	lr, pc
	bx	r6
	smull	r2, r3, r0, r7
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	add	r10, r10, #32
	sub	r3, r0, r3, lsl #2
	add	r3, r3, #1
	cmp	r10, #256
	str	fp, [r5, #48]
	str	fp, [r5, #44]
	str	r3, [r5, #36]
	add	r5, r5, #56
	bne	.L35
	mov	r9, #32
	ldr	r5, .L46
	ldr	r8, .L46+8
	ldr	r7, .L46+12
.L36:
	mov	lr, pc
	bx	r6
	mov	r1, #1
	mov	r10, #0
	mov	lr, #30
	mov	ip, #62
	smull	r2, r3, r0, r8
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl r1
	add	r0, r0, r1
	str	fp, [r5, #452]
	str	r9, [r5, #464]
	str	r0, [r5, #500]
	str	lr, [r5, #476]
	str	ip, [r5, #448]
	str	r10, [r5, #456]
	str	r1, [r5, #460]
	str	r1, [r5, #480]
	mov	lr, pc
	bx	r6
	smull	r2, r3, r0, r7
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	add	fp, fp, #32
	sub	r3, r0, r3, lsl #2
	add	r3, r3, #1
	cmp	fp, #256
	str	r10, [r5, #496]
	str	r10, [r5, #492]
	str	r3, [r5, #484]
	add	r5, r5, #56
	bne	.L36
	mov	r9, #32
	ldr	r5, .L46
	ldr	r8, .L46+8
	ldr	r7, .L46+12
.L37:
	mov	lr, pc
	bx	r6
	mov	r1, #1
	mov	fp, #0
	mov	lr, #30
	mov	ip, #93
	smull	r2, r3, r0, r8
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl r1
	add	r0, r0, r1
	str	r10, [r5, #900]
	str	r9, [r5, #912]
	str	r0, [r5, #948]
	str	lr, [r5, #924]
	str	ip, [r5, #896]
	str	fp, [r5, #904]
	str	r1, [r5, #908]
	str	r1, [r5, #928]
	mov	lr, pc
	bx	r6
	smull	r2, r3, r0, r7
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	add	r10, r10, #32
	sub	r3, r0, r3, lsl #2
	add	r3, r3, #1
	cmp	r10, #256
	str	fp, [r5, #944]
	str	fp, [r5, #940]
	str	r3, [r5, #932]
	add	r5, r5, #56
	bne	.L37
	mov	r9, #32
	ldr	r5, .L46
	ldr	r8, .L46+8
	ldr	r7, .L46+12
.L38:
	mov	lr, pc
	bx	r6
	mov	r1, #1
	mov	r10, #0
	mov	lr, #30
	mov	ip, #125
	smull	r2, r3, r0, r8
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl r1
	add	r0, r0, r1
	str	fp, [r5, #1348]
	str	r9, [r5, #1360]
	str	r0, [r5, #1396]
	str	lr, [r5, #1372]
	str	ip, [r5, #1344]
	str	r10, [r5, #1352]
	str	r1, [r5, #1356]
	str	r1, [r5, #1376]
	mov	lr, pc
	bx	r6
	smull	r2, r3, r0, r7
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	add	fp, fp, #32
	sub	r3, r0, r3, lsl #2
	add	r3, r3, #1
	cmp	fp, #256
	str	r10, [r5, #1392]
	str	r10, [r5, #1388]
	str	r3, [r5, #1380]
	add	r5, r5, #56
	bne	.L38
	mov	r8, #25
	mov	r7, #155
	ldr	r5, .L46+8
.L39:
	mov	lr, pc
	bx	r6
	mov	ip, #1
	mov	r1, #0
	mvn	lr, #4
	smull	r2, r3, r0, r5
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	str	r10, [r4, #1796]
	sub	r0, r0, r3, lsl ip
	add	r10, r10, #32
	add	r0, r0, ip
	cmp	r10, #256
	str	r8, [r4, #1808]
	str	r8, [r4, #1820]
	str	r7, [r4, #1792]
	str	r0, [r4, #1844]
	str	r1, [r4, #1800]
	str	r1, [r4, #1840]
	str	r1, [r4, #1836]
	str	ip, [r4, #1804]
	str	ip, [r4, #1824]
	str	lr, [r4, #1828]
	add	r4, r4, #56
	bne	.L39
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	enemies
	.word	rand
	.word	1717986919
	.word	1374389535
	.size	initEnemies, .-initEnemies
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r3, r1
	bne	drawEnemies.part.0
.L49:
	mov	r2, #512
	ldr	r1, .L50
	add	r1, r1, r3, lsl #3
	strh	r2, [r1, #8]	@ movhi
	bx	lr
.L51:
	.align	2
.L50:
	.word	shadowOAM
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L131
	ldr	r3, [r7]
	ldr	r6, .L131+4
	cmp	r3, #0
	sub	sp, sp, #28
	ldr	r2, [r6]
	blt	.L53
	cmp	r2, #0
	subeq	r3, r3, #1
	streq	r3, [r7]
.L54:
	ldr	r3, [r0, #32]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r0, #36]
	cmn	r3, #5
	beq	.L52
	ldr	r5, .L131+8
	mov	r4, r0
	ldr	r10, .L131+12
	ldr	r0, [r0]
	add	r8, r5, #180
.L88:
	ldr	r3, [r5, #32]
	cmp	r3, #0
	bne	.L119
.L58:
	cmp	r0, #31
	beq	.L120
.L62:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r4, #44]
	cmp	r3, #0
	bne	.L64
	ldr	r2, [r4, #48]
	cmp	r2, #1
	beq	.L121
.L65:
	sub	r2, r3, #7
	cmp	r3, #1
	cmpne	r2, #1
	bhi	.L69
	ldr	r2, [r6]
	cmp	r2, #1
	mov	r1, #0
	bls	.L122
.L69:
	cmp	r3, #2
	beq	.L123
	cmp	r3, #3
	beq	.L124
	cmp	r3, #4
	bne	.L75
	ldr	r2, [r4, #48]
	cmp	r2, #1
	beq	.L125
.L83:
	ldr	r0, [r4]
.L85:
	add	r5, r5, #36
	cmp	r8, r5
	bne	.L88
	ldr	r3, [r4, #16]
	add	r0, r0, r3
	cmp	r0, #160
	movgt	r2, #0
	ldrgt	r3, .L131+16
	strgt	r2, [r3, #44]
.L52:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L75:
	cmp	r3, #5
	beq	.L126
	cmp	r3, #6
	bne	.L83
	ldr	r3, [r4, #48]
	cmp	r3, #1
	bne	.L83
	mov	r3, #0
	ldr	r9, .L131+20
	str	r3, [r4, #32]
	add	fp, r9, #2240
.L87:
	ldr	r3, [r9, #32]
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r9, #36]
	cmn	r3, #5
	beq	.L86
	mov	lr, pc
	bx	r10
	ldr	r3, .L131+24
	smull	r1, r2, r0, r3
	str	r1, [sp, #16]
	str	r2, [sp, #20]
	ldr	r3, [sp, #20]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	add	r3, r3, #1
	str	r3, [r9, #36]
.L86:
	add	r9, r9, #56
	cmp	fp, r9
	bne	.L87
	ldr	r3, .L131+16
	ldr	r0, [r4]
	ldr	r2, [r3]
	cmp	r0, r2
	ble	.L85
	ldr	r1, [r3, #4]
	ldr	ip, [r4, #4]
	add	lr, r1, #10
	cmp	ip, lr
	bgt	.L85
	ldr	lr, [r3, #20]
	ldr	r3, [r4, #28]
	add	r1, r1, lr
	add	ip, ip, r3
	cmp	ip, r1
	movge	ip, #1
	ldrge	r1, .L131+28
	ldrge	r3, .L131+32
	strge	ip, [r1]
	strge	r2, [r3]
	b	.L85
.L120:
	ldr	r3, [r4, #48]
	cmp	r3, #1
	bne	.L62
	ldr	r3, [r4, #4]
	add	r2, r3, #31
	cmp	r3, #0
	movlt	r3, r2
	mov	r2, #512
	asr	r3, r3, #5
	add	r3, r3, #90
	ldr	r1, .L131+36
	lsl	r3, r3, #3
	strh	r2, [r1, r3]	@ movhi
	b	.L62
.L64:
	cmp	r3, #8
	bne	.L65
	ldr	r2, [r4, #48]
	cmp	r2, #1
	beq	.L127
.L68:
	ldr	r2, [r6]
	cmp	r2, #1
	mov	r1, #1
	bhi	.L69
.L122:
	ldr	ip, [r4, #48]
	cmp	ip, #1
	bne	.L69
	mov	lr, #0
	ldr	ip, .L131+16
	cmp	r2, lr
	ldr	r2, [ip, #40]
	addeq	r2, r2, #1
	addne	r2, r2, #5
	cmp	r3, #7
	str	lr, [r4, #32]
	str	r2, [ip, #40]
	beq	.L128
	cmp	r1, #0
	movne	r3, #1
	strne	r3, [ip, #60]
.L73:
	ldr	r3, [ip]
	cmp	r3, r0
	bgt	.L83
	ldr	r1, [r4, #4]
	ldr	r2, [ip, #4]
	cmp	r1, r2
	bgt	.L83
	ldr	ip, [ip, #20]
	ldr	r0, [r4, #28]
	add	r2, r2, ip
	add	r1, r1, r0
	cmp	r1, r2
	blt	.L83
	mov	r0, #1
	ldr	r1, .L131+28
	ldr	r2, .L131+32
	str	r0, [r1]
	str	r3, [r2]
	b	.L83
.L119:
	add	ip, r5, #20
	ldm	ip, {ip, lr}
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #16]
	ldr	r1, [r4, #4]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r5, #8]
	ldr	ip, [r5, #4]
	stm	sp, {ip, lr}
	ldr	ip, .L131+40
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L59
	ldr	r0, [r4]
	b	.L58
.L126:
	ldr	r3, [r4, #48]
	cmp	r3, #1
	bne	.L83
	mov	lr, #0
	ldr	r2, .L131+16
	ldr	r1, [r2, #40]
	ldr	ip, [r2]
	add	r1, r1, #10
	cmp	ip, r0
	str	lr, [r4, #32]
	str	r1, [r2, #40]
	bgt	.L83
	ldr	r0, [r4, #4]
	ldr	r1, [r2, #4]
	cmp	r0, r1
	bgt	.L83
	ldr	lr, [r2, #20]
	ldr	r2, [r4, #28]
	add	r1, r1, lr
	add	r0, r0, r2
	cmp	r0, r1
	blt	.L83
.L118:
	ldr	r1, .L131+32
	ldr	r2, .L131+28
	str	ip, [r1]
	str	r3, [r2]
	b	.L83
.L124:
	ldr	r3, [r4, #48]
	cmp	r3, #1
	bne	.L83
	mov	ip, #0
	ldr	r2, .L131+16
	ldr	r1, [r2]
	cmp	r1, r0
	ldr	r0, .L131+44
	str	ip, [r4, #32]
	str	r3, [r0]
	bgt	.L83
	ldr	ip, [r4, #4]
	ldr	r0, [r2, #4]
	cmp	ip, r0
	bgt	.L83
	ldr	lr, [r2, #20]
	ldr	r2, [r4, #28]
	add	r0, r0, lr
	add	ip, ip, r2
	cmp	ip, r0
	ldrge	r0, .L131+32
	ldrge	r2, .L131+28
	strge	r1, [r0]
	strge	r3, [r2]
	b	.L83
.L123:
	ldr	r3, [r4, #48]
	cmp	r3, #1
	bne	.L83
	mov	lr, #0
	ldr	r1, .L131+16
	ldr	r2, [r7]
	ldr	ip, [r1]
	add	r2, r2, #4992
	add	r2, r2, #8
	cmp	ip, r0
	str	r2, [r7]
	str	lr, [r4, #32]
	bgt	.L83
	ldr	r0, [r4, #4]
	ldr	r2, [r1, #4]
	cmp	r0, r2
	bgt	.L83
	ldr	lr, [r1, #20]
	ldr	r1, [r4, #28]
	add	r2, r2, lr
	add	r0, r0, r1
	cmp	r0, r2
	blt	.L83
	b	.L118
.L59:
	ldr	r3, [r6]
	cmp	r3, #0
	ldr	r0, [r4]
	beq	.L129
	cmp	r3, #1
	beq	.L130
.L61:
	ldr	r3, [r4, #48]
	add	r3, r3, #1
	str	r3, [r4, #48]
	b	.L58
.L53:
	cmp	r2, #0
	moveq	r2, #1
	ldreq	r3, .L131+44
	streq	r2, [r3]
	b	.L54
.L129:
	str	r3, [r5, #32]
	ldr	r3, [r4, #48]
	add	r3, r3, #1
	str	r3, [r4, #48]
	b	.L58
.L121:
	ldr	r1, .L131+16
	ldr	ip, [r1]
	cmp	ip, r0
	str	r3, [r4, #32]
	bgt	.L83
	ldr	r0, [r4, #4]
	ldr	r3, [r1, #4]
	cmp	r0, r3
	bgt	.L83
	ldr	lr, [r1, #20]
	ldr	r1, [r4, #28]
	add	r3, r3, lr
	add	r0, r0, r1
	cmp	r0, r3
	ldrge	r1, .L131+32
	ldrge	r3, .L131+28
	strge	ip, [r1]
	strge	r2, [r3]
	b	.L83
.L125:
	mov	r1, #0
	ldr	r3, [r7]
	sub	r3, r3, #4992
	sub	r3, r3, #8
	cmp	r3, r1
	str	r3, [r7]
	ldreq	r3, .L131+44
	streq	r2, [r3]
	ldr	r3, .L131+16
	ldr	r2, [r3]
	cmp	r2, r0
	str	r1, [r4, #32]
	bgt	.L83
	ldr	r0, [r4, #4]
	ldr	r1, [r3, #4]
	cmp	r0, r1
	bgt	.L83
	ldr	ip, [r3, #20]
	ldr	r3, [r4, #28]
	add	r1, r1, ip
	add	r0, r0, r3
	cmp	r0, r1
	blt	.L83
	mov	r0, #1
	ldr	r1, .L131+28
	ldr	r3, .L131+32
	str	r0, [r1]
	str	r2, [r3]
	b	.L83
.L127:
	ldr	r1, .L131+16
	ldr	ip, [r1]
	cmp	ip, r0
	str	r2, [r1, #60]
	bgt	.L68
	ldr	r9, [r4, #4]
	ldr	lr, [r1, #4]
	cmp	r9, lr
	bgt	.L68
	ldr	fp, [r1, #20]
	ldr	r1, [r4, #28]
	add	lr, lr, fp
	add	r9, r9, r1
	cmp	r9, lr
	ldrge	lr, .L131+32
	ldrge	r1, .L131+28
	strge	ip, [lr]
	strge	r2, [r1]
	b	.L68
.L130:
	cmp	r0, #155
	moveq	r3, #0
	streq	r3, [r5, #32]
	bne	.L61
	b	.L62
.L128:
	ldr	r2, .L131+48
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	b	.L73
.L132:
	.align	2
.L131:
	.word	timer
	.word	poffset
	.word	bullets
	.word	rand
	.word	player
	.word	enemies
	.word	1374389535
	.word	fell
	.word	ini
	.word	shadowOAM
	.word	collision
	.word	gameOverc
	.word	dball
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #5
	mov	r2, #0
	mov	lr, #3
	mvn	ip, #1
	ldr	r3, .L137
	add	r0, r3, #180
.L134:
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	stmib	r3, {r1, r2, lr}
	str	r2, [r3, #16]
	strb	ip, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3], #36
	cmp	r3, r0
	bne	.L134
	ldr	lr, [sp], #4
	bx	lr
.L138:
	.align	2
.L137:
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	push	{r4, r5, r6, lr}
	bne	.L140
	ldr	r1, .L165
	mov	r3, r1
.L143:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L161
	add	r0, r0, #1
	cmp	r0, #5
	add	r3, r3, #36
	bne	.L143
.L139:
	pop	{r4, r5, r6, lr}
	bx	lr
.L140:
	cmn	r0, #1
	bne	.L144
	ldr	r1, .L165
	mov	r3, #0
	mov	r2, r1
.L147:
	ldr	r0, [r2, #32]
	cmp	r0, #0
	beq	.L162
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bne	.L147
	pop	{r4, r5, r6, lr}
	bx	lr
.L144:
	cmp	r0, #1
	bne	.L148
	ldr	r1, .L165
	mov	r3, #0
	mov	r2, r1
.L151:
	ldr	r0, [r2, #32]
	cmp	r0, #0
	beq	.L163
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	bne	.L151
	pop	{r4, r5, r6, lr}
	bx	lr
.L161:
	mov	lr, #1
	ldr	r4, .L165+4
	add	r0, r0, r0, lsl #3
	lsl	r0, r0, #2
	add	r3, r1, r0
	ldr	ip, [r4, #20]
	str	r2, [r1, r0]
	ldr	r1, [r4, #4]
	ldr	r0, [r3, #24]
	add	ip, ip, ip, lsr #31
	ldr	r4, [r4]
	add	r1, r1, ip, asr lr
	add	r0, r0, r0, lsr #31
	add	ip, r4, #15
	sub	r1, r1, r0, asr lr
	str	lr, [r3, #16]
	str	lr, [r3, #32]
	str	r2, [r3, #12]
	str	ip, [r3, #4]
	str	r1, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L162:
	mov	r4, #3
	mvn	r5, #0
	mov	lr, #1
	ldr	r0, .L165+4
	add	r3, r3, r3, lsl r4
	lsl	r3, r3, #2
	add	r2, r1, r3
	ldr	ip, [r0, #20]
	str	r5, [r1, r3]
	ldr	r1, [r2, #24]
	ldr	r3, [r0, #4]
	add	ip, ip, ip, lsr #31
	add	r1, r1, r1, lsr #31
	add	r3, r3, ip, asr lr
	sub	r3, r3, r1, asr lr
	ldr	ip, [r0]
	ldr	r1, [r0, #36]
	str	r4, [r2, #12]
	str	ip, [r2, #4]
	str	r3, [r2, #8]
	str	r1, [r2, #16]
	str	lr, [r2, #32]
	b	.L139
.L163:
	mvn	r5, #0
	mov	r4, #1
	add	r3, r3, r3, lsl #3
	ldr	r6, .L165+4
	lsl	r3, r3, #2
	add	r2, r1, r3
	ldr	ip, [r6, #20]
	str	r0, [r2, #12]
	ldr	r0, [r2, #24]
	add	lr, ip, ip, lsr #31
	add	ip, r0, r0, lsr #31
	ldr	r0, [r6, #4]
	str	r5, [r2, #16]
	ldr	r5, [r6]
	add	r0, r0, lr, asr r4
	sub	r0, r0, ip, asr r4
	add	lr, r5, #15
	str	lr, [r2, #4]
	str	r0, [r2, #8]
	str	r4, [r2, #32]
	str	r4, [r1, r3]
	b	.L139
.L148:
	cmp	r0, #2
	bne	.L139
	ldr	r1, .L165
	mov	r2, r1
	ldr	r0, [r2, #32]
	cmp	r0, #0
	mov	r3, #0
	beq	.L164
.L152:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #36
	beq	.L139
	ldr	r0, [r2, #32]
	cmp	r0, #0
	bne	.L152
.L164:
	mov	r4, #2
	mov	ip, #1
	mvn	lr, #0
	ldr	r5, .L165+4
	add	r3, r3, r3, lsl #3
	lsl	r3, r3, r4
	add	r2, r1, r3
	str	r4, [r1, r3]
	ldr	r3, [r5, #20]
	add	r4, r3, r3, lsr #31
	ldr	r3, [r2, #24]
	add	r1, r3, r3, lsr #31
	ldr	r3, [r5, #4]
	ldr	r5, [r5]
	add	r3, r3, r4, asr ip
	sub	r3, r3, r1, asr ip
	str	lr, [r2, #12]
	str	r5, [r2, #4]
	str	r0, [r2, #16]
	str	r3, [r2, #8]
	str	ip, [r2, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L166:
	.align	2
.L165:
	.word	bullets
	.word	player
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	b	updateBullet.part.2
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	mov	r3, r1
	bne	drawBullet.part.3
.L170:
	mov	r1, #512
	add	r3, r3, #42
	ldr	r2, .L171
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L172:
	.align	2
.L171:
	.word	shadowOAM
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mvn	lr, #3
	mov	r2, #0
	mov	r7, #118
	mov	r6, #4
	mov	r5, #30
	mov	r4, #24
	mov	r1, #3
	mov	ip, #20
	mov	r0, #5
	ldr	r3, .L175
	strb	lr, [r3, #24]
	str	r7, [r3, #4]
	str	r6, [r3, #8]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	r2, [r3]
	str	r2, [r3, #40]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #32]
	str	r2, [r3, #12]
	str	r2, [r3, #64]
	str	ip, [r3, #28]
	str	r0, [r3, #44]
	str	r1, [r3, #48]
	str	r1, [r3, #72]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L176:
	.align	2
.L175:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r4, #3
	bl	initPlayer
	bl	initEnemies
	mov	r1, #5
	mov	r2, #0
	mvn	lr, #1
	ldr	r3, .L183
	add	ip, r3, #180
.L178:
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	stmib	r3, {r1, r2, r4}
	str	r2, [r3, #16]
	strb	lr, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3], #36
	cmp	r3, ip
	bne	.L178
	mov	r0, #40
	mov	r3, #0
	mov	r4, #23
	mov	lr, #352
	ldr	ip, .L183+4
	ldr	r1, .L183+8
	ldr	ip, [ip]
	str	ip, [r1]
	ldr	r1, .L183+12
	str	r0, [r1]
	ldr	r1, .L183+16
	str	r2, [r1]
	ldr	r1, .L183+20
	str	r2, [r1]
	ldr	r1, .L183+24
	str	r2, [r1]
	ldr	r1, .L183+28
	str	r5, [r1]
	ldr	r1, .L183+32
	ldr	r0, .L183+36
	str	r2, [r1]
	ldr	r1, .L183+40
	str	r2, [r0]
	str	r2, [r1]
	ldr	r0, .L183+44
	ldr	r1, .L183+48
	str	r2, [r0]
	str	r2, [r1]
	ldr	r0, .L183+52
	ldr	r1, .L183+56
	str	r2, [r0]
	str	r2, [r1]
	ldr	ip, .L183+60
	ldr	r2, .L183+64
.L179:
	add	r0, r3, #32
	orr	r1, r3, ip
	lsl	r3, r0, #16
	lsr	r3, r3, #16
	cmp	r3, #256
	strh	r4, [r2]	@ movhi
	strh	lr, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L179
	pop	{r4, r5, r6, lr}
	bx	lr
.L184:
	.align	2
.L183:
	.word	bullets
	.word	player
	.word	ini
	.word	enemiesRemaining
	.word	remain
	.word	enemyHit
	.word	count
	.word	timer
	.word	fell
	.word	cheatHit
	.word	dball
	.word	smiles
	.word	poffset
	.word	gameOverc
	.word	gameFrame
	.word	-32768
	.word	shadowOAM+720
	.size	initGame, .-initGame
	.align	2
	.global	updateFell
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFell, %function
updateFell:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L192
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L186
	ldr	r2, .L192+4
	ldr	r1, .L192+8
	ldr	r2, [r2]
	ldr	r0, [r1]
	add	r2, r2, #29
	cmp	r2, r0
	bge	.L191
.L186:
	mov	r2, #0
	str	r2, [r3]
	bx	lr
.L191:
	ldr	r3, [r1, #48]
	add	r0, r3, r0
	str	r0, [r1]
	bx	lr
.L193:
	.align	2
.L192:
	.word	fell
	.word	ini
	.word	player
	.size	updateFell, .-updateFell
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L334
	ldr	r1, [r5, #28]
	cmp	r1, #40
	ldr	r2, [r5, #64]
	str	r3, [r5, #64]
	movgt	r3, #0
	strgt	r3, [r5, #28]
	ldr	r3, [r5, #32]
	ands	r3, r3, #7
	sub	sp, sp, #20
	str	r2, [r5, #68]
	bne	.L197
	ldr	r2, [r5, #12]
	cmp	r2, #1
	addne	r3, r2, #1
	str	r3, [r5, #12]
.L197:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #1
	bne	.L200
	ldrh	r2, [r3, #48]
	ands	r4, r2, #128
	beq	.L320
.L200:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #1
	bne	.L201
	ldrh	r2, [r3, #48]
	ands	r4, r2, #16
	beq	.L321
.L201:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #1
	bne	.L202
	ldrh	r2, [r3, #48]
	ands	r4, r2, #32
	beq	.L322
.L202:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #1
	bne	.L203
	ldrh	r2, [r3, #48]
	ands	r4, r2, #64
	beq	.L323
.L203:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #32
	ldr	ip, [r5, #4]
	bne	.L204
	ldrh	r3, [r3, #48]
	tst	r3, #1
	beq	.L204
	ldr	r3, .L334+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L324
.L205:
	ldr	r3, [r5, #8]
	cmp	r3, ip
	bgt	.L204
	mov	r3, #1
	ldr	r6, .L334+12
	mov	r8, r3
	str	r3, [r5, #64]
	ldr	r7, .L334+16
	add	r4, r6, #2240
	b	.L208
.L206:
	add	r6, r6, #56
	cmp	r4, r6
	beq	.L325
.L208:
	ldr	r3, [r6, #32]
	cmp	r3, #0
	beq	.L206
	ldr	lr, [r5, #8]
	sub	ip, ip, lr
	ldr	r3, [r6, #28]
	ldr	r2, [r6, #16]
	ldm	r6, {r0, r1}
	ldr	r9, [r5, #20]
	str	ip, [sp, #4]
	ldr	lr, [r5, #16]
	ldr	ip, [r5]
	str	r9, [sp, #12]
	str	ip, [sp]
	str	lr, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r8, #0
	ldr	ip, [r5, #4]
	b	.L206
.L324:
	ldr	r3, .L334+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L205
.L204:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #16
	ldr	r0, [r5, #20]
	bne	.L318
	ldrh	r3, [r3, #48]
	tst	r3, #1
	beq	.L318
	ldr	r3, .L334+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L326
.L212:
	ldr	r3, [r5, #8]
	add	r0, ip, r0
	rsb	r3, r3, #240
	cmp	r0, r3
	bgt	.L211
	mov	r3, #2
	ldr	r6, .L334+12
	mov	r8, #1
	str	r3, [r5, #64]
	ldr	r7, .L334+16
	add	r4, r6, #2240
	b	.L215
.L213:
	add	r6, r6, #56
	cmp	r6, r4
	beq	.L327
.L215:
	ldr	r3, [r6, #32]
	cmp	r3, #0
	beq	.L213
	ldr	lr, [r5, #8]
	add	ip, ip, lr
	ldr	r3, [r6, #28]
	ldr	r2, [r6, #16]
	ldm	r6, {r0, r1}
	ldr	r9, [r5, #20]
	str	ip, [sp, #4]
	ldr	lr, [r5, #16]
	ldr	ip, [r5]
	str	r9, [sp, #12]
	str	ip, [sp]
	str	lr, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r8, #0
	ldr	ip, [r5, #4]
	b	.L213
.L326:
	ldr	r3, .L334+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L212
.L318:
	add	r0, ip, r0
.L211:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #128
	beq	.L328
.L217:
	mov	r3, #0
	ldr	r6, [r5]
	str	r3, [r5, #36]
	ldr	r4, .L334+24
.L210:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #2
	bne	.L223
	ldrh	r3, [r3, #48]
	tst	r3, #1
	ldreq	r3, .L334+28
	ldreq	r2, .L334+32
	streq	r2, [r3]
.L223:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L225
	ldrh	r2, [r3, #48]
	tst	r2, #1
	beq	.L329
.L225:
	ldr	r3, .L334+4
	ldrh	r2, [r3, #48]
	tst	r2, #128
	bne	.L232
	ldrh	r2, [r3, #48]
	tst	r2, #1
	beq	.L330
.L232:
	mov	lr, #0
	ldr	r1, [r5, #16]
	ldr	r10, .L334+36
	ldr	r9, .L334+40
	sub	r1, r1, #3
	ldr	r8, [r10]
	ldr	r7, [r9]
	ldr	r3, .L334+12
	sub	r0, r0, #5
	add	r1, r1, r6
.L237:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	.L236
	ldr	r2, [r3]
	cmp	r1, r2
	bgt	.L236
	ldr	r2, [r3, #4]
	cmp	r2, ip
	bgt	.L236
	ldr	fp, [r3, #28]
	add	r2, r2, fp
	cmp	r0, r2
	movle	lr, #1
	movle	r7, r6
	movle	r8, lr
.L236:
	add	r3, r3, #56
	cmp	r4, r3
	bne	.L237
	ldr	r3, [r5, #64]
	cmp	lr, #0
	strne	r8, [r10]
	strne	r7, [r9]
	cmp	r3, #4
	moveq	r2, #0
	ldrne	r3, [r5, #32]
	ldreq	r3, [r5, #68]
	addne	r3, r3, #1
	streq	r3, [r5, #64]
	strne	r3, [r5, #32]
	ldr	r3, [r5, #28]
	add	r3, r3, #1
	streq	r2, [r5, #12]
	str	r3, [r5, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L328:
	ldrh	r3, [r3, #48]
	tst	r3, #1
	beq	.L217
	ldr	r3, .L334+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L331
.L218:
	ldr	r3, [r5, #8]
	rsb	r3, r3, #240
	cmp	r0, r3
	bgt	.L217
	mov	r3, #0
	ldr	r7, .L334+12
	mov	r9, #1
	str	r3, [r5, #64]
	ldr	r6, [r5]
	ldr	r8, .L334+16
	add	r4, r7, #2240
	b	.L221
.L219:
	add	r7, r7, #56
	cmp	r4, r7
	beq	.L332
.L221:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L219
	ldr	ip, [r5, #48]
	add	r6, r6, ip
	ldr	ip, [r5, #20]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #16]
	ldm	r7, {r0, r1}
	ldr	lr, [r5, #16]
	str	ip, [sp, #12]
	ldr	ip, [r5, #4]
	str	r6, [sp]
	stmib	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r9, #0
	ldr	r6, [r5]
	b	.L219
.L329:
	ldrh	r3, [r3, #48]
	ands	r7, r3, #2
	bne	.L225
	mov	r2, #1
	ldr	r3, .L334+44
	ldr	r9, .L334+48
	str	r2, [r3]
	mov	lr, r7
	mvn	r1, #0
	ldr	r8, [r9]
	ldr	r3, .L334+12
	b	.L230
.L227:
	cmp	r2, #7
	moveq	r2, r1
	movne	r2, lr
	add	r3, r3, #56
	str	r2, [r3, #-20]
	cmp	r4, r3
	beq	.L333
.L230:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	ldr	r2, [r3, #44]
	beq	.L227
	cmp	r2, #1
	bne	.L227
	str	r1, [r3, #36]
	add	r3, r3, #56
	cmp	r4, r3
	add	r8, r8, #1
	mov	r7, r2
	bne	.L230
.L333:
	cmp	r7, #0
	strne	r8, [r9]
	b	.L225
.L320:
	ldrh	r3, [r3, #48]
	tst	r3, #2
	beq	.L200
	ldr	r3, [r5, #28]
	cmp	r3, #19
	ble	.L200
	mov	r3, r4
	ldr	r2, .L334+52
	ldr	r1, .L334+56
	ldr	r0, .L334+60
	ldr	r6, .L334+64
	mov	lr, pc
	bx	r6
	mvn	r0, #0
	str	r4, [r5, #64]
	bl	fireBullet
	str	r4, [r5, #28]
	b	.L200
.L330:
	ldrh	r3, [r3, #48]
	ands	lr, r3, #2
	bne	.L232
	mvn	r1, #1
	ldr	r8, .L334+68
	ldr	r3, .L334+12
	ldr	r7, [r8]
.L235:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L234
	ldr	r2, [r3, #44]
	cmp	r2, #1
	moveq	lr, r2
	str	r1, [r3, #36]
	addeq	r7, r7, #1
.L234:
	add	r3, r3, #56
	cmp	r4, r3
	bne	.L235
	cmp	lr, #0
	strne	r7, [r8]
	b	.L232
.L323:
	ldrh	r3, [r3, #48]
	tst	r3, #2
	beq	.L203
	ldr	r3, [r5, #28]
	cmp	r3, #29
	ble	.L203
	mov	r3, r4
	ldr	r2, .L334+52
	ldr	r1, .L334+56
	ldr	r0, .L334+60
	ldr	r6, .L334+64
	mov	lr, pc
	bx	r6
	mov	r3, #3
	mov	r0, #2
	str	r3, [r5, #64]
	bl	fireBullet
	str	r4, [r5, #28]
	b	.L203
.L322:
	ldrh	r3, [r3, #48]
	tst	r3, #2
	beq	.L202
	ldr	r3, [r5, #28]
	cmp	r3, #19
	ble	.L202
	mov	r3, r4
	ldr	r2, .L334+52
	ldr	r1, .L334+56
	ldr	r0, .L334+60
	ldr	r6, .L334+64
	mov	lr, pc
	bx	r6
	mov	r3, #1
	mov	r0, r3
	str	r3, [r5, #64]
	bl	fireBullet
	str	r4, [r5, #28]
	b	.L202
.L321:
	ldrh	r3, [r3, #48]
	tst	r3, #2
	beq	.L201
	ldr	r3, [r5, #28]
	cmp	r3, #19
	ble	.L201
	mov	r3, r4
	ldr	r2, .L334+52
	ldr	r1, .L334+56
	ldr	r0, .L334+60
	ldr	r6, .L334+64
	mov	lr, pc
	bx	r6
	mov	r3, #2
	mov	r0, r4
	str	r3, [r5, #64]
	bl	fireBullet
	str	r4, [r5, #28]
	b	.L201
.L331:
	ldr	r3, .L334+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L217
	b	.L218
.L325:
	cmp	r8, #1
	ldreq	r3, [r5, #8]
	subeq	ip, ip, r3
	mvn	r3, #0
	ldr	r0, [r5, #20]
	streq	ip, [r5, #4]
	str	r3, [r5, #36]
	add	r0, ip, r0
	ldr	r6, [r5]
	b	.L210
.L327:
	cmp	r8, #1
	ldreq	r3, [r5, #8]
	addeq	ip, ip, r3
	mov	r3, #1
	ldr	r0, [r5, #20]
	streq	ip, [r5, #4]
	str	r3, [r5, #36]
	add	r0, ip, r0
	ldr	r6, [r5]
	b	.L210
.L332:
	cmp	r9, #1
	ldreq	r3, [r5, #48]
	addeq	r6, r6, r3
	mov	r3, #0
	ldr	ip, [r5, #4]
	ldr	r0, [r5, #20]
	streq	r6, [r5]
	str	r3, [r5, #36]
	add	r0, ip, r0
	b	.L210
.L335:
	.align	2
.L334:
	.word	player
	.word	67109120
	.word	oldButtons
	.word	enemies
	.word	collision
	.word	buttons
	.word	enemies+2240
	.word	timer
	.word	71000
	.word	fell
	.word	ini
	.word	poffset
	.word	dball
	.word	11025
	.word	2054
	.word	hit
	.word	playSoundB
	.word	smiles
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L353
	ldr	r2, [r3]
	cmp	r2, #0
	push	{r4, r5, r6, lr}
	beq	.L337
	ldr	r2, .L353+4
	ldr	r1, .L353+8
	ldr	r2, [r2]
	ldr	r0, [r1]
	add	r2, r2, #29
	cmp	r2, r0
	bge	.L351
.L337:
	mov	r2, #0
	str	r2, [r3]
.L338:
	bl	updatePlayer
	ldr	r4, .L353+12
	add	r5, r4, #2240
.L339:
	mov	r0, r4
	add	r4, r4, #56
	bl	updateEnemies
	cmp	r4, r5
	bne	.L339
	ldr	r4, .L353+16
	add	r5, r4, #180
.L341:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L352
.L340:
	add	r4, r4, #36
	cmp	r5, r4
	bne	.L341
	pop	{r4, r5, r6, lr}
	bx	lr
.L352:
	mov	r0, r4
	bl	updateBullet.part.2
	b	.L340
.L351:
	ldr	r3, [r1, #48]
	add	r0, r3, r0
	str	r0, [r1]
	b	.L338
.L354:
	.align	2
.L353:
	.word	fell
	.word	ini
	.word	player
	.word	enemies
	.word	bullets
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L358
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, .L358+4
	ldr	r3, [r1, #64]
	ldr	r0, [r0]
	lsl	r3, r3, #21
	cmp	r0, #0
	ldrh	r0, [r1]
	ldrh	r1, [r1, #12]
	lsr	r3, r3, #16
	addeq	r3, r3, r1
	addne	r1, r1, #120
	lsleq	r3, r3, #2
	addne	r3, r3, r1
	ldreq	r1, .L358+8
	ldrne	r1, .L358+8
	addeq	r3, r3, #492
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	lslne	r3, r3, #2
	addeq	r3, r3, #2
	strh	r3, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	bx	lr
.L359:
	.align	2
.L358:
	.word	player
	.word	poffset
	.word	shadowOAM+864
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L401
	sub	sp, sp, #20
	mov	r1, #0
	mov	r7, r4
	mov	r8, #512
	ldr	r5, .L401+4
	b	.L363
.L362:
	cmp	r6, #40
	add	r7, r7, #56
	mov	r1, r6
	beq	.L396
.L363:
	ldr	r3, [r7, #32]
	add	r6, r1, #1
	cmp	r3, #0
	lsleq	r3, r6, #3
	strheq	r8, [r5, r3]	@ movhi
	beq	.L362
	mov	r0, r7
	bl	drawEnemies.part.0
	cmp	r6, #40
	add	r7, r7, #56
	mov	r1, r6
	bne	.L363
.L396:
	ldr	r6, .L401+8
	ldr	r3, .L401+12
	ldr	r7, .L401+16
	ldr	ip, [r3]
	ldr	r10, .L401+20
	ldr	r3, .L401+24
	ldr	r2, [r6, #40]
	smull	r0, r1, ip, r3
	smull	r8, r9, r2, r7
	smull	r2, r3, ip, r10
	stm	sp, {r2-r3}
	ldr	r3, [r6, #40]
	asr	r3, r3, #31
	rsb	r3, r3, r9, asr #2
	mov	r0, r3
	ldr	r2, [sp, #4]
	asr	ip, ip, #31
	rsb	r1, ip, r1, asr #6
	smull	r8, r9, r3, r7
	rsb	ip, ip, r2, asr #12
	smull	r2, r3, r1, r7
	stm	sp, {r2-r3}
	smull	r2, r3, ip, r7
	mov	r7, r0
	ldr	lr, .L401+28
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	add	r3, r0, r0, lsl #2
	ldr	r0, [r6, #40]
	mov	fp, lr
	mov	r10, lr
	sub	r3, r0, r3, lsl #1
	mov	r0, #0	@ movhi
	ldr	r2, .L401+28
	add	r3, r3, #66
	lsl	r3, r3, #1
	strh	r3, [r2, #4]	@ movhi
	ldr	r3, .L401+32
	strh	r3, [r2, #2]	@ movhi
	asr	r3, r7, #31
	rsb	r3, r3, r9, asr #2
	add	r3, r3, r3, lsl #2
	sub	r3, r7, r3, lsl #1
	add	r3, r3, #66
	strh	r0, [lr, #8]!	@ movhi
	strh	r0, [fp, #16]!	@ movhi
	strh	r0, [r10, #24]!	@ movhi
	lsl	r3, r3, #1
	strh	r0, [r5]	@ movhi
	ldr	r0, [sp, #4]
	strh	r3, [r2, #12]	@ movhi
	asr	r3, r1, #31
	rsb	r3, r3, r0, asr #2
	mov	r8, r2
	add	r3, r3, r3, lsl #2
	ldr	r2, [sp, #12]
	ldr	r7, .L401+36
	sub	r1, r1, r3, lsl #1
	asr	r3, ip, #31
	rsb	r3, r3, r2, asr #2
	ldr	r2, [r7]
	cmp	r2, #10
	ldr	r2, .L401+40
	mov	r0, #0	@ movhi
	strh	r2, [r10, #2]	@ movhi
	mov	r2, #64	@ movhi
	add	r3, r3, r3, lsl #2
	sub	ip, ip, r3, lsl #1
	add	r3, ip, #66
	add	r1, r1, #66
	lsl	r1, r1, #1
	lsl	r3, r3, #1
	strh	r1, [r8, #20]	@ movhi
	strh	r3, [r8, #28]	@ movhi
	ldr	r1, .L401+44
	ldr	ip, .L401+48
	ldr	r3, .L401+52
	strh	r0, [r8]	@ movhi
	strh	r1, [lr, #2]	@ movhi
	strh	ip, [fp, #2]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	ble	.L397
.L364:
	ldr	r3, .L401+56
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L390
	ldr	r9, .L401+60
.L365:
	mov	r7, #0
	mov	r10, #512
	ldr	r8, .L401+64
.L370:
	ldr	r3, [r8, #32]
	cmp	r3, #0
	lsleq	r3, r7, #3
	addeq	r3, r3, #336
	strheq	r10, [r5, r3]	@ movhi
	bne	.L398
.L369:
	add	r7, r7, #1
	cmp	r7, #5
	add	r8, r8, #36
	bne	.L370
	mov	r2, #117440512
	ldr	r1, .L401+4
	mov	r3, #512
	mov	r0, #3
	mov	lr, pc
	bx	r9
	ldr	r2, .L401+68
	sub	r1, r2, #56
	b	.L374
.L371:
	cmp	r1, r4
	add	r4, r4, #56
	beq	.L399
	cmp	r2, r4
	beq	.L360
.L374:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L371
	ldr	r3, [r4, #44]
	cmp	r3, #1
	bne	.L371
.L360:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L398:
	mov	r1, r7
	mov	r0, r8
	bl	drawBullet.part.3
	b	.L369
.L390:
	ldr	r3, [r7]
	cmp	r3, #99
	bgt	.L366
	cmp	r3, #10
	ble	.L400
	ldr	r2, .L401+16
	smull	r0, r1, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #2
	ldr	r10, .L401+72
	beq	.L395
	ldr	r2, [r10]
	cmp	r2, #1
	beq	.L393
.L395:
	ldr	r8, .L401+76
	ldr	r9, .L401+60
	b	.L367
.L366:
	mov	r3, #1
	ldr	r9, .L401+60
	str	r3, [r6, #52]
	b	.L365
.L399:
	ldr	r3, .L401+80
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L360
	ldr	r3, .L401+84
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r6, #60]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L397:
	bl	drawPlayer
	b	.L364
.L400:
	ldr	r10, .L401+72
	ldr	r8, .L401+76
	ldr	r9, .L401+60
.L367:
	add	r3, r3, #1
	str	r3, [r7]
	mov	lr, pc
	bx	r8
	ldr	r1, .L401+88
	smull	r2, r3, r0, r1
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3, lsl #1
	str	r0, [r10]
	b	.L365
.L393:
	ldr	r2, [r6, #4]
	mvn	r2, r2, lsl #17
	ldr	fp, .L401+92
	mov	r1, fp
	mov	r3, #512
	mvn	r2, r2, lsr #17
	mov	r9, fp
	ldr	r0, [r6]
	strh	r0, [r1, #112]!	@ movhi
	strh	r3, [r9], #116	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	r8, .L401+76
	str	r3, [sp]
	mov	lr, pc
	bx	r8
	subs	r2, r0, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	ip, r2, #83
	lsl	ip, ip, #2
	ldr	r3, [sp]
	strh	ip, [r9]	@ movhi
	sub	r1, fp, #864
	mov	r2, #117440512
	mov	r0, #3
	ldr	r9, .L401+60
	mov	lr, pc
	bx	r9
	ldr	r3, [r7]
	b	.L367
.L402:
	.align	2
.L401:
	.word	enemies
	.word	shadowOAM
	.word	player
	.word	timer
	.word	1717986919
	.word	1759218605
	.word	274877907
	.word	shadowOAM+488
	.word	16604
	.word	gameFrame
	.word	16394
	.word	16594
	.word	16404
	.word	16579
	.word	gameOverc
	.word	DMANow
	.word	bullets
	.word	enemies+2240
	.word	coinFlip
	.word	rand
	.word	dball
	.word	smiles
	.word	715827883
	.word	shadowOAM+864
	.size	drawGame, .-drawGame
	.comm	coinFlip,4,4
	.comm	gameFrame,4,4
	.comm	gameOverc,4,4
	.comm	smiles,4,4
	.comm	poffset,4,4
	.comm	dball,4,4
	.comm	cheatHit,4,4
	.comm	jump,4,4
	.comm	remain,4,4
	.comm	enemyHit,4,4
	.comm	fell,4,4
	.comm	ini,4,4
	.comm	timer,4,4
	.comm	count,4,4
	.comm	remainingLives,4,4
	.comm	enemiesRemaining,4,4
	.comm	shadowOAM,1024,4
	.comm	livesc,60,4
	.comm	strongs,220,4
	.comm	ebullets,180,4
	.comm	bullets,180,4
	.comm	enemies,2240,4
	.comm	player,76,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"

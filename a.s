	.comm	g4,800012,4
	.comm	g0,17600264,4
	.comm	g3,4,4
	.comm	g1,800012,4
	.comm	g2,800012,4
	.comm	g5,4,4
	.text
	.align	2
	.global	main
	.type	main, @function
main:
	add	sp,sp,-256
	sw	ra,252(sp)
	sw	s6,0(sp)
	sw	s1,4(sp)
	sw	s4,8(sp)
	sw	s5,12(sp)
	sw	s3,16(sp)
	sw	s2,20(sp)
	sw	s0,24(sp)
	lui	a5,%hi(g4)
	add	s1,a5,%lo(g4)
	lui	a5,%hi(g1)
	add	s0,a5,%lo(g1)
	lui	a5,%hi(g0)
	add	s2,a5,%lo(g0)
	lui	a5,%hi(g2)
	add	s3,a5,%lo(g2)
	call	getint
	mv	t0,a0
	mv	s4,t0
.l14:
	li	a4,0
	xor	t0,s4,a4
	snez	t0,t0
	beq	t0,zero,.l15
	li	a4,1
	sub	t0,s4,a4
	mv	s4,t0
	call	getint
	mv	t0,a0
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
	mv	t1,t0
	li	s5,0
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	li	t0,1
	li	s6,1
	li	t2,1
.l16:
	add	t3,t1,1
	slt	t4,t2,t3
	beq	t4,zero,.l14
	sw	t2,56(sp)
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	call	getint
	lw	t2,56(sp)
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
	mv	t4,a0
	mv	t3,t4
	sw	t2,56(sp)
	sw	t3,72(sp)
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	call	getint
	lw	t2,56(sp)
	lw	t3,72(sp)
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
	mv	t4,a0
	mv	t5,t4
	sw	t2,56(sp)
	sw	t3,72(sp)
	sw	t5,80(sp)
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	mv	a0,t3
	mv	a1,s5
	call	_xor
	lw	t2,56(sp)
	lw	t3,72(sp)
	lw	t5,80(sp)
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
	mv	t4,a0
	mv	t3,t4
	sw	t2,56(sp)
	sw	t3,72(sp)
	sw	t5,80(sp)
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	mv	a0,t5
	mv	a1,s5
	call	_xor
	lw	t2,56(sp)
	lw	t3,72(sp)
	lw	t5,80(sp)
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
	mv	t4,a0
	mv	t5,t4
	li	a4,1
	xor	t4,t3,a4
	seqz	t4,t4
	beq	t4,zero,.l18
	sll	t4,s6,2
	add	a5,s1,t4
	sw	t0,0(a5)
	sll	t4,t0,2
	add	a5,s0,t4
	sw	t5,0(a5)
	li	a4,22
	mul	t4,t0,a4
	li	a4,1
	sub	t6,s6,a4
	sll	s7,t6,2
	add	a5,s1,s7
	lw	t6,0(a5)
	sll	s7,t4,2
	add	a5,s2,s7
	sw	t6,0(a5)
	li	a4,1
	sub	s7,s6,a4
	sll	t4,s7,2
	li	a4,1
	sub	s7,s6,a4
	sll	t4,s7,2
	add	a5,s1,t4
	lw	s7,0(a5)
	sll	t4,s7,2
	add	a5,s3,t4
	lw	s7,0(a5)
	add	t4,s7,1
	sll	s7,t0,2
	add	a5,s3,s7
	sw	t4,0(a5)
	sw	t2,56(sp)
	sw	t3,72(sp)
	sw	t5,80(sp)
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	mv	a0,t0
	call	calcfa
	lw	t2,56(sp)
	lw	t3,72(sp)
	lw	t5,80(sp)
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
	add	s7,t0,1
	mv	t0,s7
	add	s7,s6,1
	mv	s6,s7
	j	.l19
.l18:
	li	a4,2
	xor	s7,t3,a4
	seqz	s7,s7
	beq	s7,zero,.l20
	li	a4,1
	sub	s7,s6,a4
	sub	s7,s7,t5
	li	a4,1
	sub	s7,s6,a4
	sub	s7,s7,t5
	sll	t3,s7,2
	add	a5,s1,t3
	lw	s7,0(a5)
	sll	t3,s6,2
	add	a5,s1,t3
	sw	s7,0(a5)
	add	s7,s6,1
	mv	s6,s7
	j	.l19
.l20:
	li	a4,1
	sub	s7,s6,a4
	sll	t3,s7,2
	add	a5,s1,t3
	lw	s7,0(a5)
	li	a4,1
	sub	t3,s6,a4
	sll	t4,t3,2
	li	a4,1
	sub	t4,s6,a4
	sll	t3,t4,2
	add	a5,s1,t3
	lw	t4,0(a5)
	sll	t3,t4,2
	add	a5,s3,t3
	lw	t4,0(a5)
	sub	t3,t4,t5
	sw	t2,56(sp)
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	mv	a0,s7
	mv	a1,t3
	call	query
	lw	t2,56(sp)
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
	mv	s7,a0
	mv	s5,s7
	sw	t2,56(sp)
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	mv	a0,s5
	call	putint
	lw	t2,56(sp)
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
	sw	t2,56(sp)
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	li	a0,10
	call	putchar
	lw	t2,56(sp)
	lui	a5,%hi(g5)
	lw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	lw	t1,%lo(g3)(a5)
.l21:
.l19:
	add	s7,t2,1
	mv	t2,s7
	j	.l16
.l15:
	lui	a5,%hi(g5)
	sw	t0,%lo(g5)(a5)
	lui	a5,%hi(g3)
	sw	t1,%lo(g3)(a5)
	li	a0,0
	lw	s6,0(sp)
	lw	s1,4(sp)
	lw	s4,8(sp)
	lw	s5,12(sp)
	lw	s3,16(sp)
	lw	s2,20(sp)
	lw	s0,24(sp)
	lw	ra,252(sp)
	add	sp,sp,256
	jr	ra
	.size	main, .-main
	.text
	.align	2
	.global	calcfa
	.type	calcfa, @function
calcfa:
	add	sp,sp,-112
	sw	ra,108(sp)
	mv	t0,a0
	lui	a5,%hi(g0)
	add	t2,a5,%lo(g0)
	li	t1,1
.l8:
	slt	t3,t1,22
	beq	t3,zero,.l9
	li	a4,22
	mul	t3,t0,a4
	add	t4,t3,t1
	li	a4,22
	mul	t3,t0,a4
	add	t5,t3,t1
	li	a4,1
	sub	t5,t5,a4
	li	a4,22
	mul	t5,t0,a4
	add	t3,t5,t1
	li	a4,1
	sub	t3,t3,a4
	sll	t5,t3,2
	add	a5,t2,t5
	lw	t3,0(a5)
	li	a4,22
	mul	t5,t3,a4
	add	t3,t5,t1
	li	a4,1
	sub	t3,t3,a4
	li	a4,22
	mul	t5,t0,a4
	add	t3,t5,t1
	li	a4,1
	sub	t3,t3,a4
	li	a4,22
	mul	t5,t0,a4
	add	t3,t5,t1
	li	a4,1
	sub	t3,t3,a4
	sll	t5,t3,2
	add	a5,t2,t5
	lw	t3,0(a5)
	li	a4,22
	mul	t5,t3,a4
	add	t3,t5,t1
	li	a4,1
	sub	t3,t3,a4
	sll	t5,t3,2
	add	a5,t2,t5
	lw	t3,0(a5)
	sll	t5,t4,2
	add	a5,t2,t5
	sw	t3,0(a5)
	add	t4,t1,1
	mv	t1,t4
	j	.l8
.l9:
	li	a0,0
	lw	ra,108(sp)
	add	sp,sp,112
	jr	ra
	.size	calcfa, .-calcfa
	.text
	.align	2
	.global	query
	.type	query, @function
query:
	add	sp,sp,-64
	sw	ra,60(sp)
	mv	t1,a0
	mv	t3,a1
	lui	a5,%hi(g1)
	add	t0,a5,%lo(g1)
	lui	a5,%hi(g0)
	add	t4,a5,%lo(g0)
	li	t2,21
	li	t5,2097152
.l10:
	beq	t3,zero,.l11
.l12:
	sgt	t6,t5,t3
	beq	t6,zero,.l13
	li	a4,1
	sub	t6,t2,a4
	mv	t2,t6
	li	a4,2
	div	t6,t5,a4
	mv	t5,t6
	j	.l12
.l13:
	sub	t6,t3,t5
	mv	t3,t6
	li	a4,22
	mul	t6,t1,a4
	li	a4,22
	mul	t6,t1,a4
	add	s7,t6,t2
	sll	t6,s7,2
	add	a5,t4,t6
	lw	s7,0(a5)
	mv	t1,s7
	j	.l10
.l11:
	sll	s7,t1,2
	add	a5,t0,s7
	lw	t1,0(a5)
	mv	a0,t1
	lw	ra,60(sp)
	add	sp,sp,64
	jr	ra
	.size	query, .-query
	.text
	.align	2
	.global	_xor
	.type	_xor, @function
_xor:
	add	sp,sp,-400
	sw	ra,396(sp)
	sw	s1,0(sp)
	sw	s2,4(sp)
	sw	s0,8(sp)
	mv	t0,a0
	mv	s2,a1
	add	s1,sp,20
	add	s0,sp,180
	mv	a0,t0
	mv	a1,s1
	call	_2
	mv	a0,s2
	mv	a1,s0
	call	_2
	li	t0,39
	mv	t1,t0
	li	t0,0
.l4:
	li	a4,-1
	xor	t2,t1,a4
	snez	t2,t2
	beq	t2,zero,.l5
	sll	t2,t1,2
	add	a5,s1,t2
	lw	t3,0(a5)
	sll	t2,t1,2
	add	a5,s0,t2
	lw	t4,0(a5)
	add	t2,t3,t4
	li	a4,1
	xor	t4,t2,a4
	seqz	t4,t4
	beq	t4,zero,.l6
	li	a4,2
	mul	t4,t0,a4
	add	t2,t4,1
	mv	t0,t2
	j	.l7
.l6:
	li	a4,2
	mul	t4,t0,a4
	mv	t0,t4
.l7:
	li	a4,1
	sub	t4,t1,a4
	mv	t1,t4
	j	.l4
.l5:
	mv	a0,t0
	lw	s1,0(sp)
	lw	s2,4(sp)
	lw	s0,8(sp)
	lw	ra,396(sp)
	add	sp,sp,400
	jr	ra
	.size	_xor, .-_xor
	.text
	.align	2
	.global	_2
	.type	_2, @function
_2:
	add	sp,sp,-64
	sw	ra,60(sp)
	mv	t2,a0
	mv	t1,a1
	li	t0,0
.l0:
	li	a4,0
	xor	t3,t2,a4
	snez	t3,t3
	beq	t3,zero,.l1
	li	a4,2
	rem	t3,t2,a4
	sll	t4,t0,2
	add	a5,t1,t4
	sw	t3,0(a5)
	add	t4,t0,1
	mv	t0,t4
	li	a4,2
	div	t4,t2,a4
	mv	t2,t4
	j	.l0
.l1:
	mv	t4,t0
.l2:
	slt	t2,t4,40
	beq	t2,zero,.l3
	sll	t2,t4,2
	li	a4,0
	add	a5,t1,t2
	sw	a4,0(a5)
	add	t2,t4,1
	mv	t4,t2
	j	.l2
.l3:
	mv	a0,t0
	lw	ra,60(sp)
	add	sp,sp,64
	jr	ra
	.size	_2, .-_2
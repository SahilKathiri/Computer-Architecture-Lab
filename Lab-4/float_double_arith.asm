.data
	fnum1: .float 5.6
	fnum2: .float 2.7

	dnum1: .double 5.6
	dnum2: .double 2.7

	fmsg: .asciiz "The Float numbers are:    "
	dmsg: .asciiz "The Double numbers are:    "
	tab: .asciiz "\t"
	lfeed: .asciiz "\n"

	msg_add: .asciiz "Sum is: "
	msg_sub: .asciiz "Difference is: "
	msg_mul: .asciiz "Product is: "
	msg_div: .asciiz "Quotient is: "

.text
.globl main
main:
	######### FLOAT #########
	l.s $f1, fnum1
	l.s $f2, fnum2

	la $a0, fmsg
	li $v0, 4
	syscall
	mov.s $f12, $f1
	li $v0, 2
	syscall
	la $a0, tab
	li $v0, 4
	syscall
	mov.s $f12, $f2
	li $v0, 2
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	la $a0, msg_add
	li $v0, 4
	syscall
	add.s $f12, $f1, $f2
	li $v0, 2
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	la $a0, msg_sub
	li $v0, 4
	syscall
	sub.s $f12, $f1, $f2
	li $v0, 2
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	la $a0, msg_mul
	li $v0, 4
	syscall
	mul.s $f12, $f1, $f2
	li $v0, 2
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	la $a0, msg_div
	li $v0, 4
	syscall
	div.s $f12, $f1, $f2
	li $v0, 2
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	######### DOUBLE #########
	l.d $f0, dnum1
	l.d $f2, dnum2

	la $a0, dmsg
	li $v0, 4
	syscall
	mov.d $f12, $f0
	li $v0, 3
	syscall
	la $a0, tab
	li $v0, 4
	syscall
	mov.d $f12, $f2
	li $v0, 3
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	la $a0, msg_add
	li $v0, 4
	syscall
	add.d $f12, $f0, $f2
	li $v0, 3
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	la $a0, msg_sub
	li $v0, 4
	syscall
	sub.d $f12, $f0, $f2
	li $v0, 3
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	la $a0, msg_mul
	li $v0, 4
	syscall
	mul.d $f12, $f0, $f2
	li $v0, 3
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	la $a0, msg_div
	li $v0, 4
	syscall
	div.d $f12, $f0, $f2
	li $v0, 3
	syscall
	la $a0, lfeed
	li $v0, 4
	syscall

	# Exit
	li $v0, 10
	syscall

.data
	msg_before: .asciiz "Numbers before swapping:   "
	msg_after: .asciiz "\n\nNumbers afer swapping:   "
	tab: .asciiz "\t"

	num1: .float 123.43
	num2: .float -0.53e5
.text
.globl main
main:
	
	l.s $f1, num1
	l.s $f2, num2

	la $a0, msg_before
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

	s.s $f2, num1
	s.s $f1, num2

	la $a0, msg_after
	li $v0, 4
	syscall
	l.s $f1, num1
	mov.s $f12, $f1
	li $v0, 2
	syscall
	la $a0, tab
	li $v0, 4
	syscall
	l.s $f1, num2
	mov.s $f12, $f1
	li $v0, 2
	syscall

	# Exit
	li $v0, 10
	syscall

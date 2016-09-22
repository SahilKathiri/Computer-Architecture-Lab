.data
	A: .float 2.0
	B: .float 3.0
	C: .float 4.0

	msg_prompt_x: .asciiz "Enter the value of x:  "
	msg_result: .asciiz "\n\nax^2 + bx + c = "

.text
.globl main
main:
	la $a0, msg_prompt_x
	li $v0, 4
	syscall

	li $v0, 6
	syscall


	l.s $f2, A
	mul.s $f2, $f2, $f0
	mul.s $f2, $f2, $f0

	l.s $f3, B
	mul.s $f3, $f3, $f0
	add.s $f1, $f2, $f3

	l.s $f4, C
	add.s $f1, $f1, $f4

	la $a0, msg_result
	li $v0, 4
	syscall
	li $v0, 2
	mov.s $f12, $f1
	syscall

	li $v0, 10
	syscall

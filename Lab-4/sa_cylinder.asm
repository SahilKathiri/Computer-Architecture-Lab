.data 
	pi: .float 3.14159

	msg_h: .asciiz "Enter height, h = "
	msg_r: .asciiz "\nEnter radius, r = "
	msg_res: .asciiz "\n\nThe surface area of the cylinder = "

.text
.globl main
main: 
	la $a0, msg_r
	li $v0, 4
	syscall
	li $v0, 6
	syscall
	mov.s $f1, $f0		# f1 = Radius

	la $a0, msg_h
	li $v0, 4
	syscall
	li $v0, 6
	syscall
	mov.s $f2, $f0		# f2 = Height

	l.s $f4, pi			# f4 = pi

	mul.s $f5, $f1, $f2
	mul.s $f5, $f5, $f4
	add.s $f5, $f5, $f5

	mul.s $f6, $f1, $f1 
	mul.s $f6, $f6, $f4
	add.s $f6, $f6, $f6

	add.s $f12, $f5, $f6
	la $a0, msg_res
	li $v0, 4
	syscall
	li $v0, 2
	syscall

	# Exit
	li $v0, 10
	syscall


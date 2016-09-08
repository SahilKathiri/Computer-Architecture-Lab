.data 
	aSide: .word 5
	bSide: .word 6
	cSide: .word 4
	sa:    .word 0
	vol:   .word 0

	# Messages
	msg_sa:	.asciiz "Surface Area: "
	msg_vol: .asciiz "Volume: " 
	newline: .asciiz "\n"

.text
.globl main
main:	lw $t0, aSide
		lw $t1, bSide
		lw $t2, cSide

		# For Volume = a * b * c
		mul $t4, $t0, $t1
		mul $t4, $t4, $t2
		sw $t4, vol

		#For Surface Area = 2(a*b + b*c + c*a)
		mul $t5, $t0, $t1
		mul $t6, $t1, $t2
		mul $t7, $t2, $t0
		add $t5, $t5, $t6
		add $t5, $t5, $t7
		li $t6, 2
		mul $t5, $t5, $t6
		sw $t5, sa

		# Print Volume
		li $v0, 4
		la $a0, msg_vol
		syscall
		li $v0, 1
		lw $a0, vol
		syscall

		# Print newline
		li $v0, 4
		la $a0, newline
		syscall

		# Print Surface Area
		li $v0, 4
		la $a0, msg_sa
		syscall
		li $v0, 1
		lw $a0, sa
		syscall

		# Exit program
		li $v0,10
		syscall

.data 
	n: .word 10
	sum_of_squares: .word 0

	#Messages
	msg_res: .asciiz "The sum of squares till N is: "
	newline: .asciiz "\n"

.text
.globl main
main:	lw $t0, n
		li $t1, 1
		li $t4, 0 	# Sum

	suml:
		mul $t3,$t1,$t1
		add $t4, $t4, $t3
		addi $t1, $t1, 1
		ble $t1,$t0,suml

		sw $t4, sum_of_squares

		# Print Sum of Squares
		li $v0, 4
		la $a0, msg_res
		syscall
		li $v0, 1
		lw $a0, sum_of_squares
		syscall

		# Exit program
		li $v0,10
		syscall

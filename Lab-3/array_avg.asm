.data
	list: .word 11, 27, 13, 4, 25, 26, 57, 60, 59, 10
	size: .word 10

	spc: .asciiz "\t"
	msg_res: .asciiz "The average of the given array is: "

.text 
.globl main
main:	lw $t3, size	# Limit
		la $t1, list	# Array
		li $t2, 0		# Index
		li $t4, 0		# Sum

		l1: beq $t2, $t3, l2
			
			lw $a0, ($t1)
			li $v0, 1		# Print element
			syscall
			li $v0,4
			la $a0,spc		# Print space
			syscall

			lw $t5, ($t1)
			add $t4, $t4, $t5

			addi $t2, $t2, 1
			addi $t1, $t1, 4

			j l1

		l2:	
			lw $t5, size
			div $t4, $t4, $t5

			li $v0, 4
			la $a0, msg_res
			syscall
			li $v0, 1
			move $a0, $t4
			syscall
			li $v0,10
			syscall

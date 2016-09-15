.data
	list: .word 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
	size: .word 10

	spc: .asciiz "\t"
	msg_res: .asciiz "The Median of the given array is: "

.text 
.globl main
main:	lw $t3, size	# Limit
		la $t1, list	# Array
		# li $t2, 0		# Index
		li $t4, 0		# Median

		li $t7, 2
		rem $t6,$t3,$t7

		beqz $t6, even

		div $t7,$t3,$t7
		li $t6, 4
		mul $t7,$t7,$t6
		add $t1, $t1, $t7

		li $v0, 4
		la $a0, msg_res
		syscall
		li $v0,1
		lw $a0, ($t1)
		syscall
		li $v0,10
		syscall
		
		even:	
			div $t7,$t3,$t7
			li $t6, 4
			mul $t7,$t7,$t6
			add $t1, $t1, $t7
			lw $t2, ($t1)
			sub $t1, $t1, $t6
			lw $t3, ($t1)
			add $t2, $t2, $t3
			li $t6, 2
			div $t2, $t2, $t6

			li $v0, 4
			la $a0, msg_res
			syscall
			li $v0,1
			move $a0, $t2
			syscall
			li $v0,10
			syscall


		

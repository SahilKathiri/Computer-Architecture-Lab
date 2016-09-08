.data 
	n: .word 10
	prev1: .word 0
	prev2: .word -1

	# Messages
	msg_res: .asciiz "The Fibonnaci series is: \n"
	tab: .asciiz "\t"

.text
.globl main
main:	lw $t0, n
		li $t7, 1
		
		# Print newline
		li $v0, 4
		la $a0, msg_res
		syscall

		li $t1, -1 # First/prev2
		
		li $t2, 1 # Second/prev1
		
		li $t3, 1 # Curr
			
	loop: 
		add $t3, $t2, $t1
		li $v0, 1
		move $a0, $t3
		syscall
		li $v0, 4
		la $a0, tab
		syscall

		move $t1, $t2
		move $t2, $t3

		addi $t7, $t7, 1
		ble $t7,$t0,loop
		# END loop

		# Exit program
		li $v0,10
		syscall



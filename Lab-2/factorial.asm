.data 

	# Messages
	msg_res: .asciiz "! = "
	msg_N: .asciiz "N = "

.text
.globl main
main:	li $t2, 1	# Index i
		li $t4, 1	# Result

		li $v0, 4
		la $a0, msg_N
		syscall
		# Get N
		li $v0, 5
		syscall
		move $t0, $v0	# t0 = N

	loop:
		mul $t4, $t4, $t2
		addi $t2, $t2, 1
		ble $t2,$t0,loop
		# END loop
		
		# Print Result
		li $v0, 1
		move $a0, $t0		# "N"
		syscall
		li $v0, 4
		la $a0, msg_res		# "!= "
		syscall
		li $v0, 1
		move $a0, $t4		#"Result"
		syscall

		# Exit program
		li $v0,10
		syscall


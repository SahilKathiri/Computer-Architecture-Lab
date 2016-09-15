.data 
	array1: .space 12	# Array size = 12/4 = 3
.text
.globl main
main:	la $t0,array1
		li $t1,5
		sw $t1, ($t0)	# A[0] = 5
		li $t1,13
		sw $t1, 4($t0)	# A[1] = 13
		li $t1,-7
		sw $t1, 8($t0)	# A[2] = -7
		li $v0,10
		syscall

.data
# x: .word 3
# y: .word 5
ans_add_i: .word 0
ans_add_f: .float 0.0

f1: .float 1.2
f2: .float 2.3
f3: .float 3.4
f4: .float 4.5
f5: .float 5.6
f6: .float 6.7

lfeed: .ascii "\n\n"

.text
.globl main
.ent main
main:
	li $a0, 1
	li $a1, 2
	li $a2, 3
	li $a3, 4
	jal add_int
	sw $v0, ans_add_i
	move $a0, $v0
	li $v0, 1
	syscall

	la $a0, lfeed
	li $v0, 4
	syscall

	subu $sp, $sp, 16 
	l.s $f12, f1
	l.s $f14, f2
	l.s $f3, f3
	l.s $f4, f4
	l.s $f5, f5
	l.s $f6, f6
	s.s $f3, ($sp)
	s.s $f4, 4($sp)
	s.s $f5, 8($sp)
	s.s $f6, 12($sp)

	jal add_float
	s.s $f0, ans_add_f
	mov.s $f12, $f0
	li $v0, 2
	syscall

	li $v0, 10
	syscall 
.end main

# Adds four integers in $a0-$a3 
.globl add_int
.ent add_int
add_int:
	li $v0, 1
	add $v0, $a0, $a1
	add $v0, $v0, $a2
	add $v0, $v0, $a3
	jr $ra
.end add_int

# Adds four floats in stack
.globl add_float
.ent add_float
add_float:
	l.s $f5, ($sp)
	l.s $f6, 4($sp)
	l.s $f7, 8($sp)
	l.s $f8, 12($sp)
	addu $sp, $sp, 16

	add.s $f0, $f12, $f14 
	add.s $f0, $f0, $f5
	add.s $f0, $f0, $f6 
	add.s $f0, $f0, $f7 
	add.s $f0, $f0, $f8 
	jr $ra
.end add_float

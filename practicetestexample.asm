.data
h: .word 1, -2, 1
x: .word 1, 3, 1, 2
y:	.word 0, 0, 0, 0, 0, 0
Result:	.asciiz "The Elements of the resulting (6 X 1) vector [y()]: \n"
nline:	.asciiz "\n"
.text
.globl main
main:
la $s0, h
la $s1, x
la $s2, y

lw $t1, 0($s0)
lw $t2, 0($s1)
mul $s3, $t1, $t2
sw $s3, 0($s2)

lw $t1, 4($s0)
lw $t2, 0($s1)
mul $t3, $t1, $t2
lw $t1, 0($s0)
lw $t2, 4($s1)
mul $t4, $t1, $t2
add $s4, $t3, $t4
sw $s4, 4($s2)

lw $t1, 8($s0)
lw $t2, 0($s1)
mul $t3, $t1, $t2
lw $t1, 4($s0) 
lw $t2, 4($s1)
mul $t4, $t1, $t2
lw $t1, 0($s0)
lw $t2, 8($s1)
mul $t5, $t1, $t2
add $s5, $t3, $t4
add $s5, $s5, $t5
sw $s5, 8($s2)

lw $t1, 8($s0)
lw $t2, 4($s1)
mul $t3, $t1, $t2
lw $t1, 4($s0)
lw $t2, 8($s1)
mul $t4, $t1, $t2
lw $t1, 0($s0)
lw $t2, 12($s1)
mul $t5, $t1, $t2
add $s6, $t3, $t4
add $s6, $s6, $t5
sw $s6, 12($s2)

lw $t1, 8($s0)
lw $t2, 8($s1)
mul $t3, $t1, $t2
lw $t1, 4($s0)
lw $t2, 12($s1)
mul $t4, $t1, $t2 
add $s7, $t3, $t4
sw $s7, 16($s2)

lw $t1, 8($s0)
lw $t2, 12($s1)
mul $t8, $t1, $t2
sw $t8, 20($s2)

li $v0, 4
la $a0, Result
syscall
li $v0, 1
move $a0, $s3
syscall
li $v0, 4
la $a0, nline
syscall
li $v0, 1
move $a0, $s4
syscall
li $v0, 4
la $a0, nline
syscall
li $v0, 1
move $a0, $s5
syscall
li $v0, 4
la $a0, nline
syscall
li $v0, 1
move $a0, $s6
syscall
li $v0, 4
la $a0, nline
syscall
li $v0, 1
move $a0, $s7
syscall
li $v0, 4
la $a0, nline
syscall
li $v0, 1
move $a0, $t8
syscall
li $v0, 10
syscall
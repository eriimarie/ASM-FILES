.text
.globl main

main:
li $t0, 0
li $t1, 1
li $t2, 2
li $t3, 3
li $t4, 4
li $t5, 5

mul $s0, $t0, $t5
mul $s1, $t3, $t3
sub $s2, $s0, $s1
mul $a1, $t4, $s2

mul $s0, $t1, $t5
mul $s1, $t3, $t2
sub $s2, $s0, $s1
mul $a2, $t1, $s2

mul $s0, $t1, $t3
mul $s1, $t2, $t0
sub $s2, $s0, $s1
mul $a3, $t2, $s2

sub $s6, $a1, $a2
add $t0, $s6, $a3

la $a0, Answer
li $v0, 4
syscall 

move $a0, $t0
li $v0, 1
syscall 

li $v0, 10
syscall 

.data

Answer: .asciiz "The determinant value is : "

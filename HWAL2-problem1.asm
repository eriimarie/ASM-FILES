.text
.globl main 

main: 

la $a0, que1
li $v0, 4
syscall 

li $v0, 5
syscall 
move $t1, $v0

la $a0, que2
li $v0, 4
syscall

li $v0, 5 
syscall 
move $t2, $v0

la $a0, que3
li $v0, 4
syscall 

li $v0, 5
syscall 
move $t3, $v0

add $s0, $t1, $t2
add $t0, $t3, $s0

la $a0, total
li $v0, 4
syscall 

move $a0, $t0
li $v0, 1
syscall 

li $v0, 10
syscall 

.data

que1: .asciiz "Enter the first number: "
que2: .asciiz "Enter the second number: "
que3: .asciiz "Enter the third number: "
total: .asciiz "Total  " 


.text





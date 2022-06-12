.text
.globl main

main:
li $t0, 2
li $t1, 5
li $t2, 3

mul $t3, $t0, $t0
mul $t4, $t2, $t2
mul $t5, $t4, $t1

sub $s0, $t3, $t5

la $a0, total 
li $v0, 4
syscall 

move $a0, $s0
li $v0, 1
syscall 


      li  $v0, 10
      syscall
      
.data

total: .asciiz "Total of the Pell Equation value n=5 y=3 x=2 : "

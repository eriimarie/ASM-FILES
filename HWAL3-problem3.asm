.text
.globl main

main:
li $s0, 3
li $s1, 4
li $s2, 5

mul $s3, $s0, $s0
mul $t1, $s0, $s3

mul $s4, $s1, $s1
mul $t2, $s1, $s4

mul $s5, $s2, $s2
mul $t3, $s5, $s2



add $t0, $t1, $t2
add $t0, $t0, $t3

la $a0, total
li $v0, 4
syscall 

move $a0, $t0
li $v0, 1
syscall 


      li  $v0, 10
      syscall
      
      .data

total: .asciiz "x=3 y=4 z=5 Total of the 3rd degree Diophantine: "

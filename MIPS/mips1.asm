#Folder L1/1.asm 

.text
.globl main

main: 

li $t0, 1
li $t1, 2
li $s2, 3
li $t3, 4
li $s4, 5

      add   $t5, $t0, $t1
      add   $t6, $s2, $t3
      add   $t7, $s4, $t5
      add   $s0,$t7, $t6
   
      
      li    $v0, 10
      syscall 

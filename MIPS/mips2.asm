#Folder L2/2.asm 

.text
.globl main

main: 

li $s3 1


      addi    $s4, $s3, 2
      addi    $s5, $s4, 3
      addi    $s6, $s5, 4
      addi    $s7, $s6, 5
  
   
      
      li    $v0, 10
      syscall 

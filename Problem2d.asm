.globl main
.text 

main:		#equation   y=3  i=1   6i^2 - 6(y)+1
li $s1, 3 
li $s3, 1

mul $t1, $s3,$s3	#$t1= 1*1=1
mul $t2, $t1, 6		#t2= 1*6= 6

mul $t3, $s1, 6		#$t3= 3*6=18
add $t5, $t3, 1		#t5= 18+1=19

sub $t2, $t2, $t5	#t2= 6-19=-13

li $v0,1		
move $a0, $t2 		#move answer to $t2
syscall	

li $v0,10		#exit code
 syscall



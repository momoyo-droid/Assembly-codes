.data
	space: .byte ' '
.text
	
	li $v0, 5 #read a number
	syscall
	
	move $t0, $v0 #move the value of $v0 to $t0
	
	move $t1, $zero #assignin $t1 to zero
	
	while:
		bgt $t1, $t0, out #if $t0 is greater than $t1
		#print the value of $t1
		li $v0, 1
		move $a0, $t1
		syscall
		#print the space
		li $v0, 4
		la $a0, space
		syscall
		
		addi $t1, $t1, 1 #adding up to $t1 + 1
		j while #jump to while
	out:
		li $v0, 10
		syscall
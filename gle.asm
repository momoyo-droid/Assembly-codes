.data
	greater: .asciiz "the number is greater than zero"
	less: .asciiz "the number is less than zero"
	equal: .asciiz "the number is equal to zero"
.text
	
	li $v0, 5 #read entry
	syscall
	
	move $t0, $v0 #move the value of $v0 to $t0
	
	beq $t0, $zero, equalZero #if equal to zero, go to equalZero
	
	bgt $t0, $zero, greaterZero #if greater than zero, go to greaterZero
	
	blt $t0, $zero, lessZero #if less than zero, go to lessZero
	
	equalZero:
		li $v0, 4
		la $a0, equal #print string equal
		syscall
		
		li $v0, 10 #finish program
		syscall
		
	greaterZero:
		li $v0, 4
		la $a0, greater #print string greater
		syscall
		
		li $v0, 10 #finish program
		syscall
		
	lessZero:
		li $v0, 4
		la $a0, less #print string greater
		syscall
		
		li $v0, 10 #finish program
		syscall
.data
	str: .asciiz "Enter a number: "
	even: .asciiz "the number is even."
	odd: .asciiz "the number is odd."
.text

	li $v0, 4 #print str
	la $a0, str #move address str to $a0
	syscall
	
	li $v0, 5 #read entry
	syscall
	
	li $t0, 2 #assignin the value 2 to $t0
	div $v0, $t0 #dividing the value of $v0 by $t0
	
	mfhi $t1 #entire part of the division 
	
	beq $t1, $zero, printEven #if $t1 equal $zero, go to printEven
	#if not equal, execute:
	li $v0, 4
	la $a0, odd
	syscall
	
	li $v0, 10 #finish program
	syscall
	
	printEven:
		li $v0, 4 #print string
		la $a0, even #print string if number is even
		syscall
	
	li $v0, 10 #finish program
	syscall
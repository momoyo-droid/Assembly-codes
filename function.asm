.data
	msgUser: .asciiz "Entry a positive number: "
	msgEven: .asciiz "The number is even. "
	msgOdd: .asciiz "The number is odd. "
.text

	la $a0, msgUser #string msgUser on $a0
	jal printString #go to the function printString
	jal readEntry #go to the function readEntry
	
	move $a0, $v0 #move the entry to reg $a0
	jal isOdd #go to the function isEven
	
	
	beq $v0, $zero, printEven #checks if number is even 
	
	
	la $a0, msgOdd #if is not even, print the string msgOdd
	jal printString #calling the function printString
	jal finishProgram
	
	
	printEven: #if the number is even
		la $a0, msgEven
		jal printString
		jal finishProgram
	
	
	#checks if $a0 is odd number
	#return 1 if is even number
	#return 0 if is odd number
	isOdd:
		li $t0, 2 #assiginin 2 to $t0
		div $a0, $t0 #dividing $a0 by $t0
		mfhi $v0 #move rest of the division to $v0
		jr $ra #return to isOdd
	
	
	#function that receives a string in $a0 and print
	printString:
		li $v0, 4 #print string
		syscall
		jr $ra #return to printString
	
	
	#read the integer number
	readEntry:
		li $v0, 5 #read entry
		syscall
		jr $ra #return to readEntry
		
	
	finishProgram: #function to finish the program
		li $v0, 10
		syscall
		
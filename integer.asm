.data #specification of variables. data entry into main memory

	age: .word 20 #message to be displayed to the user.

.text #area for program instructions 
	li $v0, 1 #instruction for number printing.
	lw $a0, age #indicates the address where the message is.
	
	syscall
	li $v0, 10 #end the program
	syscall #close the program
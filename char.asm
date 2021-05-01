.data	#specification of variables. data entry into main memory
	character: .byte 'A' #character to be printed
.text #
	li $v0, 4 #instruction for character printing.
	la $a0, character #indicates the address where the message is.
	
	syscall #print
	li $v0, 10 #end the program
	syscall #close the program

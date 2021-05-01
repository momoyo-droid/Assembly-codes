.data #specification of variables. data entry into main memory
	msg: .asciiz "Hello, world!" #message to be displayed to the user.
.text #área para instruções do programa
	li $v0, 4 #instruction for string printing.
	la $a0, msg #indicates the address where the message is.
	syscall #print
	li $v0, 10 #end the program
	syscall #close the program
	

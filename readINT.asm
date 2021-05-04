.data #data entry
	msg: .asciiz "How old are you? " #question to the user
	aws: .asciiz "Your age is: " #presents to the user his age
.text #instructions program
	
	li $v0, 4 #print string msg
	la $a0, msg #move address of 'msg' to register $a0
	syscall #printin
	
	li $v0, 5 #read integers
	syscall #call to read
	
	move $t0, $v0 #assigning the o value $v0 (user) to $t0
	
	li $v0, 4 #print string aws
	la $a0, aws #move address of 'aws' to register $a0
	syscall
	
	li $v0, 1 #print integer
	move $a0, $t0 #move address of $t0 to $a0
	
	syscall
	li $v0, 10 #finish program
	syscall
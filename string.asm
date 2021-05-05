.data
	question: .asciiz "What is your name? " 
	name: .space 20
	hello: .asciiz "Hello, "
.text
	#print the question
	li $v0, 4
	la $a0, question
	syscall
	
	#read string
	li $v0, 8
	la $a0, name
	la $a1, 20
	syscall
	
	#print hello
	li $v0, 4
	la $a0, hello
	syscall
	
	#print name
	li $v0, 4
	la $a0, name
	syscall
	
	#finish program
	li $v0, 10
	syscall
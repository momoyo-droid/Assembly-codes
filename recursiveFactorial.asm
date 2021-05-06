.data 
	str: .asciiz "Enter a number: "
	result: .asciiz "\nThe factorial of the number is "
	number: .word 0
	answ: .word 0
.text
.globl main
	main:
		#read entry
		li $v0, 4
		la $a0, str
		syscall
		
		#read integer
		li $v0, 5
		syscall
		#puts the contents of $v0 in 'number '
		sw $v0, number
		
		#call the factorial function
		lw $a0, number #puts the contents of 'number' in $a0
		jal findFact
		sw $v0, answ
		
		#display the results
		li $v0, 4
		la $a0, result
		syscall
		
		li $v0, 1
		lw $a0, answ
		syscall
		
		#finish program
		li $v0, 10
		syscall

#---------------------------------------#
.globl findFact
	findFact:
		subu $sp, $sp, 8 
		sw $ra, ($sp) 
		sw $s0, 4($sp) 
		
		#base case
		li $v0, 1
		beq $a0, 0, factDone #if $a0 is equal to 0, stop recursion
		
		#findFact(number-1)
		move $s0, $a0
		sub $a0, $a0, 1
		jal findFact
		
		#multiplies the values found at the end of the recursion 
		mul $v0, $s0, $v0
		
		factDone:
			lw $ra, ($sp)
			lw $s0, 4($sp)
			addu $sp, $sp, 8
			jr $ra
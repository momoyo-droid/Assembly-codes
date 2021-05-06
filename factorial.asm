.data
	str: .asciiz "Enter a number: "
	strFact:  .asciiz "The factorial of "
	strFact2:  .asciiz " is "
.text
	main:

    	#print str
    	li $v0, 4
    	la $a0, str
    	syscall

    	#read entry
    	li $v0, 5
    	syscall
    	
    	#move the value of $v0 to $t3
    	move $t3, $v0

    	#initial factorial value
    	li $t4, 1

    	#copies the value typed to the $t 5 (loop control) 
    	move $t5, $t3

    	#stop condition 
    	li $t6, 1

loopfat:
    	#tests the stop condition 
    	ble $t5, $t6, endloop

    	#if the condition is not met, ultiplies 
    	mul $t4, $t4, $t5

    	#decreases 1 in the stop condition 
    	addi $t5, $t5, -1

    	#return to the stop condition
    	j loopfat

endloop:

    	#print strFact
    	li $v0, 4
    	la $a0, strFact
    	syscall

    	#prints the original value provided by the user 
    	li $v0, 1
    	move $a0, $t3
    	syscall

    	#print strFact2
    	li $v0, 4
    	la $a0, strFact2
    	syscall

    	#prints the value of the calculated factorial 
    	li $v0, 1
    	move $a0, $t4
    	syscall

    	#finish program
    	li $v0,10
    	syscall
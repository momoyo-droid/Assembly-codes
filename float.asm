.data
	str: .asciiz "Enter a float number: "
	zero: .float 0.0
.text

	li $v0, 4 #print string
	la $a0, str #move address str to $a0
	syscall
	
	li $v0, 6 #read a float number. the value go to $f0
	syscall
	
	lwc1 $f1, zero #assignin value 0 to $f1
	add.s $f12, $f1, $f0 #adding up to $f0+$f1 to the reg. $f12
	li $v0, 2 #print a float number
	syscall
	
	li $v0, 10 #finish program
	syscall
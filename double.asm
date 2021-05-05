.data
	str: .asciiz "Enter a decimal number: "
	zero: .double 0.0 #constant zero
.text
	#double uses only even registers 

	li $v0, 4 #print string
	la $a0, str #move address str to $a0
	syscall
	
	li $v0, 7 #read a float number. the value go to $f0
	syscall
	
	ldc1 $f2, zero #assignin value 0 to $f1
	add.d $f12, $f2, $f0 #adding up to $f0+$f1 to the reg. $f12
	li $v0, 3 #print a float number
	syscall
	
	li $v0, 10 #finish program
	syscall
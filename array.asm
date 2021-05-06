.data
	myArray:
		.align 2 #integers
		.space 16 #allocates 4 spaces in the array 
.text
	move $t0, $zero #array index
	move $t1, $zero #value to be placed in the array 
	li $t2, 16 #array size
	
	#scrolls through the vector and places the values in each position 
	loop:
		beq $t0, $t2, outLoop #if $t0 equal to $t2, outLoop
		sw $t1, myArray($t0) #puts the value of $t 1 at the position $t 0 of the array 
		addi $t0, $t0, 4 #att index
		addi $t1, $t1, 1 #sum in a unit
		j loop
		
	outLoop: #print the array
		move $t0, $zero #starts the array from the first position 
		print:
			beq $t0, $t2, outPrint #while $t 0 < $t 2, print 
			li $v0, 1 #print integer
			lw $a0, myArray($t0) #print the first position
			syscall
			
			addi $t0, $t0, 4 #go to the next index
			j print
			
		outPrint:
	
	
	
	
	
	
	
	
	
	
	
	
	
.data
	fileContent: .space 1024
	local: .asciiz "/home/cristinaoliveira/Documents/OrgComp/códigos/text.txt"
.text
	#open file to read
	li $v0, 13 #open the file
	la $a0, local #address file in $a0
	li $a1, 0 #read
	syscall #the descriptor go to $v0
	
	move $s0, $v0 #copy descriptor to $s0
	
	move $a0, $s0 #for reading, the descriptor must be in $a0
	li $v0, 14 #read content of file
	la $a1, fileContent #buffer
	li $a2, 1024
	syscall #read performed
	
	#print the content file
	li $v0, 4
	move $a0, $a1
	syscall
	#close file
	li $v0, 16
	move $a0, $s0 #to close the file, the descriptor must be in $a0
	syscall
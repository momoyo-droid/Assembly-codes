.text	#instruções
	
	li $t0, 10 #atribui o valor 10 a $t0
	li $t1, 2  #atribui o valor 2 a $t1
	
	div $t0, $t1  #realiza divisao de $t0 por $t1
	
	mflo $s0 #move a parte inteira da divisao presente no registrador lo para o reg. $s0
	mfhi $s1 #move o resto da divisao presente no registrador hi para o reg. $s1
	
	li $v0, 1
	move $a0, $s0
	
	syscall
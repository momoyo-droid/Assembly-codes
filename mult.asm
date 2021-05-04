.text #instruções
	
	li $t0, 3 #atribuindo um valor a $t0
	li $t1, 2 #atribuindo um valor a $t1
	
	sll $t0, $t1, 2 #desloca dois bits para a esqquerda, atribui o valor de $t1 multiplicado por 2² ao registrador $t0
	
	mul $s0, $t0, $t1 #multiplicando o valor de $t0 e $t1 e atribuindo ao registrador $s0
	li $v0, 1 #comando para impressão
	move $a0, $s0 #move o valor de $s0 para o registrador $a0
	syscall #chamada para a impressão
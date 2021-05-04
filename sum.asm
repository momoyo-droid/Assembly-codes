.text #instruções
	
	li $t0, 10 #atribuindo um valor a $t0
	li $t1, 20 #atribuindo um valor a $t1
	
	add $s0, $t0, $t1 #somando o valor de $t0 e $t1 e atribuindo ao registrador $s0
	
	addi $s1, $t0, 100 #somando o valor 100 ao registrador $t0 e atribuindo o resultado ao registrador $s1
	addi $s2, $s0, 200 #somando o valor 200 no registrador $s0 que já possui a soma dos regs. $t0 e $t1.
	
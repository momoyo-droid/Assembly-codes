.text #instruções
	
	li $t0, 300 #atribuindo um valor a $t0
	li $t1, 250 #atribuindo um valor a $t1
	
	sub $s0, $t0, $t1 #subtraindo o valor de $t0 e $t1 e atribuindo ao registrador $s0
	
	subi $s1, $t0, 100 #subtraindo o valor 100 ao registrador $t0 e atribuindo o resultado ao registrador $s1
	subi $s2, $s0, 200 #subtraindo o valor 200 no registrador $s0 que já possui a soma dos regs. $t0 e $t1.
.data #especificação de variáveis. entrada de dados na memória principal
	msg: .asciiz "Olá, mundo!" #mensagem a ser exibida para o usuário. 
.text #área para instruções do programa
	li $v0, 4 #instrução para impressão de string.
	la $a0, msg #indica o endereço em que está a mensagem.
	syscall #imprima
	li $v0, 10 #encerrar o programa
	syscall #faça o encerramento do programa
	
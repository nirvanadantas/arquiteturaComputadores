#Sabe-se que para iluminar 1 metro quadro de um ambiente são necessários
#18W de potência. Desenvolva um programa que leia a largura e a
#profundidade de uma sala e informe a potência da lâmpada que deve ser usada.

main:

	addi $2, $0, 5
	syscall		#largura da sala
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall		#comprimento da sala
	add $9, $0, $2
	
	addi $10, $0, 18	#potencia por metro
	
	mul $11, $8, $9		# h*l
	mul $11, $11, $10	# a* 18
	
	add $4, $0, $11
	addi $2, $0, 1
	syscall
nop
	
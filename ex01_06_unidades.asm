#Desenvolva um algoritmo que receba um n�mero inteiro e mostre o d�gito
#das unidades desse n�mero.

main:
	addi $2, $0, 5
	syscall 	#numero inteiro
	add $8, $0, $2
	
	addi $9, $0, 10
	
	div $8, $8, $9
	mfhi $8
	
	
	add $4, $0, $8
	addi $2,$0,1
	syscall #imprime dia em gregorian

nop
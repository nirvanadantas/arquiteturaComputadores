.text
main: 
#		fun�aco que incrementa 1 tipo def incrementa(int num, int incrememnto)
   addi $2,$0,5 
   syscall  # 
   add $4,$0,$2
   addi $5, $0,1
  jal incrementa
    
  add $4,$0, $2 #resuktado da fun��o fica em $2
  addi $2, $0, 1 #imprime o resultado
  syscall
  
  	jal incrementa
  	add $4,$0, $2 #resuktado da fun��o fica em $2
	addi $2, $0, 1 #imprime o resultado
	syscall


  add $2, $0, 10
  syscall 	#p�ra a execu��o do programa daqui
incrementa:
  add $2, $4, $5
  jr $31
	
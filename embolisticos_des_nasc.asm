#quantos meses judaicos desde o nascimento 

main: 
  addi $2,$0,5 
  syscall 
  add $8,$0,$2	 # Mes nascimento
  
  addi $2,$0,5 
  syscall 
  add $9,$0,$2	 # ano nascimento
  
  addi $2,$0,5 
  syscall 
  add $10,$0,$2	 # mes hoje
  
  addi $2,$0,5 
  syscall 
  add $11,$0,$2	 # Mes ano hoje
  
  
  
  add $4,$0,$22
  addi $2,$0,1
  syscall #imprime total
  j fim 
  
fim: nop

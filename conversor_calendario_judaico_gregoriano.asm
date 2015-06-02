#imprimir 20 anos voltando 
.data 
resp1: .asciiz "13 meses \n"
resp2: .asciiz "12 meses \n"
.text 

main: 
   addi $2,$0,5 
   syscall  #Ano gregoriano (normal)
   add $8,$0,$2 
  
  addi $14,$2,3760 #ano judaico
  addi $4,$0,19 #ciclo de anos
  
  #ciclo de 19 anos Shaná Meuberet
  #terão 13 meses 
  addi $7,$0,3
  addi $8,$0,6
  addi $9,$0,8
  addi $10,$0,11
  addi $11,$0,14
  addi $12,$0,17
  addi $13,$0,0
  
  div $14,$4 #divide
  mfhi $6 #retorna o resto da divisao 
  
  beq $6,$0,mes13
  beq $6,$7,mes13
  beq $6,$8,mes13
  beq $6,$9,mes13
  beq $6,$10,mes13
  beq $6,$11,mes13
  beq $6,$12,mes13
  beq $6,$13,mes13
  
  li $2,4
  la $4,resp2
  syscall
  
  add $4,$0,$14
  addi $2,$0,1
  syscall #imprime em gregorian
  
  j fim      
  
  mes13:
    li $2,4
    la $4,resp1
    syscall 
    
    add $4,$0,$14
    addi $2,$0,1
    syscall #imprime dia em gregorian
    j fim 
    
  fim: nop

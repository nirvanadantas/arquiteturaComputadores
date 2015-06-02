main: 
   addi $14,$2,3760 #ano judaico
   addi $2,$0,5 
   syscall  # mes1
   add $8,$0,$2 
  
  addi $2,$0,5 
   syscall  # ano1
   add $9,$0,$2 
   add $9, $9, $14	#conversão judaico
   
   addi $2,$0,5 
   syscall  # mes2
   add $10,$0,$2 
   
   addi $2,$0,5 
   syscall  # ano2
   add $11,$0,$2
   add $11, $11, $14	#conversão judaico
   sub $11, $11, 1
   
######		O ano1 eh embolistico?
 
  #ciclo de 19 anos Shaná Meuberet
  #terão 13 meses 
  addi $12,$0,3
  addi $13,$0,6
  addi $14,$0,8
  addi $15,$0,11
  addi $16,$0,14
  addi $17,$0,17
  addi $4, $0, 19
  
  div $9,$4 #divide
  mfhi $6 #retorna o resto da divisao 
  
  beq $6,$0,mes13
  beq $6,$12,mes13
  beq $6,$13,mes13
  beq $6,$14,mes13
  beq $6,$15,mes13
  beq $6,$16,mes13
  beq $6,$17,mes13

  addi $14, $0, 12
  
  j fimif
mes13:
  addi $14, $0, 13

fimif:
  sub $14, $8, $14
  sub $20, $0, $14  	# total de meses - mes do nascimento
for:  
  beq $9, $11, fimfor
  #calcula se o ano foi embolistico
  add $9, $9, 1			#incrementa o ano em um pra somar o proximo
  	 div $9,$4 #divide 19
  	 mfhi $6 #retorna o resto da divisao
  	 beq $6,$0,mes132
  	 beq $6,$12,mes132
  	 beq $6,$13,mes132
  	 beq $6,$14,mes132
  	 beq $6,$15,mes132
  	 beq $6,$16,mes132
  	 beq $6,$17,mes132

  	 
  	 addi $14, $0, 12 # se nao acontecer tem 12 meses
  	 
  	 j fimif2
  mes132:
  	 
  	 addi $14, $0, 13  # ano embolistico

  fimif2:
  	 add $20, $20, $14  	# soma o total a quantidade de meses q esse ano tem no total
  
  
  bne $9, $11, for
fimfor:
  
  add $20, $20, $10
  
  nop
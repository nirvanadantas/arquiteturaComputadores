#desenvolva um programa que leia um valor de hora (uma variável para a hora e outra para minuto) 
#e informe quantos minutos se passaram desde o início do dia
main: 
   addi $2,$0,5 
   syscall  # hora
   add $8,$0,$2 
   
   addi $2, $0, 5
   syscall #minutos
   add $9, $0, $2
   
 #  addi $10, $0, 1
   
for:
	beq $8, $0, fimfor
	addi $9, $9, 60
	addi $8, $8, -1
	j for
fimfor:
	add $4, $0, $9
	addi $2,$0,1
	syscall #imprime dia em gregorian
	nop

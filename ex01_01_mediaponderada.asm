#Desenvolva um programa que leia 2 notas e calcule a nota final do aluno.
#Considere a média ponderada, onde a primeira nota tem peso 2 e a segunda nota tem peso 3

main: 

   addi $10, $0, 2 #pesos
   addi $11, $0, 3

   addi $2,$0,5    
   syscall  #le um numero guarda em $2   
   
   add $8,$0,$2 # guarda em $8
   mul $8, $8, $10 # nota1 * peso

   addi $2,$0,5 
   syscall	#nota2
   
   add $9, $0, $2
   mul $9, $9, $11 #nota 2 *peso
   
   add $9, $9, $8 	#soma 
   addi $8, $0, 5
   
   div $9, $8
   mflo $4
   addi $2, $0, 1
   syscall
   
   nop
   
   

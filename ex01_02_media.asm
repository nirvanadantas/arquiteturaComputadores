#Desenvolva um programa que leia 3 notas e calcule e mostre a média aritmética das mesmas
main: 
   addi $2,$0,5 
   syscall  #le um numero guarda em $2
   
   add $8,$0,$2 # guarda em $8
   
   addi $2,$0,5 
   syscall  #le um numero guarda em $2
   
   add $8, $8, $2 # $8 += $2

   addi $2,$0,5 
   syscall  #le um numero guarda em $2
   add $8, $8, $2 # $8 += $2
   
   addi $9, $0, 3
   div $8, $9

   mflo $4 #retorna o resto da divisao 
   addi $2, $0, 1 #cod syscall imprima
   syscall
   
   nop
   

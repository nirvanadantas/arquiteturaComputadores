#Desenvolva um programa que leia dois números inteiros quaisquer e imprima a soma dos mesmos.
main: 
   addi $2,$0,5 
   syscall  #le um numero guarda em $2
   
   add $8,$0,$2 # guarda em $8
   
   addi $2,$0,5 
   syscall  #le um numero guarda em $2
   
   add $9,$0,$2 # guarda em $9
   
   add $10, $8, $9 #$10 <= $8 + $9
   
   add $4, $0, $10 #imprime a soma
   addi $2, $0, 1 #cod syscall imprima
   syscall
   nop
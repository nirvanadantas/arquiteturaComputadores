#desenvolva um programa que leia um valor de hora (uma variável para a hora e outra para minuto) 
#e informe quantos minutos se passaram desde o início do dia
hora = gets.to_i
minutos = gets.to_i

for i in i..hora do
	minutos+=60
end

puts minutos


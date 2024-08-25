puts "Preencha os dados a seguir"
puts "Peso - kg"
peso = gets.chomp.to_f
puts "Altura - m"
altura = gets.chomp.to_f

imc = peso / (altura * altura)

if imc < 16.9
   puts "Seu IMC é #{'%.2f' % imc}, magreza extrema"
elsif (imc >17 ) and (imc < 18.5)
   puts "Seu IMC é #{'%.2f' % imc}, abaixo do peso"
elsif (imc > 18.4) and (imc < 25)
   puts "Seu IMC é #{'%.2f' % imc}, peso normal"
elsif (imc > 24.9) and (imc < 30)
   puts "Seu IMC é #{'%.2f' % imc}, acima do peso"
elsif (imc > 29.9) and (imc < 35)
   puts "Seu IMC é #{'%.2f' % imc}, obesidade grau I"
elsif (imc > 34.9) and (imc < 40.1)
   puts "Seu IMC é #{'%.2f' % imc}, obesidade grau II - severa"
elsif imc > 40
   puts "Seu IMC é #{'%.2f' % imc}, obesidade grau III - morbida"
end
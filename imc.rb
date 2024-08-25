# Tratamento de erros
def entradas
  puts "Nome"
  @nome = gets.chomp.capitalize

  loop do
    begin
      puts "Peso - kg"
      @peso = gets.chomp.gsub(',', '.') # Substitui vírgulas por pontos para a conversão
      @peso = Float(@peso)  # Tenta converter a entrada para um número float
      break  # Sai do loop se a conversão for bem-sucedida
    rescue ArgumentError
      puts "Erro: Isso não é um número válido. Por favor, tente novamente."
    end
  end

  loop do
    begin
      puts "Altura - m"
      @altura = gets.chomp.gsub(',', '.') # Substitui vírgulas por pontos para a conversão
      @altura = Float(@altura)  # Tenta converter a entrada para um número float
      break  # Sai do loop se a conversão for bem-sucedida
    rescue ArgumentError
      puts "Erro: Isso não é um número válido. Por favor, tente novamente."
    end
  end

  # Cálculo do IMC
  @imc = @peso / (@altura * @altura)
end



# Saídas da aplicação
def saidas
  if @imc < 16.9
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, magreza extrema!"
    puts "Você deve ganhar peso para alcançar um IMC saudável."
  elsif (@imc >= 17) && (@imc < 18.5)
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, abaixo do peso!"
    peso_ideal_min = 18.5 * (@altura * @altura)
    peso_necessario = peso_ideal_min - @peso
    puts "Para estar no intervalo normal de IMC, você deve ganhar aproximadamente #{'%.2f' % peso_necessario} kg."
  elsif (@imc >= 18.5) && (@imc < 25)
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, peso normal!"
  elsif (@imc >= 25) && (@imc < 30)
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, acima do peso!"
    peso_ideal_max = 24.9 * (@altura * @altura)
    peso_necessario = @peso - peso_ideal_max
    puts "Para estar no intervalo normal de IMC, você deve perder aproximadamente #{'%.2f' % peso_necessario} kg."
  elsif (@imc >= 30) && (@imc < 35)
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, obesidade grau I!"
    peso_ideal_max = 24.9 * (@altura * @altura)
    peso_necessario = @peso - peso_ideal_max
    puts "Para estar no intervalo normal de IMC, você deve perder aproximadamente #{'%.2f' % peso_necessario} kg."
  elsif (@imc >= 35) && (@imc < 40)
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, obesidade grau II - severa!"
    peso_ideal_max = 24.9 * (@altura * @altura)
    peso_necessario = @peso - peso_ideal_max
    puts "Para estar no intervalo normal de IMC, você deve perder aproximadamente #{'%.2f' % peso_necessario} kg."
  elsif @imc >= 40
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, obesidade grau III - mórbida!"
    peso_ideal_max = 24.9 * (@altura * @altura)
    peso_necessario = @peso - peso_ideal_max
    puts "Para estar no intervalo normal de IMC, você deve perder aproximadamente #{'%.2f' % peso_necessario} kg."
  end
end

puts "Preencha os dados a seguir"
entradas
saidas


#Criar função que calcula diferença de peso para chegar no peso ideal
# Cálculo de Índice de Massa Corporal (IMC)

Esta aplicação em Ruby calcula o Índice de Massa Corporal (IMC) com base no peso e altura fornecidos pelo usuário e fornece uma classificação de acordo com o valor do IMC.

# Como Funciona

O usuário é solicitado a inserir seu peso em quilogramas (kg) e sua altura em metros (m). O script então calcula o IMC usando a fórmula:

IMC=peso/altura²​

Com base no valor do IMC, o script classifica o resultado em uma das seguintes categorias:

   - Magreza extrema: IMC < 16.9
   - Abaixo do peso: 17 < IMC < 18.5
   - Peso normal: 18.5 < IMC < 24.9
   - Acima do peso: 25 < IMC < 29.9
   - Obesidade grau I: 30 < IMC < 34.9
   - Obesidade grau II - severa: 35 < IMC < 40
   - Obesidade grau III - mórbida: IMC > 40

# Requisitos

   - Ruby instalado na máquina.

# Como Executar

    1 . Clone o repositório ou copie o código para um arquivo Ruby (por exemplo, calculadora_imc.rb).

    2. Execute o script usando o terminal:


 ```
 bash
 ruby calculadora_imc.rb
```
 
    3. Digite o seu peso em quilogramas quando solicitado.

    4. Digite a sua altura em metros quando solicitado.

    5. O script calculará e exibirá o seu IMC, juntamente com a categoria correspondente.

# Exemplo de Uso

```
    bash
    $ ruby calculadora_imc.rb
    Preencha os dados a seguir
    Peso - kg
    70
    Altura - m
    1.75
    Seu IMC é 22.86, peso normal
```

# Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request com melhorias ou correções.

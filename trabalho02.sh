# EXERCÍCIO 02 - Desenvolver um programa para sorveteria

print('\t' * 4,"BEM VINDO(A) A SORVETERIA SABOR E DOÇURA!")
print('-' * 36, "CARDÁPIO" ,'-' * 36 )
print("| N° DE BOLAS | SABOR TRADICIONAL (tr)| SABOR PREMIUM (pr) | SABOR ESPECIAL (es) |") # Apresenta as opções
print("|      1      |         R$6.00        |        R$7.00      |       R$8.00        |")
print("|      2      |         R$11.00       |        R$13.00     |       R$15.00       |")
print("|      3      |         R$15.00       |        R$18.00     |       R$21.00       |")
print('-'* 82)

# O cliente, ao conferir no cardápio apresentado, digita as escolhas.
acumulador = 0
while True:
  sabor = input('\n'"Qual sabor desejado (tr/pr/es)? ")
  if sabor != "tr" and sabor != "pr" and sabor != "es":
    print("Opção inválida. Por favor, digite um dos sabores apresentados: ")
    continue # faz retornar ao início do while.

  bolas = input("Quantas bolas desejas (1/2/3)? ")
  if bolas != '1' and bolas != '2' and bolas != '3':
    print("Opção inválida. Por favor, digite uma das quantidades apresentadas: ")
    continue # faz retornar ao início do while.

  elif sabor == 'tr' and bolas == '1':
    print("Você escolheu o sabor TRADICIONAL com 1 bola: R$6.00")
    acumulador += 6.00 # soma o valor do acumulador com 6.00

  elif sabor == 'tr' and bolas == '2':
    print("Você escolheu o sabor TRADICIONAL com 2 bolas: R$11.00")
    acumulador += 11.00 # soma o valor do acumulador com 6.00

  elif sabor == 'tr' and bolas == '3':
    print("Você escolheu o sabor ESPECIAL com 3 bolas: R$15.00")
    acumulador += 15.00 # soma o valor do acumulador com 6.00

  elif sabor == 'pr' and bolas == '1':
    print("Você escolheu o sabor PREMIUM com 1 bola: R$7.00")
    acumulador += 7.00 # soma o valor do acumulador com 6.00

  elif sabor == 'pr' and bolas == '2':
    print("Você escolheu o sabor PREMIUM com 2 bola: R$13.00")
    acumulador += 13.00 # soma o valor do acumulador com 6.00

  elif sabor == 'pr' and bolas == '3':
    print("Você escolheu o sabor PREMIUM com 3 bola: R$18.00")
    acumulador += 18.00 # soma o valor do acumulador com 6.00

  elif sabor == 'es' and bolas == '1':
    print("Você escolheu o sabor PREMIUM com 1 bola: R$8.00")
    acumulador += 8.00 # soma o valor do acumulador com 6.00

  elif sabor == 'es' and bolas == '2':
    print("Você escolheu o sabor PREMIUM com 2 bola: R$15.00")
    acumulador += 15.00 # soma o valor do acumulador com 6.00

  elif sabor == 'es' and bolas == '3':
    print("Você escolheu o sabor PREMIUM com 3 bola: R$21.00")
    acumulador += 21.00 # soma o valor do acumulador com 6.00

  novo_pedido = input("Deseja realizar um novo pedido? (s/digite outra tecla): ")
  if novo_pedido == 's':
    continue # faz retornar ao início do while.
  else: # ao digitar qualquer outra tecla diferente de 's' prossegue apresentando o valor total.
    print('\n'"O valor total a ser pago: R${:.2f}".format(acumulador))
    break # finda o programa.



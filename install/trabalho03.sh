# EXERCÍCIO 03 - Desenvolver um sistema de cobrança de banho para um petshop.
# Início da função aplicação de bordas
def borda(t1):
    tam = len(t1)
    if tam:
        print('\t\t\t\t\t''+','-' * tam,'+')
        print('\t\t\t\t\t''|',t1,'|')
        print('\t\t\t\t\t''+','-' * tam,'+')
# Fim da função aplicação de bordas

# Início da função cachorro_peso()
def cachorro_peso():
    print('-' * 30, "QUAL O PESO DO CACHORRO?",'-' * 30)
    print('Cães peso menor que 3Kg:                                  Valor: R$40.00')
    print('Cães peso igual ou maior que 3kg e menor que 10kg:        Valor: R$50.00')
    print('Cães peso igual ou maior que 10kg e menor que 30kg:       Valor: R$60.00')
    print('Cães peso igual ou maior que 30kg e menor que 50kg:       Valor: R$70.00')
    while True:
        try:
            peso = float(input("DIGITE O PESO DO CACHORRO? (KG): "))
            if (peso < 3): # peso menor que 3kg
                return 40 # apresenta o valor do peso selecionado
            elif (peso >= 3) and (peso < 10): # peso maior ou igual a 3k
                return 50 # apresenta o valor do peso selecionado
            elif (peso >= 10) and (peso < 30): # peso maior igual que 10kg e menor 30kg
                return 60 # apresenta o valor do peso selecionado
            elif (peso >= 30) and (peso < 50): # peso maior, igual que 30kg e menor que 50kg
                return 70 # apresenta o valor do peso selecionado
            else:
                print("Peso acima do permitido. Digite peso menor que 50kg.") # mensagem caso o cliente digite um peso acima do indicado
        except ValueError:
            print("Valor inválido. Digite novamente.") # mesagem caso o cliente digite um valor inválido
# Fim da função cachorro_peso()

# Início da função cachorro_pelo()
def cachorro_pelo():
    print('-' * 25, "QUAL O TAMANHO DO PELO DO CACHORRO?", '-' * 25)
    print("Pelo cunto (c)")
    print("Pelo médio (m)")
    print("Pelo longo (l)")
    while True:
        pelo = input("DIGITE O TAMANHO DO PELO DO CACHORRO:  ").lower()
        if pelo == 'c':
            return 1 # esse é o multiplicador do referido tamanho de pelo
        elif pelo == 'm':
            return 1.5 # esse é o multiplicador do referido tamanho de pelo
        elif pelo == 'l':
            return 2 # esse é o multiplicador do referido tamanho de pelo
        else:
            print("Opção inválida. Digite novamente.")
# Fim da função cachorro_pelo()

# Início da função cachorro_extra()
def cachorro_extra():
    print('-' * 26, "DESEJA ADICIONAR MAIS SERVIÇOS?", '-' * 26)
    print("Digite 1 - para corte de unhas - R$10.00")
    print("Digite 2 - para escovar dentes - R$12.00")
    print("Digite 3 - para limpeza de orelha - R$15.00")
    print("Digite 0 - caso não deseje mais nada.")
    extra = 0
    while True:
        try:
            adicional = int(input("ESCOLHA O SERVIÇO ADICIONAL: "))
            if adicional == 0:
                break
            elif adicional == 1:
                 extra = extra + 10
            elif adicional == 2:
                 extra = extra + 12
            elif adicional == 3:
                 extra = extra + 15
            else:
                print("Digite uma opção válida.")
        except ValueError:
            print("Valor inválido. Digite novamente.")
    return extra
# Fim da função cachorro_extra()

# Inicio do main
def main():
  print('\n')
  borda ("BEM-VINDO AO PET SHOP PETLOCO")
  peso_base = cachorro_peso()
  print('\n')
  multiplicador = cachorro_pelo()
  print('\n')
  extra = cachorro_extra()
  total = peso_base * multiplicador + extra
  print('\n')
  print('-' * 26,"DESCRIÇÃO DOS SERVIÇOS",'-' * 26)
  print(f": \t\n PESO: R${peso_base:.2f} \t\n PELO: {multiplicador} \t\n EXTRA(S): R${extra:.2f} \t\n TOTAL A PAGAR: R${total:.2f}")
  print('-' * 15, "OBRIGADO POR CONFIAR EM NOSSOS SERVIÇOS. VOLTE SEMPRE!", '-' * 15)
# FIm do main

# Roda o programa chamando a função main
if __name__ == "__main__":
    main()


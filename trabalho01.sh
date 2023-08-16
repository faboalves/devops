# EXERCÍCIO 01 - Programa conceder desconto

# Mensagem de Boas Vindas
print("\t#### SEJA BEM VINDO À LOJA REI DOS DESCONTOS! ####")
print('-' * 61)

# Dados apresentados pelo usuário
valor_produto = float(input("Qual é o valor do produto? R$"))
quantidade = int(input("Qual a quantidade desejada? "))
desconto = 0
# Desconto conforme a quantidade desejada.
if quantidade < 200: # menor que 200
    desconto = 0.00 #0%  nessa situação não recebe desconto
elif (quantidade >= 200) and (quantidade < 1000): # maior ou igual a 200
    desconto = 0.05 #5% de desconto
elif (quantidade >= 1000) and (quantidade < 2000):
    desconto = 0.10 #10% de desconto
else:
    desconto = 0.15 #15% de desconto

# Soma dos valores apresentados e desconto concedido se enquadrar nos requisitos.
total_sem_desconto = valor_produto * quantidade
print("O valor total sem desconto é de: R${:.2f}".format(total_sem_desconto))
total_com_desconto = total_sem_desconto - total_sem_desconto * desconto
print("O valor total com desconto é de

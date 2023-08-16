#EXERCÍCIO 04 - CONTROLE DE FUNCIONÁRIOS.

lista_colaboradores= []
id_glob = 0
# Início da função cadastro_colaborador
def cadastrar_colaborador(id): # cadastrar codigo do colaborador, nome, setor e salário.
 print('-' * 25, "MENU CADASTRAR COLABORADOR",'-' * 25)
 print("VOCE ESCOLHEU A OPÇÃO CADASTRAR COLABORADOR")
 print("\tid do colaborador: {:0>3}".format(id))
 nome = input("\tEntre com o nome do colaborador: ")
 setor = input("\tEntre com o setor do colaborador: ")
 salario = float(input("\tEntre com o salário do colaborador: "))
 dicionario_colaborador = {'codigo' : id,
                           'nome'   : nome,
                           'setor'  : setor,
                           'salario': salario}
 lista_colaboradores.append(dicionario_colaborador.copy())
 print("COLABORADOR CADASTRADO")
 # fim da função cadastro_colaborador

 # Inicio da função consultar_colaborador
def consultar_colaborador(): # consultar funcionários por codigo, setor
 print('-' * 25, "VOCÊ ESCOLHEU A OPÇÃO CONSULTAR COLABORADOR", '-' * 25)
 while True:
       print("\t1 - Consultar todos os colaboradores")
       print("\t2 - Consultar colaborador por código")
       print("\t3 - Consultar colaborador por setor")
       print("\t4-  Retornar")
       op_consultar = input("ESCOLHA UMA DAS OPÇÕS APRESENTADAS: ")
       if op_consultar == '1':
          print("VOCÊ SELECIONOU A OPÇÃO CONSULTAR TODOS OS COLABORADORES.")
          print('-' * 40)
          for colaborador in lista_colaboradores:
              for key, value in colaborador.items():
                print('{} : {}'.format(key,value))
              print('-' * 40)
       elif op_consultar == '2':
              print("VOCÊ SELECIONOU A OPÇÃO CONSULTAR COLABORADRO POR CÓDIGO")
              entrada = int(input('Digite o Código: '))
              for colaborador in lista_colaboradores:
                  if(colaborador['codigo'] == entrada):
                      for key, value in colaborador.items():
                          print('{} : {}'.format(key, value))
       elif op_consultar == '3':
              print("VOCÊ SELECIONOU A OPÇÃO CONSULTAR COLABORADRO POR SETOR")
              entrada = input('Digite o setor: ')
              for colaborador in lista_colaboradores:
                  if(colaborador['setor'] == entrada):
                      for key, value in colaborador.items():
                          print('{} : {}'.format(key,value))
       elif op_consultar == '4':
         return
       else:
           print("DIGITE SOMENTE O QUE PEDE")
           continue # volta o ainicio do laço
# Fim da função consultar_colaborador

# Início da função remover_colaborador
def remover_colaborador(): # remove funcionário pelo codigo dele
    print('-' * 30,"MENU REMOVER COLABORADOR",'-' * 30,)
    id_colaborador = int(input("Digite o código do COLABORADOR: "))
    for colaborador in lista_colaboradores:
        if(colaborador['codigo'] == id_colaborador):
            lista_colaboradores.remove(colaborador)
            print('COLABORADOR REMOVIDO.')
# Fim da função remover_colaborador

# Início da função aplicação de bordas
def borda(t1):
    tam = len(t1)
    if tam:
        print('\t\t\t\t''+','-' * tam,'+')
        print('\t\t\t\t''|',t1,'|')
        print('\t\t\t\t''+','-' * tam,'+')
# Fim da função aplicação de bordas

# Início do Main. Começa com mensagem de boas vindas
print('\n')
borda ("PROGRAMA DE CONTROLE DE COLABORADORES ")
while True:
        print('-' * 30, "MENU PRINCIPAL", '-' * 30)
        print("O QUE DESEJA FAZER?")
        print("\t1 - Cadastrar colaborador")
        print("\t2 - Consultar colaborador")
        print("\t3 - Remover colaborador")
        print("\t4 - Sair ")
        opcao_principal = input("DIGITE A OPÇÃO DESEJADA: ")
        if opcao_principal == '1':
            id_glob += 1
            cadastrar_colaborador(id_glob)
        elif opcao_principal == '2':
            consultar_colaborador()
        elif opcao_principal == '3':
            remover_colaborador()
        elif opcao_principal == '4':
            print('\n', '-' * 27, "PROGRAMA FINALIZADO", '-' * 27)# Mensagem de finalização do programa
            break
        else:
            print("DIGITE SOMENTE UMA DAS OPÇÕES APRESENTADAS")
            continue # volta ao início do laço
# FIm do Main

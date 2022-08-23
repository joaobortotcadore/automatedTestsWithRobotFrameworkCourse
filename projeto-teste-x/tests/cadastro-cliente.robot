*** Settings ***
Resource    ../page-objects/cadastro-de-cliente-page-object.robot    #importar o arquivo com page-objects (variables/keywords)
*** Test Cases ***
Fazer o cadastro de um novo cliente
    Abrir o navegador na página de cadastro de cliente
    Verificar se o título da página de cadastro de clientes esta correto
    Preencher campos do formulário de cadastro de clientes
    Cadastrar o cliente
    Verificar a mensagem de cliente cadastrado com sucesso
    Fechar navegador
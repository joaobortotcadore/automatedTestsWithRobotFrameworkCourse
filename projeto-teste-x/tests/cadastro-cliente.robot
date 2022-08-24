*** Settings ***
Resource    ../page-objects/cadastro-de-cliente-page-object.robot    #importar o arquivo com page-objects (variables/keywords)
Resource    ../page-objects/menu-page-object.robot
Resource    ../page-objects/login-page-object.robot

Suite Setup    Abrir navegador no sistema de cadastro de clientes
Test Setup    Fazer o login no sistema de cadastro de clientes
Test Teardown    Fazer logout do sistema de cadastro de clientes
Suite Teardown    Fechar navegador
*** Test Cases ***
Fazer o cadastro de um novo cliente
    Ir para a página de cadastro de clientes
    Verificar se o título da página de cadastro de clientes esta correto
    Preencher campos do formulário de cadastro de clientes
    Cadastrar o cliente
    Verificar a mensagem de cliente cadastrado com sucesso
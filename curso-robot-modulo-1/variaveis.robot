*** Settings ***
Documentation    Exemplo de tipos variáveis: ESCALARES, LISTAS, DICIONARIO e AMBIENTE

*** Variables ***
${EXEMPLO_VAR_ESCALAR}    Eu sou uma variavel escalar!
@{EXEMPLO_VAR_LISTA}    azul    verde    amarelo    laranja
&{EXEMPLO_VAR_DICIONARIO}    nome=joao    email=joao.cadore@inobram.com.br

*** Test Cases ***
Exemplo o uso de variaveis
    Log To Console    ${EXEMPLO_VAR_ESCALAR}
    Log To Console    ${EXEMPLO_VAR_LISTA[0]}
    Log To Console    ${EXEMPLO_VAR_DICIONARIO.nome}
    Log To Console    Teste executado por %{USERNAME}
    Log To Console    Teste executado por %{USERDOMAIN}

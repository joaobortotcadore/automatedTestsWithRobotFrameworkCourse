*** Test Cases ***
Exemplo do should be equal
    ${msg_esperada}=    Set Variable    Empregado cadastrado com sucesso!
    Should Be Equal    Erro desconhecido    ${msg_esperada}

Exemplo do should be equal com mensagem personalizada
    ${msg_esperada}=    Set Variable    Empregado cadastrado com sucesso!
    Should Be Equal    Erro desconhecido    ${msg_esperada}    msg=O teste falhou!

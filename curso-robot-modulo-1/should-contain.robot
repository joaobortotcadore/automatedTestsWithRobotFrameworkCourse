*** Test Cases ***
Exemplo de teste do should contain
    Should Contain    Meu nome é Joao Gabriel    Joao

Exemplo do should contain com listas
    @{cores}=    Create List    azul    amarelo    verde
    Should Contain    ${cores}    vermelho    msg=A cor informada nao esta na lista

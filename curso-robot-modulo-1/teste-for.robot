*** Test Cases ***
Testando for sobre listas (CONTINUE)
    @{cores}=    Create List    azul    verde    amarelo    vermelho    rosa    azul
    FOR  ${cor}  IN  @{cores}
        Continue For Loop If    '${cor}' == 'verde'
        Log To Console    ${cor}
    END

Testando for sobre listas (EXIT)
    @{cores}=    Create List    azul    verde    amarelo    vermelho    rosa    azul
    FOR  ${cor}  IN  @{cores}
        Exit For Loop If    '${cor}' == 'vermelho'
        Log To Console    ${cor}
    END
    
Testando for in range listas
    FOR  ${index}  IN RANGE    1    11    2
        Log To Console    ${index}
    END
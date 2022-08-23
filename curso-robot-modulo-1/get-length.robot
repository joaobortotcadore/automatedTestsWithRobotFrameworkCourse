*** Test Cases ***
Exemplo do getlength
    ${length}=    Get Length    oi mundo!
    Log To Console    ${length}
    @{list}=    Create List    valor1    valor2    valor3    valor4
    ${length_da_lista}=    Get Length    ${list}
    Log To Console    ${length_da_lista}
*** Test Cases ***
Teste do if
    ${idade}=    Set Variable    61
    IF    ${idade} < 13
        Tratar de crianças
    ELSE IF    13 <= ${idade} <= 19
        Tratar de adolescentes
    ELSE IF    20 <= ${idade} <= 60
        Tratar de adulto
    ELSE
        Tratar de idosos
    END

*** Keywords ***
Tratar de crianças
    Log To Console    if da criança

Tratar de adolescentes
    Log To Console    if do adolescente

Tratar de adulto
    Log To Console    if do adulto

Tratar de idosos
    Log To Console    if do idoso
*** Test Cases ***
Exemplo de regexp
    ${numero}=    Set Variable    1234982
    Should Match Regexp    ${numero}    ^\\d{6}$
*** Settings ***
Library    String

*** Test Cases ***
Exemplo do get substring
    ${str1}=    Get Substring    Texto de Exemplo    1    5
    Log To Console    ${str1}
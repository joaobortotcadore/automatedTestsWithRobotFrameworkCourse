*** Settings ***
Library    String

*** Test Cases ***
Exemplo do format string
    ${user}=    Set Variable    Joao Gabriel
    ${email}=    Set Variable    joao.cadore@inobram.com.br
    ${to}=    Format String    To:{} <{}>    ${user}    ${email}
    Log To Console    ${to}
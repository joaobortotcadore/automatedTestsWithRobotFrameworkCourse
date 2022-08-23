*** Settings ***
Library    DateTime

*** Test Cases ***
Exemplo do get current date
    ${data}=    Get Current Date
    Log To Console    ${data}
    ${data_formatada}=    Get Current Date    result_format=%d/%m/%Y %H:%M
    Log To Console    Exemplo do get current date com data formatada ${data_formatada}
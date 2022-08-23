*** Settings ***
Library    String

*** Test Cases ***
Exemplo de teste maiusculo2minusculo
    ${str1}=    Convert To Lower Case    ESSE TEXTO VAI SER CONVERTIDO PARA MINUSCULO
    Log To Console    ${str1}

Exemplo de teste minusculo2maiusculo
    ${str1}=    Convert To Upper Case    esse texto vai ser convertido para maiusculo
    Log To Console    ${str1}

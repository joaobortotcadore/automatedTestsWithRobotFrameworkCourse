*** Settings ***
Library    OperatingSystem
Library    String
*** Test Cases ***
Exemplo para ler arquivo
    ${conteudo}=    Get File    ${CURDIR}/dados.txt
    @{linhas}=    Split To Lines    ${conteudo}
    FOR  ${linha}  IN  @{linhas}
        Log To Console    ${linha}
    END
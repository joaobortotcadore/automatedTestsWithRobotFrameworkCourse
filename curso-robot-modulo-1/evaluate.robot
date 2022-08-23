*** Test Cases ***
Exemplo do uso da keyworkd evaluate
    ${ns}=    Create Dictionary    x=${4}    y=${2}
    ${resultado}=    Evaluate    x+y    namespace=${ns}
    Log To Console    ${resultado}
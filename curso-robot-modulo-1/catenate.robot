*** Test Cases ***
Exemplo do uso do catenate
    ${str1}=    Catenate    oi   mundo    do   Robot   Framework
    ${str2}=    Catenate    SEPARATOR=,    oi    mundo    do    Robot    Framework
    Log To Console    ${str1}
    Log To Console    ${str2}
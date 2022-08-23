*** Settings ***
Library    DateTime

*** Test Cases ***
Exemplo subtract date
    ${diff1}=    Subtract Date From Date    2020-05-28 12:09:00    2020-05-25 12:07:45    result_format=verbose
    Log To Console    ${diff1}

Exemplo2 subtract date
    ${diff2}=    Subtract Date From Date    23/08/2022    23/07/2021    result_format=verbose    date1_format=%d/%m/%Y    date2_format=%d/%m/%Y
    Log To Console    ${diff2}
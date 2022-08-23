*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Abrir um navegador na página do google
    #Abrir navegador    http://www.google.com    chrome                    #primeira opcao
    Abrir a página "http://www.google.com" com o navegador "firefox"       #opcao com aspas
    #Abrir a página http://www.google.com com o navegador chrome            #opcao sem aspas
    Title Should Be    Google
    Input Text    name=q    Robot Framework Selenium Library
    Press Keys    name=q    ENTER
    Close Browser

*** Keywords ***
#Abrir a página ${URL} com o navegador ${navegador}            #opcao sem aspas
Abrir a página "${URL}" com o navegador "${navegador}"       #opcao com aspas
#Abrir navegador                                              #primeira opcao
#    [Arguments]    ${URL}    ${navegador}                    #primeira opcao
    Open Browser    ${URL}    ${navegador}
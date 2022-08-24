# Esse arquivo page-objects tem a funcao de mapear a tela de cadastro de clientes (variables) e ações que podem ser feitas nela (keywords)
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# campos do formulario
${BUTTON_CADASTRAR}    id=cadastrar
${BUTTON_PESQUISAR}    xpath=//button[text()='Pesquisar']

${CAMPO_MENSAGEM}    id=msg

${CHECK_TESTES_AUTOMATIZADOS}    xpath=//span[contains(text(),'Testes Automatizados')]/preceding::input[1]
${CHECK_VIDEO_GAMES}    xpath=//span[contains(text(),'Video Games')]/preceding::input[1]

${INPUT_NOME_DO_CLIENTE}    id=nome_cliente
${INPUT_CPF_DO_CLIENTE}    id=cpf
${INPUT_DATA_NASCIMENTO_DO_CLIENTE}    id=dtnasc
${INPUT_CEP_DO_CLIENTE}    id=cep
${INPUT_NUMERO_ENDERECO_DO_CLIENTE}    id=numero
${INPUT_RUA_DO_CLIENTE}    id=rua

${RADIO_MASCULINO}    xpath=//input[@value='masculino']

${SELECT_ESTADO_CIVIL_DO_CLIENTE}    id=estado-civil

${URL_CADASTRO_DE_CLIENTES}    https://estivalet.github.io/robot-static-testing-site/cadastro/index.html
${NAVEGADOR_DO_TESTE}    chrome

${TITULO_PAGINA_DE_CLIENTES}    Cadastro de Clientes
${MENSAGEM_SUCESSO_CADASTRO}    Cliente cadastrado com sucesso!
${MENSAGEM_NOME_OBRIGATORIO}    Nome é obrigatório!
${MENSAGEM_CPF_OBRIGATORIO}    CPF é obrigatório!

# valores para preencher os campos do formulario
${NOME_DO_CLIENTE}    Joao Gabriel
${CPF_DO_CLIENTE}    123456798
${DATA_NASCIMENTO_DO_CLIENTE}    22091956
${RUA_DO_CLIENTE}    Rua Itacolomi
${CEP_DO_CLIENTE}    85502070
${NUMERO_ENDERECO_DO_CLIENTE}    347
${ESTADO_CIVIL_DO_CLIENTE}    Casado(a)

*** Keywords ***
Abrir o navegador na página de cadastro de cliente
    Open Browser    ${URL_CADASTRO_DE_CLIENTES}    ${NAVEGADOR_DO_TESTE}
Preencher campos do formulário de cadastro de clientes
    Input Text    ${INPUT_NOME_DO_CLIENTE}    ${NOME_DO_CLIENTE}
    Input Text    ${INPUT_CPF_DO_CLIENTE}    ${CPF_DO_CLIENTE}
    Input Text    ${INPUT_DATA_NASCIMENTO_DO_CLIENTE}   ${DATA_NASCIMENTO_DO_CLIENTE}
    Click Element    ${RADIO_MASCULINO}
    Input Text    ${INPUT_CEP_DO_CLIENTE}    ${CEP_DO_CLIENTE}
    Click Element    ${BUTTON_PESQUISAR}
    Wait Until Keyword Succeeds    10s    200ms    Aguardar o valor "${RUA_DO_CLIENTE}" no elemento "${INPUT_RUA_DO_CLIENTE}" estar presente
    Input Text    ${INPUT_NUMERO_ENDERECO_DO_CLIENTE}    ${NUMERO_ENDERECO_DO_CLIENTE}
    Select From List By Value    ${SELECT_ESTADO_CIVIL_DO_CLIENTE}    ${ESTADO_CIVIL_DO_CLIENTE}
    Click Element    ${CHECK_TESTES_AUTOMATIZADOS}
    Click Element    ${CHECK_VIDEO_GAMES}
Cadastrar o cliente
    Click Element    ${BUTTON_CADASTRAR}
    Wait Until Element Is Visible    ${CAMPO_MENSAGEM}
Verificar a mensagem de cliente cadastrado com sucesso
    Wait Until Page Contains    ${MENSAGEM_SUCESSO_CADASTRO}
Verificar se o título da página de cadastro de clientes esta correto
    Title Should Be    ${TITULO_PAGINA_DE_CLIENTES}
Aguardar o valor "${valor_esperado}" no elemento "${elemento}" estar presente
    ${valor_atual}=    Get Element Attribute    ${elemento}    value
    Should Be Equal As Strings    ${valor_atual}    ${valor_esperado}

Verificar a mensagem informando que o campo nome é obrigatório
    Wait Until Page Contains    ${MENSAGEM_NOME_OBRIGATORIO}
Preencher o nome do cliente
    Input Text    ${INPUT_NOME_DO_CLIENTE}    ${NOME_DO_CLIENTE}
Verificar a mensagem informando que o campo cpf é obrigatório
    Wait Until Page Contains    ${MENSAGEM_CPF_OBRIGATORIO}
*** Settings ***
Documentation    Essa suite gera emails customizados utilizando argumentos

Library          String

*** Variable *** 
&{PESSOA}        nome=Teste    sobrenome=Silva
${PROVEDORA}     @testerobot.com

*** Test Cases *** 
Cenário: Gerar e-mail customizado com nome e sobrenome
    ${EMAIL}    Gerar e-mail customizado    ${PESSOA.nome}  ${PESSOA.sobrenome}
    Log To Console      Novo e-mail gerado: ${EMAIL}

*** Keywords ***
Gerar e-mail customizado
    [Arguments]     ${NOME}  ${SOBRENOME}
    ${ALEATORIA}      Generate Random String
    ${EMAIL_FINAL}    Set Variable    ${NOME}${SOBRENOME}${ALEATORIA}${PROVEDORA}
    [Return]          ${EMAIL_FINAL}


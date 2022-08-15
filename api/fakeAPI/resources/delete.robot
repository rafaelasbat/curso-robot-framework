*** Settings ***
Documentation       Keywords dos endpoints de POST

Resource            ../resources/helpers/libraries.robot

*** Keywords ***
## Ações
Deletar o livro "${LIVRO}"
    ${RESPOSTA}    DELETE On Session    fakeAPI    Books/${LIVRO}  
    Set Test Variable    ${RESPOSTA}
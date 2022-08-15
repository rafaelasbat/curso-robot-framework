*** Settings ***
Documentation       Keywords dos endpoints de GET

Resource            ../resources/helpers/libraries.robot

*** Keywords ***
## Ações
Requisitar todos os livros
    ${RESPOSTA}     GET On Session     fakeAPI     Books
    Log             ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}

Requisitar o livro "${ID_LIVRO}"
    ${RESPOSTA}     GET On Session     fakeAPI     Books/${ID_LIVRO}
    Log             ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}

## Conferências
Conferir se retorna uma lista com "${QTDE_LIVROS}" livros
    Length Should Be    ${RESPOSTA.json()}    ${QTDE_LIVROS}

Conferir se retorna os dados corretos do livro 15
    Dictionary Should Contain Item    ${RESPOSTA.json()}    id             ${BOOK15.id}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    title          ${BOOK15.title}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    pageCount      ${BOOK15.pageCount}
    Should Not Be Empty               ${RESPOSTA.json()["description"]}
    Should Not Be Empty               ${RESPOSTA.json()["excerpt"]}
    Should Not Be Empty               ${RESPOSTA.json()["publishDate"]}
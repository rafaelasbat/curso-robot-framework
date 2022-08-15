*** Settings ***
Documentation       Keywords gerais de todas as requisições

Resource            ../helpers/libraries.robot

*** Keywords ***
## Setup
Conectar a minha API
    Create Session      fakeAPI     ${URL}

## Ações
Editar variável book para "${ACAO}"     
    Set To Dictionary    ${BOOK}    id             ${${ACAO}.id}
    ...                             title          ${${ACAO}.title}
    ...                             description    ${${ACAO}.description}
    ...                             pageCount      ${${ACAO}.pageCount}
    ...                             excerpt        ${${ACAO}.excerpt}
    ...                             publishDate    ${${ACAO}.publishDate}


## Conferências
Conferir o status code
    [Arguments]     ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}

Conferir o reason 
    [Arguments]     ${REASON_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.reason}    ${REASON_DESEJADO}
Conferir o cadastro do livro conforme dados enviados
    Dictionary Should Contain Item    ${RESPOSTA.json()}    id             ${BOOK.id}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    title          ${BOOK.title}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    description    ${BOOK.description}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    pageCount      ${BOOK.pageCount}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    excerpt        ${BOOK.excerpt}
    Dictionary Should Contain Item    ${RESPOSTA.json()}    publishDate    ${BOOK.publishDate}
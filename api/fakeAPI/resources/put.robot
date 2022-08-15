*** Settings ***
Documentation       Keywords dos endpoints de POST

Resource            ../resources/helpers/libraries.robot

*** Keywords ***
## Ações
Editar o livro "${LIVRO}"
    ${RESPOSTA}    PUT On Session      fakeAPI    Books/${LIVRO}
    ...                                data={"id": 2323,"title": "teste editado","description": "teste editado","pageCount": 200,"excerpt": "string","publishDate": "2022-08-10T23:06:07.838Z"}    
    ...                                headers=&{HEADERS}
    Log                  ${RESPOSTA.text}    
    Set Test Variable    ${RESPOSTA}
    Editar variável book para "PUT"

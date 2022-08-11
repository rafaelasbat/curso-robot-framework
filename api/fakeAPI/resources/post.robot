*** Settings ***
Documentation       Keywords dos endpoints de POST

Resource            ../resources/helpers/librarys.robot

*** Keywords ***
## Ações
Cadastrar um novo livro
    ${RESPOSTA}    POST On Session      fakeAPI    Books   
    ...                                 data={"id": 2323,"title": "teste","description": "teste","pageCount": 200,"excerpt": "string","publishDate": "2022-08-10T23:06:07.838Z"}    
    ...                                 headers=&{HEADERS}
    Log                  ${RESPOSTA.text}    
    Set Test Variable    ${RESPOSTA}
    Editar variável book para "POST"



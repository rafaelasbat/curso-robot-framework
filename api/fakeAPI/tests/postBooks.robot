*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Force Tags          postBooks

Resource            ../resources/post.robot

Suite Setup         Conectar a minha API

*** Test Case ***
Cadastrar um novo livro (POST)
    Cadastrar um novo livro
    Conferir o status code    200
    Conferir o reason         OK
    Conferir o cadastro do livro conforme dados enviados

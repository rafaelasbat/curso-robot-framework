*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Force Tags          putBooks

Resource            ../resources/put.robot

Suite Setup         Conectar a minha API

*** Test Case ***
Editar um livro (PUT)
    Editar o livro "2323"
    Conferir o status code    200
    Conferir o reason         OK
    Conferir o cadastro do livro conforme dados enviados
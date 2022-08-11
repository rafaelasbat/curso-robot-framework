*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Force Tags          putBooks

Resource            ../resources/delete.robot

Suite Setup         Conectar a minha API

*** Test Case ***
Deletar um livro (DELETE)
    Deletar o livro "2323"
    Conferir o status code    200
    Conferir o reason         OK
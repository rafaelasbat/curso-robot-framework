*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Force Tags          getBooks

Resource            ../resources/get.robot
Resource            ../resources/helpers/hooks.robot

Suite Setup         Conectar a minha API

*** Test Case ***
Buscar a listagem de todos os livros (GET em todos os livros)
    Requisitar todos os livros
    Conferir o status code    200
    Conferir o reason         OK
    Conferir se retorna uma lista com "200" livros

Buscar um livro específico (GET em um livro específico)
    Requisitar o livro "15"
    Conferir o status code    200
    Conferir o reason         OK
    Conferir se retorna os dados corretos do livro 15
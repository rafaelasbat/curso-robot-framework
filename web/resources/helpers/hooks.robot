*** Settings ***
Documentation   Passos principais para os testes no site da Amazon.com.br

*** Keywords ***
Abrir o navegador
    New Browser     ${BROWSER}      ${HEADLESS}

Fechar o navegador
    Close Browser 

Acessar a home page do site Amazon.com.br
    New Page     
    Go To       url=${URL}      timeout=5m
    Wait For Elements State     ${MENU_TODOS}
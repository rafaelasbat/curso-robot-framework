*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}               chrome
${URL}                   https://www.amazon.com.br/
${MENU_ELETRONICOS}      //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]
${BARRA_PESQUISA}        twotabsearchtextbox
${BOTAO_PESQUISA}        nav-search-submit-button

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER} 
    Maximize Browser Window

Fechar o navegador
    Close Browser 

Acessar a home page do site Amazon.com.br
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${TEXTO_ELETRONICOS}"
    Wait Until Page Contains         text=${TEXTO_ELETRONICOS} 
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS} 

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
    Input Text    locator=${BARRA_PESQUISA}    text=${NOME_PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=${BOTAO_PESQUISA}

Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${NOME_PRODUTO}')])[1]

Adicionar o produto "${PRODUTO}" no carrinho
    Click Element    locator=(//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')])[1]
    Wait Until Element Is Visible    locator=//span[@class='a-size-large product-title-word-break'][contains(.,'${PRODUTO}')]
    Click Element    locator=add-to-cart-button

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]

Remover o produto "Console Xbox Series S" do carrinho
    Click Element    locator=//a[@class='a-button-text']
    Wait Until Element Is Visible    locator=//h1[contains(.,'Carrinho de compras')]
    Click Element    locator=//input[contains(@value,'Excluir')]

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=//div[contains(@data-action,'delete')]
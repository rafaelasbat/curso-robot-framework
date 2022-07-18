*** Settings ***
Documentation    Resources dos casos de teste

*** Keywords ***
Entrar no menu "Eletrônicos"
    Click      ${MENU_ELETRONICOS}

Verificar se aparece a frase "${TEXTO_ELETRONICOS}"
    Wait Until Page Contains         text=${TEXTO_ELETRONICOS} 
    Wait For Elements State    locator=${HEADER_ELETRONICOS} 

Verificar se o título da página fica "${TITULO}"
    Get Title    ==	 ${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
    Sleep        15s
    Fill Text    ${BARRA_PESQUISA}    ${NOME_PRODUTO}

Clicar no botão de pesquisa
    Click    ${BOTAO_PESQUISA}

Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
    Wait For Elements State    (//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${NOME_PRODUTO}')])[1]

Adicionar o produto "${PRODUTO}" no carrinho
    Click           (//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')])[1]
    Wait For Elements State      //span[@class='a-size-large product-title-word-break'][contains(.,'${PRODUTO}')]
    Click           id=add-to-cart-button

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Wait For Elements State    //span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]

Remover o produto "Console Xbox Series S" do carrinho
    Click         //a[@class='a-button-text']
    Wait For Elements State     //h1[contains(.,'Carrinho de compras')]
    Click         //input[contains(@value,'Excluir')]

Verificar se o carrinho fica vazio
    Wait For Elements State     //div[contains(@data-action,'delete')]
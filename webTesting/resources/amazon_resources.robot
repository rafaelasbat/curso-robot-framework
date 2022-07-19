*** Settings ***
Documentation    Resources dos casos de teste

*** Keywords ***
Abrir menu "Todos"
    Click                       ${MENU_TODOS}    
    Wait For Elements State     ${CATEGORIAS}   
    Click                       ${VER_TUDO_CATEG} 
    Wait For Elements State     ${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Abrir menu "Todos"
    Click                       ${MENU_ELETRONICOS}
    Wait For Elements State     ${TIT_ELETRONICOS}
    Click                       ${TUDO_ELETRONICOS}

Verificar se aparece a frase "${TEXTO_ELETRONICOS}"
    Wait For Elements State   //h1[contains(.,'${TEXTO_ELETRONICOS}')]

Verificar se o título da página fica "${TITULO}"
    Get Title    ==	 ${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Wait For Elements State    //a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome de produto "${NOME_PRODUTO}" no campo de pesquisa
    Sleep        15s
    Fill Text    ${BARRA_PESQUISA}    ${NOME_PRODUTO}

Clicar no botão de pesquisa
    Click    ${BOTAO_PESQUISA}

Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
    Wait For Elements State    (//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${NOME_PRODUTO}')])[1]

Adicionar o produto "${PRODUTO}" no carrinho
    Click                       (//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')])[1]
    Wait For Elements State     //span[@class='a-size-large product-title-word-break'][contains(.,'${PRODUTO}')]
    Click                       ${BTN_ADICIONAR}

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Wait For Elements State     ${MSG_ADICIONADO}

Remover o produto "Console Xbox Series S" do carrinho
    Click                       ${LINK_PRODUTO}
    Wait For Elements State     ${TIT_CARRINHO}
    Click                       ${BTN_EXCLUIR} 

Verificar se o carrinho fica vazio
    Wait For Elements State     ${MSG_CARRINHO_VAZIO}
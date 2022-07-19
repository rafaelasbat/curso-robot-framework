*** Variables ***
#GERAIS
${BROWSER}               chromium
${HEADLESS}              false
${URL}                   https://www.amazon.com.br/

#HOME
${MENU_TODOS}            //span[@class='hm-icon-label'][contains(.,'Todos')]
${BARRA_PESQUISA}        id=twotabsearchtextbox
${BOTAO_PESQUISA}        id=nav-search-submit-button
${CATEGORIAS}            //div[@class='hmenu-item hmenu-title '][contains(.,'comprar por categoria')]
${VER_TUDO_CATEG}        (//a[@class='hmenu-item hmenu-compressed-btn'][contains(.,'ver tudo')])[1]

#ELETRONICOS
${MENU_ELETRONICOS}      //a[@class='hmenu-item'][contains(.,'Eletrônicos, TV e Áudio')]
${TIT_ELETRONICOS}       //div[@class='hmenu-item hmenu-title '][contains(.,'eletrônicos')]
${TUDO_ELETRONICOS}      //a[contains(.,'Tudo em Eletrônicos')]

#XBOX
${LINK_PRODUTO}          //a[@class='a-button-text']

#CARRINHO DE COMPRAS
${BTN_ADICIONAR}         id=add-to-cart-button
${MSG_ADICIONADO}        //span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]
${TIT_CARRINHO}          //h1[contains(.,'Carrinho de compras')]
${BTN_EXCLUIR}           //input[contains(@value,'Excluir')]
${MSG_CARRINHO_VAZIO}    //h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]
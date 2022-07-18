*** Variables ***
${BROWSER}               chromium
${HEADLESS}              false
${URL}                   https://www.amazon.com.br/
${MENU_TODOS}            //span[@class='hm-icon-label'][contains(.,'Todos')]
${MENU_ELETRONICOS}      //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}    //h1[contains(.,'Eletrônicos e Tecnologia')]
${BARRA_PESQUISA}        id=twotabsearchtextbox
${BOTAO_PESQUISA}        id=nav-search-submit-button
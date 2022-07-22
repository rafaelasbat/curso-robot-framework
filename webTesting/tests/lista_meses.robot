*** Settings ***
Documentation    Essa suite lista todos os meses do ano

*** Variable *** 
@{MESES}    janeiro  fevereiro  março  abril  maio  junho  julho  agosto  setembro  outubro  novembro  dezembro

*** Test Cases *** 
Cenário: Imprimir os meses do ano
    Imprimir os meses do ano

*** Keywords ***
Imprimir os meses do ano
    Log To Console      ${MESES[0]}
    Log To Console      ${MESES[1]}
    Log To Console      ${MESES[2]}
    Log To Console      ${MESES[3]}
    Log To Console      ${MESES[4]}
    Log To Console      ${MESES[5]}
    Log To Console      ${MESES[6]}
    Log To Console      ${MESES[7]}
    Log To Console      ${MESES[8]}
    Log To Console      ${MESES[9]}
    Log To Console      ${MESES[10]}
    Log To Console      ${MESES[11]}

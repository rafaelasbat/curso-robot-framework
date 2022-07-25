*** Settings ***
Documentation     Esta suite de teste demonstra testes usando loops (IF/ELSE e FOR)
Force Tags        loops

*** Variable ***
@{NUMEROS}      1  2  3  4  5  6  7  8  9  10

*** Test Case ***
Cenário: Verificar números 5 e 10
    Logar números 5 e 10

*** Keywords ***
Logar números 5 e 10
    Log To Console  ${\n}
    FOR  ${NUMERO}  IN  @{NUMEROS}
        IF  ${NUMERO} == 5 or ${NUMERO} == 10
            Log To Console  Eu sou o número ${NUMERO}!
        ELSE
            Log To Console  Eu não sou o número 5 e nem o 10!
        END
    END
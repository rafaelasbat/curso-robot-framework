*** Variables ***
## Gerais
${URL}      https://fakerestapi.azurewebsites.net/api/v1/

## GET
${RESPOSTA}
&{BOOK15}   id=15
...         title=Book 15
...         pageCount=1500

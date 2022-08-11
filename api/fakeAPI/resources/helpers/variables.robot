*** Variables ***
## Gerais
${URL}        https://fakerestapi.azurewebsites.net/api/v1/
${RESPOSTA}
&{HEADERS}    content-type=application/json

## GET
&{BOOK15}   id=15
...         title=Book 15
...         pageCount=1500

#POST
&{BOOK}
&{POST}        id=2323
...            title=teste
...            description=teste
...            pageCount=200
...            excerpt=string
...            publishDate=2022-08-10T23:06:07.838Z

#PUT
&{PUT}         id=2323
...            title=teste editado
...            description=teste editado
...            pageCount=200
...            excerpt=string
...            publishDate=2022-08-10T23:06:07.838Z

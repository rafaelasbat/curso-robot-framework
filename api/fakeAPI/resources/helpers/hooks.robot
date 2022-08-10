*** Settings ***
Documentation       Keywords gerais de todas as requisições

Resource            ../helpers/librarys.robot

*** Keywords ***
Conectar a minha API
    Create Session      fakeAPI     ${URL}
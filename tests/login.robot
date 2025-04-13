*** Settings ***
Documentation         Cenarios da pagina de Login

Resource                          ../resources/base.robot
Resource                          ../resources/locators/login_locators.robot
Resource                          ../keywords/login_keywords.robot

Test Setup                        Setup Login
Test Teardown                     Take Screenshot

*** Test Cases ***

Login valido
    [Tags]       valid_login
    Realiza Login                  mateus@gmail.com    123456
    Valida Login com sucesso

Login sem credenciais
    [Tags]       inv_login
    Realiza Login    ${EMPTY}      ${EMPTY}
    Valida Mensagem de Erro        E-mail inválido.     

Login com senha invalida
    [Tags]       inv_pass
    Realiza Login                  mateus@gmail.com      123
    Valida Mensagem de Erro        Senha inválida.

Login com e-mail invalido
    [Tags]       inv_email
    Realiza Login                   mateus.com.br        123456
    Valida Mensagem de Erro         E-mail inválido.
*** Settings ***
Documentation         Cenários da página de Login

Resource              ../resources/base.robot

Test Setup            Setup Login
Test Teardown         Take Screenshot

*** Test Cases ***

Login válido
    [Documentation]             Deve realizar login com sucesso
    [Tags]       valid_login
    Fill Text    id=user        mateus@gmail.com
    Fill Text    id=password    123456

    Click        id=btnLogin

    Wait For Elements State    css=.swal2-title    visible      5s
    Get Text                   css=.swal2-title    equal        Login realizado

Login sem credenciais
    [Documentation]            Deve exibir mensagem de erro ao tentar login sem credenciais
    [Tags]       inv_login
    Click        id=btnLogin

    Wait For Elements State    css=.invalid_input    visible      5s
    Get Text                   css=.invalid_input    equal        E-mail inválido.

Login com senha inválida
    [Documentation]             Deve exibir mensagem de erro ao tentar login com senha incorreta
    [Tags]       inv_pass
    Fill Text    id=user        mateus@gmail.com
    Fill Text    id=password    123

    Click        id=btnLogin

    Wait For Elements State    css=.invalid_input    visible      5s
    Get Text                   css=.invalid_input    equal        Senha inválida.

Login com e-mail inválido
    [Documentation]             Deve exibir mensagem de erro ao tentar login com email inválido
    [Tags]       inv_email
    Fill Text    id=user        mateusgmail.com
    Fill Text    id=password    123456

    Click        id=btnLogin

    Wait For Elements State    css=.invalid_input    visible      5s
    Get Text                   css=.invalid_input    equal        E-mail inválido.
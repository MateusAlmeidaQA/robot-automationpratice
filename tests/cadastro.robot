*** Settings ***
Documentation        Cenários da tela de Cadastros

Resource    ../resources/base.robot

Test Setup        Setup Cadastro
Test Teardown     Take Screenshot

*** Test Cases ***
Cadastro de novo usuário
    [Documentation]            Deve cadastrar novo usuário com sucesso
    [Tags]       valid_cad
    Wait For Elements State    xpath=//h3[text()="Cadastro de usuário"]    visible    5

    Fill Text    id=user        Mateus
    Fill Text    id=email       mateus@gmail.com
    Fill Text    id=password    123456

    Click        id=btnRegister

    Wait For Elements State    css=.swal2-title    visible
    Get Text                   css=.swal2-title    equal        Cadastro realizado!

Cadastro sem campos obrigatórios
    [Documentation]            Deve exibir mensagem de erro ao tentar Cadastro sem preencher campos
    [Tags]   inv_cad
    
    Click    id=btnRegister

    Wait For Elements State    css=.errorLabel    visible    5
    Get Text                   css=.errorLabel    equal    O campo nome deve ser prenchido

Cadastro sem nome
    [Documentation]            Deve exibir mensagem de erro ao tentar cadastro sem nome
    [Tags]       missing_name
    Fill Text    id=email           mateus@gmail.com
    Fill Text    id=password        123456
    
    Click        id=btnRegister

    Wait For Elements State    css=.errorLabel    visible    5
    Get Text                   css=.errorLabel    equal      O campo nome deve ser prenchido  

Cadastro sem E-mail
    [Documentation]            Deve exibir mensagem de erro ao tentar cadastro sem e-mail
    [Tags]       inv_email
    Fill Text    id=user            Mateus
    Fill Text    id=password        123456
    
    Click        id=btnRegister

    Wait For Elements State    css=.errorLabel    visible    5
    Get Text                   css=.errorLabel    equal      O campo e-mail deve ser prenchido corretamente

Cadastro sem senha
    [Documentation]            Deve exibir mensagem de erro ao tentar cadastro sem senha
    [Tags]       inv_pass
    Fill Text    id=user            Mateus    
    Fill Text    id=email           mateus@email.com
    
    Click        id=btnRegister

    Wait For Elements State    css=.errorLabel    visible    5
    Get Text                   css=.errorLabel    equal      O campo senha deve ter pelo menos 6 dígitos




    
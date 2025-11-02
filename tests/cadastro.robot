*** Settings ***
Documentation       Cenários da tela de Cadastros

# Resource            ../resources/base.robot
Resource            ../resources/locators/cadastro_locators.robot
Resource            ../keywords/cadastro_keywords.robot

Test Setup          Setup Cadastro
# Test Teardown       Take Screenshot

*** Test Cases ***

Cadastro de novo usuário
    [Tags]       valid_cad
    
    Realiza um cadastro                    Mateus                mateus@email.com    Senha123
    Valida cadastro com sucesso            Cadastro realizado!        

Cadastro sem campos obrigatórios
    [Tags]   inv_cad
    
    Click    ${BTN_REGISTER}
    Valida erro de cadastro                O campo nome deve ser prenchido

Cadastro sem nome
    [Tags]       missing_name
    
    Realiza um cadastro                    ${EMPTY}        mateus@gmail.com    123456
    Valida erro de cadastro                O campo nome deve ser prenchido  

Cadastro sem E-mail
    [Tags]       inv_email
    
    Realiza um cadastro                    Mateus    mateus.gmail.com    123456
    Valida erro de cadastro                O campo e-mail deve ser prenchido corretamente

Cadastro sem senha
    [Tags]       inv_pass
    
    Realiza um cadastro                     Mateus    mateus@gmail.com    ${EMPTY}
    Valida erro de cadastro                 O campo senha deve ter pelo menos 6 dígitos




    
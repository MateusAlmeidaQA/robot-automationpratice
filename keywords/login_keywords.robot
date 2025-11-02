*** Settings ***
Documentation                      keywords da rotina de Login

Resource                           ../resources/base.robot
Resource                           ../resources/locators/login_locators.robot

*** Keywords ***
Realiza Login
    [Arguments]                    ${EMAIL}                    ${PASSWORD}     

    Fill Text                      ${INPUT_USERNAME}           ${EMAIL}
    Fill Text                      ${INPUT_PASSWORD}           ${PASSWORD}
    Click                          ${BTN_LOGIN}

Valida Login com sucesso
    Wait For Elements State        ${VALIDATION_MSG}        visible          5s
    Get Text                       ${VALIDATION_MSG}        equal            Login realizado

Valida Mensagem de Erro
    [Arguments]                    ${EXPECTED_MSG}

    Wait For Elements State        ${INVALID_INPUT_MSG}      visible          5s
    Get Text                       ${INVALID_INPUT_MSG}      equal            ${EXPECTED_MSG}
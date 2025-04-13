*** Settings ***
Documentation            Keywords da rotina de cadastro de usuario

Resource                ../resources/base.robot
Resource                ../resources/locators/cadastro_locators.robot

*** Keywords ***
Realiza um cadastro
    [Arguments]      ${name}             ${email}        ${password}

    Fill Text        ${INPUT_NAME}       ${name} 
    Fill Text        ${INPUT_EMAIL}      ${email}
    Fill Text        ${INPUT_PASSWORD}   ${password}

    Click            ${BTN_REGISTER}

Valida cadastro com sucesso
    [Arguments]                ${EXPECTED_MSG}

    Wait For Elements State    ${SUCCESS_MSG}    visible
    Get Text                   ${SUCCESS_MSG}    equal        ${EXPECTED_MSG}

Valida erro de cadastro
    [Arguments]                ${EXPECTED_MSG}

    Wait For Elements State    ${ERROR_MSG}    visible     5
    Get Text                   ${ERROR_MSG}    equal       ${EXPECTED_MSG}
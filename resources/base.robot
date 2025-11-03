*** Settings ***
Documentation        Arquivo base

Library    Browser
Resource        ../keywords/login_keywords.robot

*** Variables ***
${EMPTY}
${BASE_URL}        https://automationpratice.com.br

*** Keywords ***
Iniciar sessão
    New Browser     browser=chromium     headless=True
    Sleep           1s
    New Page        ${BASE_URL}

Setup Cadastro
    New Browser     browser=chromium     headless=True
    Sleep           1s
    New Page        ${BASE_URL}/register
    Wait For Elements State    id=user    visible    timeout=20s

Setup Login
    New Browser     browser=chromium     headless=True
    Sleep           1s
    New Page        ${BASE_URL}/login
    Wait For Elements State    id=user    visible    timeout=20s

Inicia sessão e faz login
    New Browser     browser=chromium     headless=True
    Sleep           1s
    New Page        ${BASE_URL}/login
    Wait For Elements State    id=user    visible    timeout=20s
    Realiza Login    mateus@email.com    123456
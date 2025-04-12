*** Settings ***

Library    Browser

*** Keywords ***
Iniciar sessão
    New Browser     browser=chromium     headless=False
    New Page        http://automationpratice.com.br

Setup Cadastro
    New Browser     browser=chromium     headless=False
    New Page        http://automationpratice.com.br/register

Setup Login
    New Browser     browser=chromium     headless=False
    New Page        https://automationpratice.com.br/login

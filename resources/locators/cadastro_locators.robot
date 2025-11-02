*** Settings ***
Documentation            Elementos da tela de cadastro de usuario

*** Variables ***
${INPUT_NAME}             id=user
${INPUT_EMAIL}            xpath=//label[normalize-space(text())='E-mail']/following-sibling::input[@id='email']
${INPUT_PASSWORD}         id=password   
${BTN_REGISTER}           id=btnRegister
${ERROR_MSG}              css=.errorLabel
${SUCCESS_MSG}            xpath=//h2[@id='swal2-title' and normalize-space(text())='Cadastro realizado!']



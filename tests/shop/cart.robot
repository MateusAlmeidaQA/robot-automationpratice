*** Settings ***
Documentation        Cenarios da rotina de carrinho

Resource        ../../resources/base.robot
Resource        ../../resources/locators/login_locators.robot
Resource        ../../resources/locators/shop/cart_locators.robot
Resource        ../../keywords/login_keywords.robot
Resource        ../../keywords/shop/cart_keywords.robot

Test Setup                        Inicia sessão e faz login
Test Teardown                     Take Screenshot

*** Test Cases ***
Deve adicionar um item no carrinho
    Abrir página do produto
    Adicionar Produto ao carrinho
    Validar produto no carrinho




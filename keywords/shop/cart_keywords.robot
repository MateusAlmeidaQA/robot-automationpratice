*** Settings ***
Documentation        Keywords da rotina de carrinho

Resource        ../../resources/base.robot
Resource        ../../resources/locators/login_locators.robot
Resource        ../../resources/locators/shop/cart_locators.robot
Resource        ../../keywords/login_keywords.robot

*** Keywords ***
Abrir página do produto
    Go To                      ${BASE_URL}/product-details-one/1
    Wait For Elements State    ${BTN_ADD_TO_CART}    visible            5

Adicionar Produto ao carrinho
    Abrir página do produto
    Click                      ${BTN_ADD_TO_CART}
    Wait For Elements State    ${BTN_GO_TO_CART}    visible     10
    Click                      ${BTN_GO_TO_CART}

Validar produto no carrinho
    Wait For Elements State    ${BTN_CLEAR_CART}    visible     5
    Wait For Elements State    xpath=(//a[normalize-space(text())='Green Dress For Woman'])[2]    visible    5
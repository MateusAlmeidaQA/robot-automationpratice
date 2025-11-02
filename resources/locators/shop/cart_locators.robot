*** Settings ***

Documentation    Elementos da rotina de adição de item ao carrinho

*** Variables ***
${BTN_SHOP}                    xpath=//a[text()='Shop']
${FILTER}                      xpath=//div[contains(@class, 'product_shot_title')]  
${BTN_ADD_TO_CART}             xpath=//a[normalize-space(text())='Add To Cart']
${BTN_GO_TO_CART}              xpath=//a[normalize-space(text())='Cart View One']
${BTN_CLEAR_CART}              xpath=//button[normalize-space(text())='Clear cart']

*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  Setup_Teardown.robot
Test setup  Open Fabkids browser 
Test Teardown  Close the browser

*** Variables ***
${URL}        https://www.fabkids.com/products/LIGHT-UP-UNICORN-SNEAKER-SK2044847-7267?psrc=shop_item_shoes
${browser}    chrome
${product_size}        jquery=#sizes li:contains(M)
${addtocart_button}    jquery=.addToCartSubmitButton
${speedysignup_popup}         jquery=.speedy-signup--wrapper
${speedysignup_email_field}                  jquery=#form_input_email
${speedysignup_password_field}               jquery=#form_input_password
${speedysignup_child_name_field}             jquery=#form_input_child_name
${speedysignup_submit_btn}                   jquery=.submit
${cart}               jquery=.cart

${speedysignup_modal}            xpath://*[@id="sign-up"]

*** Test Cases ***
Test case: Register through Speedy signup
    Load The Product URL
    Select Size and Click add to cart button
    Click Add To cart Button
    Check that speedy sinup modal appears
    Fill the speedy signup popup
   
    
*** Keywords ***
Load The Product URL
    Go To    ${URL}
    
Select Size and Click add to cart button
    
    Click Element    ${product_size}
Click Add To cart Button
    Click Element    ${addtocart_button}
    
Check that speedy sinup modal appears
    Wait Until Element Is Visible     ${speedysignup_modal}
    
Fill the speedy signup popup
    ${epochtime}=        Get Time    epoch
    ${email}    Set Variable     lucia_testing_${epochtime}@test.com
    Wait Until Element is visible  ${speedysignup_email_field}    30s
    Input Text    ${speedysignup_email_field}    ${email}
    Wait Until Element is visible  ${speedysignup_password_field}     30s
    Input Password   ${speedysignup_password_field}     testing
    Input Text    ${speedysignup_child_name_field}     Chid name
    Click Element    ${speedysignup_submit_btn}
    Wait until Page Contains Element    ${cart}
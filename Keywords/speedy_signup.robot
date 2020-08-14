*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary

*** Keywords ***
Open Browser
    SeleniumLibrary.Open Browser  about:blank  browser=chrome

Navigate to the website SD
    Go To  https://shoedazzle.com/
    Maximize Browser Window

Open random grid
    # TODO - fix nav bug
    @{navs} =  Get WebElements  xpath://*[@id="x_main_navigation"]/li/*[@data-ga-category="navigation"]
    ${random} =  Evaluate  random.choice($navs)  random
    Click Element  ${random}

Open random PDP
    Wait Until Element Is Visible  xpath:(//*[@data-autotag="grid-item-name"])[1]  timeout=30
    @{pdps} =  Get WebElements  xpath://*[@data-autotag="grid-item-name"]
    ${random} =  Evaluate  random.choice($pdps)  random
    Click Element  ${random}

#Select Color

#Select Size

Click add to cart
    Wait Until Element Is Visible  xpath://*[@data-autotag="pdp-add-item-to-bag"]  timeout=30
    Click Element  xpath://*[@data-autotag="pdp-add-item-to-bag"]

Expect login modal is opened
    Wait Until Element Is Visible  xpath://*[@data-autotag="ss_email"]

Sign up
    ${email} =  Email
    ${pwd} =  Set Variable  password1
    ${zip} =  Zipcode
    Input Text  xpath://*[@data-autotag="ss_email"]  ${email}
    Input Text  xpath://*[@data-autotag="ss_password"]  ${pwd}
    Input Text  xpath://*[@data-autotag="ss_zip_code"]  ${zip}
    Click Element  xpath://*[@data-autotag="ss_submit_cta"]
    &{USER} =  Create Dictionary  email=${email}  zip=${zip}  pwd=${pwd}
    Set Global Variable  ${USER}

Expect logged in
    Wait Until Element Is Visible  xpath://*[@data-autotag="account-link"]  timeout=30
    Wait Until Element Is Visible  xpath://*[text()="Keep Shopping"]  timeout=5
    Click Element  xpath://*[text()="Keep Shopping"]

Navigate to My Account
    Click Element  xpath://*[@data-autotag="account-link"]

Verify user details
    Wait Until Element Is Visible  css:#form_input_email
    Textfield Value Should Be  css:#form_input_email  ${USER.email}


Close Browser
    SeleniumLibrary.Close browser

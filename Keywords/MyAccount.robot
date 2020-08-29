*** Settings ***
Library  SeleniumLibrary

Resource  ../Variables/Var.robot

*** Keywords ***
	
Navigate to My Account page
    Wait Until Element is Visible      ${account}
    Mouse over                         ${account}
    Page Should Contain Element        ${account details}     5s
    Click Element                      ${account details}
    ${f_name}   Get Element Attribute	       css:#form_input_email         value


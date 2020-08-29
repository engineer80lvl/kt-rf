# This is a placeholder file for Login related keywords
*** Settings ***
Library  SeleniumLibrary

# This is a placeholder file for Login related keywords

Resource  ../Variables/Var.robot

*** Keywords ***

Go to Homepage
    Wait Until Element is Visible      ${get started}
    Click link                         ${sign in link} 
    Wait Until Element is Visible      ${login form}
    Input Text                         ${username}       ${vip email}
    Input Text                         ${password}       ${vip password}
    Click Element                      ${login button}  
    Wait Until Element is Visible      ${account}        timeout=10 


    
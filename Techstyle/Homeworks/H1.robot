*** Settings ***
Library  SeleniumLibrary

*** Variables ***
 ${LOGIN URL}       https://www.fabkids.com/
 ${username}        lcostilla@techstyle.com
 ${password}        testing
 ${SignInLink}      xpath://span[contains(text(),'Sign In')]
 ${email textbox}        xpath://*[@id="user_email"]
 ${password textbox}     xpath://*[@id="user_password"]
 ${login button}         xpath://*[@id="new_user"]/input[8]
 
 ***Test Case ***
Test case validation LOGIN- VIP
    Open Browser    ${LOGIN URL}   browser=chrome
    Maximize Browser Window
    #sleep 3
   Click Element     ${SignInLink}
   Input Text    ${email textbox}   ${username}
   Input Text    ${password textbox}   ${password}
   Click Button    ${login button} 
   Log  Success!





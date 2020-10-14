*** Settings ***
Library           SeleniumLibrary

Default Tags    Sanity



*** Tasks ***
MyFirstTest
    Log  Hello world..
    
FirstSeleniumTest
    Open browser   ${URL}  chrome
    Click Link     xpath://a[@class=' login_modal_trigger'] 
    Set Browser Implicit Wait    5
   Login 
    Click Element    id=cboxClose     
    Sleep    5      
    Click Element    xpath://a[@data-ga-label="shoes-main"]  
    

*** Keywords ***

Login
    Input Text    id=reference_data    mktest1711@test.com       @{CREDENTIALS}[0]
    Input Password    name=verification_data    Tester123        @{CREDENTIALS}[1]
    Sleep    10   
   Click Element   xpath://div[@data-autotag="loginmodal-btn"]
    Sleep    10  
    Click Element    xpath://[@data-ga-label="myaccount"]
        Sleep    5    

*** Variables ***

${URL}           https://www.justfab.com/?hideCaptchaAutomation=1  
@{CREDENTIALS}       mktest1711@test.com       Tester123 
&{logindata}         Email=mktest1711@test.com      password=Tester123



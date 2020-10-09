*** Settings ***
Library  SeleniumLibrary
Suite Setup    Log    This is a suite setup
Suite Teardown    Log    This is a suite teardown
Test Setup       Log    This is a test setup    
Test Teardown    Execute Test Teardown   #This is a test teardown 

*** Variables ***
${Sign In}    xpath://*[@data-autotag="login_modal_singin"]
${Email Field}    xpath://*[@data-autotag="loginmodal-email-fld"]
${Password Field}    xpath://*[@data-autotag="loginmodal-password-fld"]
${Log In}    xpath://*[@data-autotag="loginmodal-btn"]
${My Account}    xpath://*[@data-ga-label="myaccount"]
${XpATH}    xpath://*[@data-autotag=" "]

*** Keywords ***

Execute Test Teardown
     Mouse Over    ${My Account}
     Click Link    https://www.justfab.com/index.cfm?action=member.logout
     Log     User successfully Logged Out

Execute Log In
     Open Browser    url=https://justfab.com/?hideCaptchaAutomation=1  browser=chrome
	  Wait Until Element Is Visible    class=section1-hero   
	  Log    Success: Home page is displayed
      Click Element    ${Sign In}
      #Click Element    class= login_modal_trigger  Also works
      Wait Until Element Is Visible    id=login_form_lb    
      Input Text    ${Email Field}    JFUS1@test.com
      Input Password    ${Password Field}    test123
      Click Element    ${Log In}
      Wait Until Element Is Visible    id=greeting   
	  #Close Browser
	  Log    Success: VIP User is Logged In
         

*** Test Cases *** 
	  
Existing VIP Log In 
      Open Browser    url=https://justfab.com/?hideCaptchaAutomation=1  browser=chrome
	  Wait Until Element Is Visible    class=section1-hero        
	  Log    Success: Home page is displayed
      Click Element    ${Sign In}
      #Click Element    class= login_modal_trigger  Also works
      Wait Until Element Is Visible    id=login_form_lb    
      Input Text    ${Email Field}    JFUS1@test.com
      Input Password    ${Password Field}    test123
      Click Element    ${Log In}
      Wait Until Element Is Visible    id=greeting   
	  #Close Browser
	  Log    Success: VIP User is Logged In
	  

	 #hola#    
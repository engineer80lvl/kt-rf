*** Settings ***
Library  SeleniumLibrary
Suite Setup    Log    This is a suite setup
Suite Teardown    Log    This is a suite teardown
Test Setup    Log    This is a test setup
Test Teardown    Log    This is a test teardown 

*** Variables ***
${is_login_present}    False 


*** Keywords ***
Login
       Run Keyword If    ${is_login_present} == True  Log  Executing login  ELSE  Log    Login is not present 
       
Logout
       Log  Logout from site
       Log  Verify we are on the logout page

         
*** Test Cases ***
Browser Test 
	  Open Browser    url=https://justfab.com/    browser=chrome
	  #Sleep 5
	  Close Browser
	  Log    Success
	  
Log In test
    Login
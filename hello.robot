*** Settings ***
Suite Setup  Log  This is a suite setup
Suite Teardown  Log  This ia a suite teardown
Test Setup  Verify loop
Test Teardown  Executing test teardown

*** Variables ***
${is_login_present}    False
@{list}  cat  dog  turtle

*** Keywords ***
Login to the page
	Run Keyword if  ${is_login_present}!=False  Log  Executing login  ELSE  Log  Login form is not present
	${result} =  Evaluate  10*10 + 5
	Log  ${result}
	
Verify loop
	Run Keyword if  ${is_login_present}!=False  Log  Executing login  ELSE  Log  Login form is not present
	FOR  ${index}  IN  ${list}
		Log  ${index}
	END

Helper loop 
	FOR  ${index}  IN RANGE  5
		Log  In nested loop
	END
	
Logout
	Log  do logout
	
Close browser
	Log  close browser
	
Executing test teardown
	Logout
	Close browser

*** Test Cases ***
Hello World Test
	Log  Hello World
	Log  ${CURDIR}
	Log  ${TEST NAME}
	[Teardown]  Log  This is a custom teardown
	
Hello Again World Test
	[Setup]  Log  This is a custom setup
	Log  Hello World
	Log  ${CURDIR}
	Log  ${TEST NAME}
	
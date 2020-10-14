*** settings ***
Library  SeleniumLibrary
Resource  setup.robot
Resource  operations.robot
Test Setup  Open UK Browser
Test Teardown  Close UK Browser

*** Test Case ***
Login_out Test
	Login
	Wait Until Element Is Visible  id:cboxClose
	Click Button  id:cboxClose
	Wait Until Element Is Not Visible  id:cboxClose
	Logout
	Log  ${CURDIR}
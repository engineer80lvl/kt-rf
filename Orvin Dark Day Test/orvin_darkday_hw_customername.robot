*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Get Customer Name
	Wait Until Page Contains  ${welcometext}
	Log  ${welcometext}
	
Get Profile Name
	Go To  ${profilepage}
	Wait Until Page Contains Element  xpath://*[@id="edit-member"]
	Click Element  xpath://*[@id="edit-member"]
	${firstnametext}=  Get Value  ${firstname}
	Log  ${firstnametext}
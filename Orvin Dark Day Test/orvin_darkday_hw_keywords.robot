*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Access Browser
	Open Browser  url=https://www.justfab.dk/?hideCaptchaAutomation=1  browser=chrome
	Maximize Browser Window
	
Verify Customer Name
	Wait Until Page Contains  ${welcometext}
	Log  ${welcometext}
	
Terminate Browser
	Close Browser
*** Settings ***
Library  SeleniumLibrary



*** Keywords ***
Open UK Browser
	Open Browser  https://www.justfab.co.uk/?hideCaptchaAutomation=1  chrome
	Maximize Browser Window
Close UK Browser
	Close Browser
	Log  ${TEST STATUS}
	Run Keyword if  '${TEST STATUS}' == 'PASS'  Log   Congratulations
	...  ELSE  Log  Bad Luck
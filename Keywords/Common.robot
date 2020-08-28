*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem
Library  FakerLibrary

*** Keywords ***
Set Browser and Size
	Open Browser  url=https://www.justfab.com?hideCaptchaAutomation=1  browser=chrome
	Maximize Browser Window

Closing Browser
	Close Browser
	Log  					I did it!!!

Close Popup
	Sleep 					3
	Reload Page	
 
Choose random element from list
    [Arguments]                                ${locator}
    Wait Until Element Is Visible              ${locator}
    @{fulllist}=  Get Web Elements             ${locator}
    ${random} =  Evaluate  random.choice($fulllist)  random
    Click Element                              ${random}
     
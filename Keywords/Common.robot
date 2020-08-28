*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem

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

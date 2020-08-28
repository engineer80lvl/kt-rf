*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Open browser and maximize
	Open Browser  url=https://www.amazon.com.mx/  browser=chrome
	Maximize Browser Window
	#Sleep3
	
Type Iphone 11, click search button and wait until button page 2 is present
	Input text  id=twotabsearchtextbox  Iphone 11
	Click Button  xpath=//div[@class='nav-search-submit nav-sprite']//input[@class='nav-input']
	Wait Until Element Is Visible   xpath=//li[@class='a-normal']//a[contains(text(),'2')]
	#Sleep3
	
Click on the button page 2	
	Click Link  xpath=//li[@class='a-normal']//a[contains(text(),'2')]
    Wait Until Element Is Visible   xpath=//li[@class='a-normal']//a[contains(text(),'3')]	
	
Close the browser
		Close Browser
		Log  Success!
	
*** Keywords ***
*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Open browser and maximize
	Open Browser  url=https://www.savagex.com/  browser=chrome
	Maximize Browser Window
	
Open a Bra grid
	Click Link  xpath=/html[1]/body[1]/div[1]/div[1]/div[1]/div[1]/header[1]/div[1]/div[1]/div[1]/div[1]/div[1]/nav[2]/div[1]/ul[1]/li[3]/a[1]
	Wait Until Page Contains Element   xpath=/html/body/div[1]/div/div/div/div[2]/div[3]/div[2]/div[2]/div[2]/div/article[1]/div[2]/div/a[1]/h4


Open an individual PDP
	Click Element  xpath=/html/body/div[1]/div/div/div/div[2]/div[3]/div[2]/div[2]/div[2]/div/article[1]/div[2]/div/a[1]/h4
	Wait Until Element Is Visible  xpath=//body/div[@id='__next']/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]

Click on the Review link	
	Click Element  xpath=//body/div[@id='__next']/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/label[1]/span[2]
    Click button  xpath=//body/div[@id='__next']/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[3]/div[1]/button[1]
	
Close the browser
	Close Browser
	Log  Success!
	
*** Keywords ***
Set Selenium Speed  1 second
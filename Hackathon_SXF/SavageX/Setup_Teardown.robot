*** Setting ***
Library  SeleniumLibrary

*** Keywords ***
SXF US PROD
	Open Browser    url=https://www.savagex.com/  browser=chrome
	Maximize Browser Window
	#Sleep3

Close the browser
	Close Browser
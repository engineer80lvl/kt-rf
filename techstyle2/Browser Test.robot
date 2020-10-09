*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Browser Test 
	  Open Browser    url=https://justfab.com/    browser=chrome
	  #Sleep 5
	  Close Browser
	  Log    Success
	  
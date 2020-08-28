*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    url=http://www.shoedazzle.com/    browser=Chrome
Test Teardown  Run Keyword If Test Passed  Test Success

*** Variables ***
${Shoes grid}                xpath://*[@data-ga-label="shoes-main"]
${Item container}            xpath://*[@class="grid-product-inner"]
${Size and fit filters}      xpath://*[@data-autotag="filter_set_size_fit"]
${Extra Wide Calf checkbox}  xpath://*[@data-autotag="filter_size_extrawidecalf"]
${Item flag}                 xpath://*[@class="grid-product-feature-flag available-only"]
${element}

*** Keywords ***
Wait for element to be enabled
	Wait Until Element is Enabled  ${element}  15s

Wait for element to be visible
	Wait Until Element is Visible  ${element}  15s
	
Click current element
    Click element    ${element}
    
Scroll down
    Execute JavaScript  window.scrollTo(0,900)

Test Success
	Log  Test was succesfull! :D
	Close Browser
	
*** Test Cases ***
Select extra wide calf filter
#open broser
    Maximize Browser Window
    Set Global variable    ${element}    ${Shoes grid}
	Wait for element to be enabled
	Click current element
	
#Verify items on grid
    Set Global variable    ${element}    ${Item container}
    Wait for element to be enabled
    Set Global variable    ${element}    ${Size and fit filters}  
    Wait for element to be enabled
    Click current element 

#Select extra wide calf filter
    Scroll down
    Select Checkbox    ${Extra Wide Calf checkbox}
    Set Global variable    ${element}    ${Item flag} 
    Wait for element to be visible
    Element Should Contain    ${element}     EXTRA WIDE CALF  
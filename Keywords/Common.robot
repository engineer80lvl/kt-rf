*** Keywords ***
Set Browser and Size
	Open Browser                                url=https://www.justfab.com?hideCaptchaAutomation=1  browser=chrome
	Maximize Browser Window

Closing Browser
	Close Browser
	Log  					                    I did it!!!

Close Popup
	Sleep 					                    3
	Reload Page	
 
Choose random element from list
    [Arguments]                                 ${locator}
    Wait Until Element Is Visible               ${locator}
    @{fulllist}=                                Get Web Elements    ${locator}
    ${random} =                                 Evaluate            random.choice($fulllist)  random
    Click Element                               ${random}
 
Choose random element from list and get text
    [Arguments]                                 ${locator}
    Wait Until Element Is Visible               ${locator}
    @{fulllist}=                                Get Web Elements    ${locator}
    ${random} =                                 Evaluate            random.choice($fulllist)  random
    ${randomtext}=  Get Text                    ${random}
    Set Global Variable                         ${randomtext}
    Click Element                               ${random}

Compare Values
    [Arguments]                                 ${string1}          ${string2}
    Should Be Equal                             ${string1}          ${string2}
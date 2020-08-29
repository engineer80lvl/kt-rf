*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Sign In User
	Click Element  xpath://*[@data-autotag="login_modal_singin"]
	Input Text  xpath://*[@data-autotag="loginmodal-email-fld"]  ${loginemail}
	Input Text  xpath://*[@data-autotag="loginmodal-password-fld"]  ${loginpassword}
	Click Element  xpath://*[@data-autotag="loginmodal-btn"]
	BuiltIn.Sleep  5
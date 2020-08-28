*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem
Library  FakerLibrary

*** Keywords ***

Get Unique Number
	${timestamp} = 				Get Time  number
	${timestamp} = 				Convert Date  ${timestamp}  epoch
	${timestamp} = 				Set Global Variable  ${timestamp}

Create Unique Login
	Get Unique Number
	${email to enter} =			Set Global Variable  ${email to enter}  dc${timestamp}@test.com

Sign In On Homepage VIP
	Wait Until Element Is Visible		${homepage signin}
	Click Element				${homepage signin}
	Wait Until Element Is Visible		${login email field}
	Input Text				${login email field}  ${VIP email}
	Input Text				${login password field}  ${VIP password}
	Click Element				${login CTA}

Fill Out Speedy Signup Form
	Wait Until Element Is Visible		${speedy signup email field}
	Create Unique Login
	Input Text  				${speedy signup email field}  ${email to enter}	
	Input Text  				${speedy signup password field}  ${password to enter}
       	Click Button  				${continue CTA}

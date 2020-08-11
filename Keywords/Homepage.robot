*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem

*** Keywords ***

Name Displayed
	Log					${user name}

Name Not Displayed
	Log					Warning: No username displayed in welcome message

Get User Name From Homepage
	Wait Until Element Is Visible		${user greeting}
	${greeting length}=			Get Length  ${user greeting}
	${user name}=				Get Text  ${user greeting}
	${user name}=				Get Substring  ${user name}  4  ${greeting length}
	${user name}=				Strip String  ${user name}
	${greeting length}=			Get Length  ${user name}
	Set Global Variable			${user name}
	Set Global Variable			${greeting length}


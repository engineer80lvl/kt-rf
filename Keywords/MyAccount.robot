*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem

*** Keywords ***

Get Email From My Account
	Go To 					${my account url}
	Wait Until Element Is Visible 		${my account email locator}
	${my account email} = 			Get Text  ${my account email locator}
	Set Global Variable			${my account email}

Log Out of Account
	Go To					${direct log out}
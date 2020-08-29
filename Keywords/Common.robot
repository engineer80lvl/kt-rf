# This is a placeholder file for common/shared keywords
*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem

Resource  ../Variables/Var.robot

*** Keywords ***
Open Browser and Maximize
	Open Browser  ${sd url}  ${browser}
	Maximize Browser Window

Exit Browser
	Close Browser
	Log  					Successfully logged out

Close Popup
	Sleep 					3
	Reload Page	
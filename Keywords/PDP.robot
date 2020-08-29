# This is a placeholder file for PDP related keywords
*** Settings ***
Library  SeleniumLibrary

Resource  ../Variables/Var.robot

*** Keywords ***
	
Select Random Product to view PDP
    Page Should Contain Element        ${shoes}     5s
    Click Element                      ${shoes}

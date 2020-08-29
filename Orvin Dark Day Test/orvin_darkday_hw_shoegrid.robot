*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Shoe Grid Page
	Go To  ${shoespage}
	Wait Until Location Contains  ${shoespage}

Grid Count
	Wait Until Page Contains Element  ${totalgrid}
	Page Should Contain Element  ${totalgrid}
	${totalgridtext}=  Get Text  ${totalgrid}
	Log  ${totalgridtext}
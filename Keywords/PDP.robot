*** Settings ***
Library  SeleniumLibrary
*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem

*** Keywords ***

Verify Product Name and Review Count on PDP
	Wait Until Element Is Visible		${product details locator}
	Page Should Contain			${product name text}
	${pdp product review count}=		Get Text  ${pdp product review count locator}
	Should Be Equal				${product review count}  ${pdp product review count}


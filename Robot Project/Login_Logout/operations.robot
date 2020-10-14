*** Settings ***
Library    SeleniumLibrary    

*** variables ***
${email}  mktest192@test.com

*** keywords ***
Login
	Click Element  class:login_modal_trigger
	Wait Until Element Is Visible  name:form_login
	Click Element  name:reference_data
	Input Text  name:reference_data     ${email}
	#Run Keyword if  ${email} == "mktest192@test.com"  Log  VIP account
	Input Password  name:verification_data  Tester123
	Click Element  class:login_cta_submit
	Sleep  10
Logout
	Mouse Over  class:icon
	#Click Element  xpath://div[@id="example"]
	Click Element  xpath://a[@href="https://www.justfab.co.uk/index.cfm?action=member.logout"]
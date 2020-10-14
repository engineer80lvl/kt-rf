*** settings ***
Library     SeleniumLibrary
Resource  setup.robot
Test Setup  Open UK Browser 

*** Variables***
@{email}        mktest2220@test.com
@{name}         mktest
@{pwd}          Tester123
*** Test Cases ***
Signup Test
    Click Element                  class:login_modal_trigger
	Wait Until Element Is Visible  name:form_login
	Click Element                  class:pink
	Wait Until Element Is Visible  class:panel
	Click Element                  class:skipquiz-link
	Wait Until Element Is Visible  class:container
	Input Text                     name:firstname     ${name}
	Input Text                     name:password     ${pwd}
	click button                   shoesize:6
	click button                   id:terms_checkbox
	click button                   id:continue_registration
	
    
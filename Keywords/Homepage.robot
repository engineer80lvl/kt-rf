*** Keywords ***

Name Displayed
	Log					            ${user name}

Name Not Displayed
	Log					            Warning: No username displayed in welcome message

Get User Name From Homepage
	Wait Until Element Is Visible	${user greeting}
	${greeting length}=			    Get Length                      ${user greeting}
	${user name}=				    Get Text                        ${user greeting}
	${user name}=				    Get Substring                   ${user name}  4  ${greeting length}
	${user name}=				    Strip String                    ${user name}
	${greeting length}=			    Get Length                      ${user name}
	Set Global Variable			    ${user name}
	Set Global Variable			    ${greeting length}

Navigate to Boutique
    Go To					        ${boutique url}

Get Boutique Reward Points
    Wait Until Element Is Visible	${boutique points locator}
    ${boutique points}=             Get Text                        ${boutique points locator}
    Log                             ${boutique points}
    ${pnt length}=                  Get Length                      ${boutique points}
    ${boutique points}=             Get Substring                   ${boutique points}  14  ${pnt length}
    ${boutique points}=             Strip String                    ${boutique points}
    Set Global Variable             ${boutique points}
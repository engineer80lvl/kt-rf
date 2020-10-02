*** Keywords ***

Get Email From My Account
	Go To 					            ${my account url}
	Wait Until Element Is Visible 		${my account email locator}
	${my account email} = 			    Get Text                        ${my account email locator}
	Set Global Variable			        ${my account email}

Log Out of Account
	Go To					            ${direct log out}

Navigate to My Account
    Go To					            ${my account url}

Get My Account Reward Points
    Wait Until Element Is Visible		${my account loyalty pts locator}
    ${my account loyalty points}=		Get Text                        ${my account loyalty pts locator}
    Set Global Variable                 ${my account loyalty points}

Hover Over My Account
    Wait Until Element Is Visible       ${my account locator}
    Mouse Over                          ${my account locator}

Find Reward Points Showing In My Account Dropdown
    Hover Over My Account
    Wait Until Element Is Visible       ${points in dropdown locator}
    ${points in dropdown}=              Get Text                        ${points in dropdown locator}
    ${pnt length}=                      Get Length                      ${points in dropdown}
    ${points in dropdown}=              Get Substring                   ${points in dropdown}  17  ${pnt length}
    ${points in dropdown}=              Strip String                    ${points in dropdown}
    ${pnt length}=                      Get Length                      ${points in dropdown}
    ${pnt length}=                      Evaluate                        ${pnt length}-4
    ${points in dropdown}=              Get Substring                   ${points in dropdown}  0  ${pnt length}
    Set Global Variable                 ${points in dropdown}
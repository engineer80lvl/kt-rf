*** Keywords ***

Verify Product Name and Review Count on PDP
	Wait Until Element Is Visible		${product details locator}
	Page Should Contain			        ${product name text}
	${pdp product review count}=		Get Text  ${pdp product review count locator}
	Should Be Equal				        ${product review count}  ${pdp product review count}

Verify Product Name on PDP
    Wait Until Element Is Visible		${product details locator}
	Page Should Contain			        ${randomtext}

Verify Review Count on PDP
    Wait Until Element Is Visible		${product details locator}
    ${pdp product review count}=		Get Text  ${pdp product review count locator}
	Should Be Equal				        ${product review count}  ${pdp product review count}

Logged Out PDP Click ATB CTA
	Click Element				        ${Logged Out ATB}    
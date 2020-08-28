*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#VIP Login Information
${VIP email}					    JFP1@email.com 
${VIP password}					    test12

#Create Lead User
${email to enter}				
${password to enter}				test12	
${timestamp}					    ${0}

#Direct URLs
${my account url}				    https://www.justfab.com/account#index.cfm?action=accountinfo.edit_member&tab=profile
${direct log out}				    https://www.justfab.com/index.cfm?action=member.logout

#RV Page Locators
${homepage signin}				    xpath://*[@data-autotag="login_modal_singin"]
${login email field}				xpath://*[@data-autotag="loginmodal-email-fld"]
${login password field}				xpath://*[@data-autotag="loginmodal-password-fld"]
${login CTA}					    xpath://*[@data-autotag="loginmodal-btn"]

#Speedy Signup Locators
${speedy signup email field}		xpath://*[@id="ssaEmail"]
${speedy signup password field}		xpath://*[@id="ssPass"]
${continue CTA}					    xpath://*[@id="ssaSubmit"]

#Navigation Locators and Values
${top nav shoes}				    xpath://*[@data-ga-label="shoes-main"]
${top nav clothing}				    xpath://*[@data-ga-label="clothing-main"]
${main navigation}                  xpath://ul/li/*[@data-ga-category="navigation"][contains(@class, "is-link")]

@{navlist}

#PDP Locators and Values
${size selectors}				    xpath://*[@data-autotag="product-size"][contains(@class, "option")]
${size 9}					        xpath://*[@data-sizeID="10607"]
${Logged out ATB}				    xpath://*[@data-autotag="speedy-signup_addtobag"]
${product details locator}			xpath://*[@data-autotag="pdp-overview"]
${pdp product review count locator}	xpath://*[@class="pdp-review-overview-count"]

${pdp product review count}			${0}
@{sizelist}

#My Account Locators and Values
${my account email locator}			xpath://*[@id="span_change_email_address_current_email"]
${my account size locator}			xpath://*[@value="shoe-size-column"]
${my account loyalty pts locator}	xpath://*[@class="inline"]
${my account locator}				xpath://*[@class="fontello icon-user-2"]

${my account loyalty points}
${my account email}

#Grid Locators and Values
${grid count locator}				xpath://*[@class="results-count"]
${grid product name}				xpath://*[@data-autotag="grid-item-name"]
${grid product price}				xpath://*[@class="price"]
${grid product review count}		xpath://*[@class="review-all"]
${number of items in grid}			xpath://*[@class="results-total"]
${filter clear all}				    xpath://*[@class="clear-all"]
${grid details block}				xpath://*[@data-autotag="grid-item"]


${product name text}				
${product price text}
${product review count}
@{grid list product names}
@{grid list product prices}
@{full list}
@{gridlist}
${grid count text}			
${grid count number}				${0}
${number of items in grid value}	${0}


#My Boutique Page Locators and Values
${user greeting}				    xpath://*[@id="greeting"]

${user name}				
${greeting length}				    ${0}	


#Other Variables
${i}						        ${1}
${list length}					    ${0}
@{fulllist}
${locator}
${random}
${randomtext}





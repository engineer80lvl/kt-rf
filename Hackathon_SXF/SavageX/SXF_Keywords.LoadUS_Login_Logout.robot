*** Setting ***
Library  SeleniumLibrary
Library  String


***Variables***
${country_selector}        xpath://*[@id="bfx-cc-wrapper"]/div[1]/div
${domain_popup}          xpath://*[@id="bfx-cc-wrapper"]/div[2]/div
${countries_option}      xapth://select[@id='bfx-cc-countries-select']
${us_country}         xpath://option[contains(text(),'United States')]
${container}        xpath://form[@id='bfx-cc-form']
${ok_button}        xpath://input[@id='bfx-cc-btn']
${signin_button}        xpath://span[contains(text(),'Sign In')]
${create_account_btn}        xpath://body/div[6]/div[1]/div[1]/div[1]/div[1]/form[1]/div[2]/button[1]
${email_txtbox}        xpath://body/div[6]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[2]/div[1]/label[1]/input[1]
${password_txtbox}        xpath://body/div[6]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[3]/div[1]/label[1]/input[1]
${password_value}        test123
${create_account_container}        xpath://body/div[6]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]
${email resto}					@test.com
${create_button}        xpath://body/div[6]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/button[1]

*** Keywords ***
Change_MX_to_US
    Open Browser    url=https://www.savagex.com/  browser=chrome
	Maximize Browser Window
   	#Sleep3
   	Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    #sleep3
    Wait until element is visible        ${country_selector}
    Click element         ${country_selector}
    Wait until element is visible        ${domain_popup}
    #sleep3
    Click element        xpath://select[@id='bfx-cc-countries-select']
    #sleep3
    Click element        xpath://option[contains(text(),'United States')]
    #sleep3
    Click element       ${container} 
    #sleep3
    Wait until element is visible        ${ok_button}
    Click element        ${ok_button} 
    
New_User
    Click element      ${signin_button}
    #sleep3  
    Click element        ${create_account_btn}
    #sleep3
    ${random_email}=    Generate Random String    12    [LOWER]
    Input Text        ${email_txtbox}   ${random_email}${email resto}
    #sleep3
    Input text        ${password_txtbox}  ${password_value}
    Click element        xpath://body/div[6]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[4]/div[1]/label[1]/select[1]
    #slpeep3
    Click element        xpath://option[contains(text(),'TikTok')]
    Click element        ${create_account_container}
    #sleep3
    Click element        ${create_button}   
       
       
           
   
Close_the_browser
	Close Browser
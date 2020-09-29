*** Setting ***
Library  SeleniumLibrary


***Variables***
${country_selector}        xpath://*[@id="bfx-cc-wrapper"]/div[1]/div
${domain_popup}          xpath://*[@id="bfx-cc-wrapper"]/div[2]/div
${countries_option}      xapth://*[@id="bfx-cc-countries-select"]
${us_country}         xpath://*[@id="bfx-cc-countries-select"]/option[207]


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
    Click element        ${countries_option}
     
    
      
   
Close_the_browser
	Close Browser
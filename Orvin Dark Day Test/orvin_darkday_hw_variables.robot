*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${loginemail}=	orvin.darkday.hw@test.com
${loginpassword}=	test12

${firstname}=  xpath://*[@id="form_input_first_name"]
${firstnametext}

${totalgrid}=  xpath://*[@class="results-count"]
${totalgridtext}


${profilepage}=	https://www.justfab.dk/account#index.cfm?action=accountinfo.edit_member&tab=profile
${homepage}=  https://www.justfab.dk/home
${shoespage}=  https://www.justfab.dk/dame/sko

${welcometext}=  Welcome to JustFab, Orvin
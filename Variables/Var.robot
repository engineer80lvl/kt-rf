*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#SD Page
${SD URL}		     https://www.shoedazzle.com
${BROWSER}           Chrome

${GET STARTED}       css=[data-autotag='get_started_cta']
${SIGN IN LINK}      css=[data-autotag='login_modal_signin'] 

#Login Details
${VIP email}		 sdprodVIPususr2@test.com
${VIP password}		 test123

#Login Variables
${LOGIN FORM}         xpath://*[@class="login-form-dd"] 
${USERNAME}           css=#loginForm [data-autotag='loginmodal-email-fld']
${PASSWORD}           css=#loginForm [data-autotag='loginmodal-password-fld']
${LOGIN BUTTON}       //*[@id="loginForm"]/div/div[6]/div 

#My Account Variables
${ACCOUNT}            xpath://*[@class="action-account"]
${ACCOUNT DETAILS}    xpath://*[@class="account_details_item"]
#//*[@id="header-wrap"]/div/div/div[2]/ul/li[2]/a 
#${VIP}                //*[@id="header-wrap"]/div/div/div[2]/ul/li[2]/ul/li[5]/a 

#Navigation
${SHOES}             //*[@id="x_main_navigation"]/li[5]/a
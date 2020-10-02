*** Settings ***
Library  SeleniumLibrary
Resource  Setup_Teardown.robot
Test setup  Open Fabkids browser 
Test Teardown  Close the browser

*** Variables ***
 ${username}        lcostilla@techstyle.com
 ${password}       testing
 ${SignInLink}      xpath://span[contains(text(),'Sign In')]
 ${email textbox}        xpath://*[@id="user_email"]
 ${password textbox}     xpath://*[@id="user_password"]
 ${login button}         xpath://*[@id="new_user"]/input[8]
 ${Heart Icon}        xpath://*[@data-autotag="icon_heart"]   
 ${My Favorites}       https://www.fabkids.com/account#my-favorites
 ${Favbtn}        xpath://a[@class="button add-favorite"]
 ${QuickView}        xpath://div[@class="cart-summary-quickview"]
 ${AddBag}        xpath://*[@id="Add to Bag"]
 ***Test Case ***
Test case validation My Favorites

   Click Element     ${SignInLink}
   Wait Until Element is visible  ${email textbox}   
   Input Text    ${email textbox}   ${username}
   
   Wait Until Element is visible   ${password textbox}   
   Input Text    ${password textbox}   ${password}
   Click Button    ${login button} 
    # Sleep 5
   
   Click Element  ${Heart Icon} 
   Go To  ${My Favorites} 
   # Sleep 5
   Click Element        ${Favbtn}
   # Sleep 5
   Wait Until Element is visible  ${QuickView} 
  
   Click Button  ${AddBag} 
   
 
   Log  Success!


*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem

Resource  ../Variables/jill_variables.robot
Resource  ../Keywords/Common.robot
Resource  ../Keywords/Login.robot
Resource  ../Keywords/Grids.robot
Resource  ../Keywords/MyAccount.robot
Resource  ../Keywords/Homepage.robot
Resource  ../Keywords/PDP.robot

Suite Setup  Set Browser and Size
Suite Teardown  Closing Browser


*** Test Cases ***
Start of VIP Test Cases
	Log					VIP Test Cases


Scenario 1 Verify Customer Name
	#To test with a missing name use account - JFNONAME@test.com
	Sign In On Homepage VIP
	Close Popup
	Get User Name From Homepage
	Run Keyword If				${greeting length} > 0  Name Displayed  ELSE  Name NOT Displayed


Scenario 2 Navigate to product grid and verify amount of products displayed	
	Wait Until Element Is Visible		${top nav clothing}
	Click Element				${top nav clothing}
	Close Popup
	Pull Grid Counts
	Run Keyword If				${grid count number} == ${number of items in grid value}  Grid Count Success  ELSE  Grid Count Failure
	

Scenario 3 Grab all product prices and log them
	Scroll To Footer
	Log All Product Names and Prices
	

Scenario 7 & & Verify Product Name and Review Count from Grid to PDP
	Pull Product Name and Review Count From Grid
	Click Element				${grid details block}
	Verify Product Name and Review Count on PDP

#Scenario 4 Verify Shipping Terms Using Regex


#Scenario 6 Loyalty Points Check
#	#Need to change to get the actual values from the dropdown
#	Go To					${my account url}
#	Wait Until Element Is Visible		${my account loyalty pts locator}
#	${my account loyalty points}=		Get Text  ${my account loyalty pts locator}
#	Click Link				partial link:${my account loyalty points}
#	Location Should Be			https://www.justfab.com/account#index.cfm?action=accountinfo.rewards&tab=fashion-fund


End of VIP Test Cases
	Log Out of Account
	Log					End of VIP Test Cases


Start of Lead Test Cases
	Log					Lead Test Cases
	

Scenario 5 Validate Speedy Signup Data Entered Is Stored In My Account
#Finish verifying size 9, Ways to enhance - Instead of going to my account, close the ATB litebox and use the my account element locator, choose a random shoe size to check for
	Go To					${logged out PDP url}	
	Logged Out PDP Choose Size and ATB CTA
	Sleep 					3
	Fill Out Speedy Signup Form
	Sleep 					5
	Get Email From My Account
	Should Be Equal  			${my account email}  ${email to enter}
	
	


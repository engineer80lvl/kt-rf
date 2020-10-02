*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library  OperatingSystem
Library  FakerLibrary

Resource  ../Variables/jill_variables.robot
Resource  ../Keywords/Common.robot
Resource  ../Keywords/Login.robot
Resource  ../Keywords/Grids.robot
Resource  ../Keywords/MyAccount.robot
Resource  ../Keywords/Homepage.robot
Resource  ../Keywords/PDP.robot

Suite Setup       Set Browser and Size
Suite Teardown    Closing Browser


*** Test Cases ***
Start of VIP Test Cases
    [Tags]                              VIP
	Log					                VIP Test Cases


Scenario 1 Verify Customer Name
	[Documentation]                     To test with a missing name use account - JFNONAME@test.com
	[Tags]                              VIP
	Sign In On Homepage VIP
	Close Popup
	Get User Name From Homepage
	Run Keyword If				        ${greeting length} > 0  Name Displayed  ELSE  Name NOT Displayed


Scenario 2 Navigate to product grid and verify amount of products displayed	
	[Documentation]                     Need to exclude New Arrivals and Collections since they dont have grid counts
	[Tags]                              VIP
	
	Choose random element from list     ${main navigation}
	Close Popup
	Pull Grid Counts
	Run Keyword If				        ${grid count number} == ${number of items in grid value}  Grid Count Success  ELSE  Grid Count Failure
	

Scenario 3 Grab all product prices and log them
	[Tags]                              VIP
	Scroll To Footer
	Log All Product Names and Prices
	

Scenario 7 Verify Product Name from Grid to PDP
	[Tags]                              VIP
    Pull Random Product Name From Grid	
    Verify Product Name on PDP

#Scenario 8 Verify Review Count from Grid to PDP

#Scenario 4 Verify Shipping Terms Using Regex


Scenario 6 Loyalty Points Check
    [Tags]                                  VIP
    Navigate to Boutique
    Get Boutique Reward Points
    Find Reward Points Showing In My Account Dropdown
    Compare Values                          ${boutique points}  ${points in dropdown}
    Navigate to My Account
    Get My Account Reward Points
    Compare Values                          ${my account loyalty points}  ${points in dropdown}


End of VIP Test Cases
	[Tags]                                  VIP
	Log Out of Account
	Log					                    End of VIP Test Cases


Start of Lead Test Cases
	[Tags]  Lead
	Log					                    Lead Test Cases
	

Scenario 5 Validate Speedy Signup Data Entered Is Stored In My Account
#Finish verifying size 9, Ways to enhance - Instead of going to my account, close the ATB litebox and use the my account element locator
	[Tags]  Lead
	Choose random element from list         ${main navigation}
	Choose random element from list         ${grid product name}
	Choose random element from list         ${size selectors}
	Logged Out PDP Click ATB CTA
	Sleep 					                3
	Fill Out Speedy Signup Form
	Sleep 					                5
	Get Email From My Account
	Should Be Equal  			            ${my account email}  ${email to enter}
	
	


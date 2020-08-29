*** Settings ***
Library  SeleniumLibrary

Resource  ../Variables/Var.robot
Resource  ../Keywords/Common.robot
Resource  ../Keywords/Login.robot
Resource  ../Keywords/MyAccount.robot
Resource  ../Keywords/PDP.robot

Suite Setup  Open Browser and Maximize
#Suite Teardown  Close Browser

*** Test Cases ***
Navigate to Shoedazzle Site
	Log					SD page is displayed

Verify Customer Name
	Go to Homepage
	Close Popup
	Navigate to My Account page
	
Navigate to Grid
    Select Random Product to view PDP
	
# To run this suite:
# robot -d Reports Suites/demo.robot

# To run all test suites:
# robot -d Reports Suites
*** Settings ***
Library  SeleniumLibrary

Resource  orvin_darkday_hw_variables.robot
Resource  orvin_darkday_hw_keywords.robot
Resource  orvin_darkday_hw_login.robot
Resource  orvin_darkday_hw_customername.robot
Resource  orvin_darkday_hw_shoegrid.robot

*** Test Cases ***

Scenario 1 Verify Customer Name
	Access Browser
	Sign In User
	Get Customer Name
	Get Profile Name
	Terminate Browser
	
Scenario 2 Verify Shoe Grid Product Count
	Access Browser
	Sign In User
	Shoe Grid Page
	Grid Count
	Terminate Browser
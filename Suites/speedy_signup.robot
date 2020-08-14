*** Settings ***
Resource  ../Keywords/speedy_signup.robot

*** Test Cases ***
Perform Speedy Signup and Verify My Account
	Open Browser
	Navigate to the website SD
	Open random grid
	Open random PDP
	#Select Color
	#Select Size
	Click add to cart
	Expect login modal is opened
	Sign up
	Expect logged in
	Navigate to My Account
	#Verify user details
	#Close browser




# To run this suite:
# robot -d Reports Suites/speedy_signup.robot

# To run all test suites:
# robot -d Reports Suites
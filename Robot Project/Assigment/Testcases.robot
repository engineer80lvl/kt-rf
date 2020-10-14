*** settings ***
Library  SeleniumLibrary
Resource  setup.robot
Resource  operations.robot
Test Setup  Open UK Browser
Test Teardown  Close UK Browser


*** Test Cases ***
Verify FirstName
        Login
        
        
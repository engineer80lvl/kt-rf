*** Settings ***
Library  String

*** test cases ***
login with random string
    ${email} =  Generate Random String  8  [NUMBERS] + Lucy
    login to system  login  ${email}

*** Keywords ***
login to system   
     
    [arguments]  ${login}  ${email}
    log to console  \nattempting to log with login ${login} and email ${email}
    

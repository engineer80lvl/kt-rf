*** Variables ***
${s}  Hello word!

*** Test Cases ***
Test string Pattern
   Should match  ${s}  [ABCDH]?*  
# this keywork helps to compare two strings and it PASSED if it match  ? it's for one letter or charter  and * means everything  
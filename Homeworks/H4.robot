*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  Setup_Teardown.robot
Test setup  Open Fabkids browser 
Test Teardown  Close the browser

*** Variables ***

${Sign up}   xpath://*[@data-autotag="sign_up"]
${Quiz gender}   xpath://*[@id="quiz-gender-options-container"]
${Select Gender}   xpath://*[@data-autotag="quiz_girl_profile"]
${QuizBtn1}          quiz-page-btn
${ChildName}        xpath://*[@data-autotag="quiz_child_name"]
${ClotheSize}   xpath://*[@data-autotag="quiz_child_size_opt"]
${ClotSize2}        xpath://*[@id="quiz-form-page-container"]/div[2]/select/option[2]
${ShoeSize}        xpath://*[@data-autotag="quiz_child_choice_opt"]
${ShoeSize4}        xpath://*[@id="quiz-form-page-container"]/div[3]/select/option[4]
${NextBtn}        xpath://*[@id="quiz-form-page-cta"]
${Name}        xpath://*[@name="firstName"]
${emailfield}       xpath://*[@name="email"]
${password}        testing
${passfield}       xpath://*[@name="password"]
${shopbtn}        xpath://*[@id="quiz-registration-page-cta"]
${postreg}        xpath://*[@id="postreg"]
${emailres}        lucy@fkqa.com






 ***Test Case ***
Take Quiz  
   Click Element     ${Sign up} 
   Wait Until Element is visible  ${Quiz gender}  30s
   Click Element   ${Select Gender}
   Wait Until Element is visible  ${QuizBtn1} 
   Click button   ${QuizBtn1} 
  Wait Until Element is visible  ${QuizBtn1}  30s
   Click button   ${QuizBtn1} 
   Wait Until Element is visible  ${ChildName}  30s
   Input Text     ${ChildName}  EMMA
   Wait Until Element is visible  ${ClotheSize} 
   Click Element         ${ClotheSize} 
   Click Element        ${ClotSize2} 
   Wait Until Element is visible  ${ShoeSize}  30s
   Click Element         ${ShoeSize}  
   Click Element        ${ShoeSize4}
   Wait Until Element is visible   ${NextBtn}
   Click Element        ${NextBtn}
   Wait Until Element is visible   ${Name}
   Input Text      ${Name}    Test
   Wait Until Element is visible  ${emailfield} 
   ${email} =  Generate Random String  8  [NUMBERS] 
   Input text  ${emailfield}    ${email}${emailres}
   Wait Until Element is visible  ${passfield}  30s
   Input text  ${passfield}   ${password} 
   Click button  ${shopbtn}
   Wait Until Element is visible  ${postreg}  30s
   Capture Page Screenshot
    
    
   
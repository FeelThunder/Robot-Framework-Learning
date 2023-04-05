*** Keywords ***
Open Website
    [Arguments]         ${url}
    Create Webdriver    Chrome    executable_path=${CHROME_DRIVER}
    Go To               ${url}

Click Button
    [Arguments]         ${locator}  
    Wait Until Element Is Visible   ${locator}  timeout=5
    Click Element        ${locator} 

Provide Input
    [Arguments]         ${locator}  ${txt}
    Wait Until Element Is Visible   ${locator}  timeout=5
    Input Text          ${locator}  ${txt} 

Back to home
    Click Element       ${back to home}



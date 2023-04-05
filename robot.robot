*** Settings ***
Library     SeleniumLibrary
Resource    ${EXECDIR}/resource/variables.resource
Resource    ${EXECDIR}/keywords/keywords.resource
Resource    ${EXECDIR}/locator/playground.resource

Suite Setup         Open Website     ${URL_PLAYGROUND} 
# Test Setup      
Test Teardown       Back to home
Suite Teardown      Close All Browsers

*** Test Cases ***
# Hello scalar variable
#     Log to console    ${BASE_URL}
#     Log to console    ${BASE URL}
#     Log to console    ${BASEURL}

Click
    Click Button      ${click_menu}
    Sleep   2s
    Click Button      ${click_btn}

Text Input
    Click Button        ${text_menu}
    Sleep   2s
    Provide Input       ${text_field}       Hello
    Sleep   2s
    Click Element       ${text_field_btn} 

Scrollbars
    Click Button                    ${scrollbars_menu}
    Sleep   2s
    Scroll Element Into View        ${hidding_btn}

Sample App Login
    Click Button        ${sample_login_menu}
    Sleep   2s
    Provide Input       ${sample_login_user}        abc      
    Sleep   2s
    Provide Input       ${sample_login_pass}        pwd
    Sleep   2s
    Click Button        ${login_btn}
    Sleep   2s
    Click Button        ${login_btn}

Mouse Over
    Click Button        ${mouse_over_menu}
    Click Button        ${mouse_click_me}

Load Delay
    Click Button        ${load_delay_menu} 
    Sleep   2s
    Click Button        ${load_delay_btn}

Dynamic ID
    Click Button        ${Dynamic_ID_menu}
    Sleep   2s
    Click Button        ${Dynamic_ID_btn}

Class Attribute 
    Click Button        ${classatr_menu} 
    Sleep   2s
    Click Button        ${primary_btn}
    Sleep   2s
    Handle Alert        action=ACCEPT

Progress Bar
    Click Button                    ${progress_bar_menu}
    Sleep   2s
    Click Button                    ${progress_start_btn}
    Sleep   2s
    Wait Until Element Contains     //div[@id="progressBar"]        75%     timeout=20
    Click Button                    ${progress_stop_btn}

Client Side Delay
    Click Button                    ${client_delay_menu}
    Sleep   2s
    Click Button                    ${client_delay_btn}
    Sleep   2s
    Wait Until Page Contains        Data calculated on the client side     timeout=10

Overlapped Element
    Click Button                    ${overlap_element_menu}   
    Sleep   2s
    Provide Input                   ${id_input}         0898
    Sleep   2s
    Scroll Element Into View        ${name_input}
    Sleep   2s
    Provide Input                   ${name_input}       Thun

Non-Breaking Space
    Click Button      ${nbsp_menu} 
    Click Button      //button[text()='My\u00A0Button']

Visibility
    Click Button       ${visibility_menu}
    Click Button       ${hide_btn} 

Verify Text
    Click Button                    ${verify_text_menu} 
    Wait Until Page Contains        ${verify_text} 

Hidden Layers
    Click Button        ${hidden_layers_menu}
    Sleep   2s
    Click Button        ${hidden_layers_greenbtn}
    Sleep   2s
    Click Button        ${hidden_layers_bluebtn}

AJAX Data
    Click Button                ${ajax_menu}
    Sleep   2s
    Click Button                ${ajax_btn}
    Sleep   2s
    Wait Until Page Contains    Data loaded with AJAX get request.  timeout=15
    Sleep   2s
    Click Element               ${loaded_txt}               
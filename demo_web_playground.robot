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
TS001 - Dynamic ID
    Click Button        ${Dynamic_ID_menu}
    Click Button        ${Dynamic_ID_btn}

TS002 - Class Attribute 
    Click Button        ${classatr_menu} 
    Click Button        ${primary_btn}
    Handle Alert        action=ACCEPT

TS003 - Hidden Layers
    Click Button        ${hidden_layers_menu}
    Click Button        ${hidden_layers_greenbtn}
    Click Button        ${hidden_layers_bluebtn}

TS004 - Load Delay
    Click Button        ${load_delay_menu} 
    Click Button        ${load_delay_btn}

TS005 - AJAX Data
    Click Button                ${ajax_menu}
    Click Button                ${ajax_btn}
    Sleep   2s
    Wait Until Page Contains    Data loaded with AJAX get request.  timeout=15
    Click Element               ${loaded_txt}     

TS006 - Client Side Delay
    Click Button                    ${client_delay_menu}
    Click Button                    ${client_delay_btn}
    Wait Until Page Contains        Data calculated on the client side     timeout=10

TS007 - Click
    Click Button      ${click_menu}
    Click Button      ${click_btn}

TS008 - Text Input
    Click Button        ${text_menu}
    Provide Input       ${text_field}       Hello
    Click Element       ${text_field_btn} 

TS009 - Scrollbars
    Click Button                    ${scrollbars_menu}
    Scroll Element Into View        ${hidding_btn}

TS010 - Verify Text
    Click Button                    ${verify_text_menu} 
    Wait Until Page Contains        ${verify_text} 

TS011 - Progress Bar
    Click Button                    ${progress_bar_menu}
    Click Button                    ${progress_start_btn}
    Sleep   2s
    Wait Until Element Contains     //div[@id="progressBar"]        75%     timeout=20
    Click Button                    ${progress_stop_btn}

TS012 - Visibility
    Click Button       ${visibility_menu}
    Click Button       ${hide_btn} 

TS013 - Sample App Login
    Click Button        ${sample_login_menu}
    Provide Input       ${sample_login_user}        abc      
    Provide Input       ${sample_login_pass}        pwd
    Click Button        ${login_btn}
    Sleep   2s
    Click Button        ${login_btn}

TS014 - Mouse Over
    Click Button        ${mouse_over_menu}
    Click Button        ${mouse_click_me}

TS015 - Non-Breaking Space
    Click Button      ${nbsp_menu} 
    Click Button      //button[text()='My\u00A0Button']

TS016 - Overlapped Element
    Click Button                    ${overlap_element_menu}   
    Provide Input                   ${id_input}         0898
    Scroll Element Into View        ${name_input}
    Provide Input                   ${name_input}       Thun









          
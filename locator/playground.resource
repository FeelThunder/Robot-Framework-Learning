*** Variables ***
#Back to home 
${back to home}      //a[@href="/home"]

#Click
${click_menu}        //a[@href="/click"]
${click_btn}         //button[@id="badButton"]

#Input text
${text_menu}         //a[@href="/textinput"]
${text_field}        //input[@id="newButtonName"]
${text_field_btn}    //button[@id="updatingButton"]

#Scrollbars
${scrollbars_menu}   //a[@href="/scrollbars"]    
${hidding_btn}       //button[@id="hidingButton"]
        

#class Attribute
${classatr_menu}      //a[@href="/classattr"]   
${primary_btn}        //button[contains(concat(' ', normalize-space(@class), ' '), ' btn-primary ')]

#sample login 
${sample_login_menu}    //a[@href="/sampleapp"]
${sample_login_user}    //input[@name="UserName"]
${sample_login_pass}    //input[@name="Password"]
${login_btn}            //button[@id="login"]

#Dynamic ID
${Dynamic_ID_menu}      //a[@href="/dynamicid"]
${Dynamic_ID_btn}       //button[contains(text(),'Button with Dynamic ID')]

#Load Delay
${load_delay_menu}      //a[@href="/loaddelay"]
${load_delay_btn}       //button[contains(text(),'Button Appearing After Delay')]

#Mouse Over
${mouse_over_menu}      //a[@href="/mouseover"]
${mouse_click_me}       //a[@title="Click me"]

#Progress Bar
${progress_bar_menu}    //a[@href="/progressbar"]
${progress_start_btn}   //button[@id="startButton"]
${progress_stop_btn}    //button[@id="stopButton"]

#Client Side Delay
${client_delay_menu}    //a[@href="/clientdelay"]
${client_delay_btn}     //button[@id="ajaxButton"]

#Overlapped Element
${overlap_element_menu}  //a[@href="/overlapped"]
${id_input}              //input[@id="id"]
${name_input}            //input[@id="name"]

#Non-Breaking Space
${nbsp_menu}             //a[@href="/nbsp"]

#Visibility
${visibility_menu}       //a[@href="/visibility"]
${hide_btn}              //button[@id="hideButton"]
${transperent_btn}       //button[@id="transparentButton"]

#Verify Text
${verify_text_menu}       //a[@href="/verifytext"]
${verify_text}            //span[normalize-space(.)='Welcome UserName!']

#Hidden Layers
${hidden_layers_menu}           //a[@href="/hiddenlayers"] 
${hidden_layers_greenbtn}       //button[@id="greenButton"]
${hidden_layers_bluebtn}        //button[@id="blueButton"]

#AJAX Data
${ajax_menu}                //a[@href="/ajax"] 
${ajax_btn}                 //button[@id="ajaxButton"]
${loaded_txt}               //p[contains(text(),'Data loaded with AJAX get request.')]
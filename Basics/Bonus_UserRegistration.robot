*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://rentalstore.azurewebsites.net/signup/    Firefox
Test Teardown    Close Browser

*** Test Cases ***
Register Fail: Username missing
    Input Text    //*[@id="id_first_name"]    
    Input Text    //*[@id="id_last_name"]    
    Input Text    //*[@id="id_email"]    
    Input Password    //*[@id="id_password1"]    
    Input Password    //*[@id="id_password2"]    
    Click Button    //button[@type="submit"]
    Registered

Register Success
    Input Text    //*[@id="id_first_name"]    
    Input Text    //*[@id="id_last_name"]    
    Input Text    //*[@id="id_username"]    
    Input Text    //*[@id="id_email"]    
    Input Password    //*[@id="id_password1"]   
    Input Password    //*[@id="id_password2"]    
    Click Button    //button[@type="submit"]
    Registered

*** Keywords ***
Registered
    TRY
        Click Link    https://rentalstore.azurewebsites.net/user/
    EXCEPT    AS    ${Error}
        Log    User did not manage to register: ${Error}
    END

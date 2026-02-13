*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://rentalstore.azurewebsites.net/login/    Firefox
Test Teardown    Close Browser

*** Variables ***
@{link_list}    //*[@id="equipment"]    //*[@id="login"]    //*[@id="signup"]

*** Test Cases ***
Test Login
    [Tags]    Login
    Input Text    //*[@id="id_username"]    
    Sleep    5
    Input Password    //*[@id="id_password"]    
    Sleep    5
    Click Button    //button[@type="submit"]

Test Log out
    [Tags]    Logout
    Click Link    //*[@id="logout"]

Test Links
    [Tags]    Click
    FOR    ${Link}    IN    @{link_list}
        Click Link    ${Link}
        Sleep    5
    END
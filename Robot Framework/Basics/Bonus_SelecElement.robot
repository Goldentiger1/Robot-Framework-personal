*** Settings ***
Library    SeleniumLibrary
Test Setup    Open Browser    https://rentalstore.azurewebsites.net/login/    Firefox
Test Teardown    Close Browser

*** Test Cases ***
Select Element
    Sleep    2
    Input Text    //*[@id="id_username"]    
    Sleep    2
    Input Password    //*[@id="id_password"]    
    Sleep    2
    Click Button    //button[@type="submit"]
    Sleep    2
    Click Link    //*[@id="add-equipment"]
    Sleep    2
    Select From List By Label    //*[@id="id_category"]    Golf
    Sleep    2
    Capture Page Screenshot
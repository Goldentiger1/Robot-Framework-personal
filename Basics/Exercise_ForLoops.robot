*** Settings ***
Library  SeleniumLibrary
Test Setup  Open Browser  https://rentalstore.azurewebsites.net/login/  Firefox
Test Teardown  Close Browser

*** Variables ***
@{link_list}  //*[@id="equipment"]  //*[@id="login"]  //*[@id="signup"]

*** Test Cases ***
Click Links
  FOR    ${Link}    IN    @{link_list}
    Click Link  ${Link}
    Sleep  5
  END
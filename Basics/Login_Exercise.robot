*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Login And Logout
  Open Browser  https://rentalstore.azurewebsites.net/login/  Firefox
  Input Text  //*[@id="id_username"]  
  Input Password  //*[@id="id_password"]  
  Click Button  //button[@type="submit"]
  Click Link  //*[@id="logout"]
  Close Browser
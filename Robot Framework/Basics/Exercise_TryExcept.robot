*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Catch an error
    TRY
        Open Browser    https://retalstore.azurewebsites.net/login/    Firefox
        Page Should Contain    The Rental Store
    EXCEPT    AS    ${err}
        Log    Caught an error  ${err}
    FINALLY
        Close Browser
    END
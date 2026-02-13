*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Open and Close
  Open Browser    https://www.bing.com/  firefox
  Sleep  5
  Close Browser
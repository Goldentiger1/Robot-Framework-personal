*** Settings ***
Library  Dialogs

*** Variables ***
${com_Value}  5


*** Test Cases ***
User value
  ${com_Value}  Convert To Integer  ${com_Value}
  ${user_Value}  Get Value From User  Please give an integer value.
  ${user_Value}  Convert To Integer  ${user_Value}
  IF  $user_Value > $com_Value
    Log  You won
  ELSE IF  $user_Value < $com_Value
    Log  You lost but it was close
  ELSE
    Log  It’s a draw
  END
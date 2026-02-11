*** Variables ***
${counter}  1
${remainder}  0

*** Test Cases ***
Divisible by 4 and 6
  ${remainder}  Convert To Integer  ${remainder}
  ${counter}  Convert To Integer  ${counter}

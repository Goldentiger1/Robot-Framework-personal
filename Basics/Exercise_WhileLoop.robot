*** Variables ***
${Counter}    1

*** Test Cases ***
Divisible by 4 and 6
    WHILE    ${True}
        Log To Console    ${Counter}
        ${Remainder}    Evaluate    ${Counter}%4
        IF    ${Remainder} == 0
            ${Remainder}    Evaluate    ${Counter}%6
            IF    ${Remainder} == 0    BREAK
        END
        ${Counter}    Evaluate    ${Counter}+1
    END
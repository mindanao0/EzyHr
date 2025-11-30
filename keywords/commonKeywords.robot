*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait Until Element Is Ready Then Click Element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    10s    2s    Click Element    ${locator}

Wait Until Element Is Ready Then Input Text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    10s    2s    Input Text    ${locator}    ${text}

Wait Until Page Contains Element And Verify Text
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    10s    2s    Page Should Contain    ${expected_text}

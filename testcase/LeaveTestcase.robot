*** Settings ***

Library    SeleniumLibrary
Resource   ../keywords/CommonKeywords.robot
Resource   ../keywords/leaveKeyword.robot

Variables  ../resources/config/config.yaml
Variables  ../resources/testdata/testdata.yaml
Suite Setup    Open Browser    ${baseUrl}   chrome




*** Test Cases ***
As a user, I want to login success with valid credential
    User Select Leave Type And Submit Leave Request    ${email}    ${valid_password}    ${department}    ${requester}    ${comment}
    # Then future skill should display home page and display message as "แนะนำคอร์สเรียนที่คุณสนใจ"
    [Teardown]     



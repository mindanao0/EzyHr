*** Keywords ***
User Select Leave Type And Submit Leave Request
    [Arguments]    ${email}    ${valid_password}    ${department}    ${requester}    ${comment}

    # --- Login ---
    Wait Until Element Is Ready Then Input Text    name=username    ${email}
    Wait Until Element Is Ready Then Click Element   id=btn_next_login

    Wait Until Element Is Ready Then Input Text    name=password    ${valid_password}
    Wait Until Element Is Ready Then Click Element   id=btn_login
    Sleep    10s

    # --- After Login ---
    Wait Until Element Is Ready Then Click Element   xpath=//button[@class='confirm']
    Wait Until Element Is Ready Then Click Element   id=create-new-button
    Sleep    10s

    Wait Until Element Is Ready Then Click Element   xpath=//div[@class='btn-icon' and @onclick="openCreateNewRequest('leave')"]
    Sleep    5s

    # --- Fill form ---
    Wait Until Element Is Ready Then Input Text     xpath=//input[@class='form_input required']    ${department}
    Sleep    5s

    Wait Until Element Is Ready Then Input Text     xpath=(//input[@class='form_input' and @type='text'])[2]    ${requester}
    Sleep    5s

    Wait Until Element Is Ready Then Click Element  xpath=(//label[@class='form_input have_date'])[1]
    Sleep    5s

    Wait Until Element Is Ready Then Click Element  xpath=//div[@class='left_side' and text()='ลาป่วย']
    Sleep    5s

    Wait Until Element Is Ready Then Input Text     xpath=//textarea[@id='comment']    ${comment}
    Sleep    5s

    # --- Submit ---
    Wait Until Element Is Ready Then Click Element  xpath=//span[@class='hide-xs' and text()='ส่งคำขอ']
    Sleep    10s


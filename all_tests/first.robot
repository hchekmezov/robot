*** Settings ***
Library    Browser
Library    DateTime

*** Test Cases ***
First Test First File
    [Tags]    INTEGRATION
    New Browser    chromium    headless=false
    Set Browser Timeout    30
#    New Page    https://2ip.ua/ru/
    New Page    https://www.speedtest.net/
    Sleep    2
    ${is_need_to_accept}    Run Keyword And Return Status    Wait For Elements State    xpath=//*[@id='onetrust-accept-btn-handler']    timeout=5 s
    IF    ${is_need_to_accept}
        Click    xpath=//*[@id='onetrust-accept-btn-handler']
    END
    Take Screenshot    EMBED
    Click    //span[@class='start-text']
    Sleep    40
    Take Screenshot    EMBED
#    ${where_is}    Get Text    (//div[@class='result']/span)[5]
#    Log    ${where_is}
    Log     First Test First File
    ${current_time}    Get Current Date    result_format=%H:%M:%S:%f    # Формат времени, который вы хотите
    Log    ${current_time}
    Close Browser
#    ${ms}=    Evaluate    int(round(time.time() * 1000))    time
#    Should Be True    ${ms} > ${ms_global}
#    Set Global Variable    ${ms_global}    ${ms}
#    Log    ${ms}

Second Test First File
    [Tags]    PREPROD
    Log    Second Test First File
    ${current_time}    Get Current Date    result_format=%H:%M:%S:%f    # Формат времени, который вы хотите
    Log    ${current_time}
#    ${ms}=    Evaluate    int(round(time.time() * 1000))    time
#    Should Be True    ${ms} > ${ms_global}
#    Set Global Variable    ${ms_global}    ${ms}
#    Log    ${ms}
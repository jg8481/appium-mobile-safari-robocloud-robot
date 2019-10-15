*** Settings ***

Library           AppiumLibrary

*** Variables ***

${PLATFORM_VERSION_IOS}    13.0
${IOS_AUTOMATION_NAME}    XCUITest
${PLATFORM_NAME_IOS}    iOS
${RETRY_AMOUNT}    40
${APP_URL}    https://owasp-goat-app.herokuapp.com/login

*** Keywords ***

Set Up Safari In IOS
    Open Application    http://localhost:4723/wd/hub    platformName=${PLATFORM_NAME_IOS}    platformVersion=${PLATFORM_VERSION_IOS}    devicetype=simulator
    ...    deviceName=iPhone 11    PORT=4723    WDALOCALPORT=8100    automationName=${IOS_AUTOMATION_NAME}     startIWDP=true
    ...    browserName=Safari     bundleid=com.apple.mobilesafari
    Go To Url    ${APP_URL}
    Wait Until Keyword Succeeds   ${RETRY_AMOUNT}x    0.1 sec    Wait Until Page Contains    Password    0.5s
    Sleep    1s

Click Sign Up Link
    Sleep    2s
    Click Element    //a[@href="/signup"]

Check The Sign Up Page
    Wait Until Keyword Succeeds   ${RETRY_AMOUNT}x    0.1 sec    Wait Until Page Contains    information    0.5s
    Sleep    2s

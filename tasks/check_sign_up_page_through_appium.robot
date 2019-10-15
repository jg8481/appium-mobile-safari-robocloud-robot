*** Settings ***
Documentation    Simple example using AppiumLibrary.
Resource         keywords.robot

Suite Setup    Open The Safari Browser In IOS
Suite Teardown    Close All Applications

*** Tasks ***

Go to the sign up page from the login page.
    [Timeout]    4 minutes
    [Tags]    Mobile Safari
    Click Sign Up Link

Quickly check that the sign up page loaded.
    [Timeout]    4 minutes
    [Tags]    Mobile Safari
    Check The Sign Up Page
    #Check The Sign Up Page Demonstrate Failure

*** Keywords ***

Open The Safari Browser In IOS
    [Timeout]    4 minutes
    Set Up Safari In IOS

Check The Sign Up Page Demonstrate Failure
    Page Should Contain Text    This should fail.

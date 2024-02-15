*** Settings ***
Documentation          New test suite
Library                QForce                      #This library is build for Saleforce. # It is a extension of QWeb
Library                String
Library                DateTime
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown         Close All Browsers
Resource               ../CommonRobotforTimesofIndia/Timesconnection.robot

*** Test Cases ***
To test amazon site
    [Tags]             Varma
    [Documentation]    Login to Amazon instance
    Appstate           Home
    Sleep              2s
    
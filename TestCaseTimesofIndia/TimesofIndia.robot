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
    [Tags]             TimesofIndia Site
    [Documentation]    Times of India Site
    Appstate           Home
    ClickText          //button[@id\='onetrust-accept-btn-handler']
    ClickText          //button[@class\='fc-button fc-cta-manage-options fc-secondary-button']
    ClickText          //button[@class\='fc-button fc-data-preferences-accept-all fc-secondary-button']
    Sleep              2s
    
*** Settings ***
Documentation          New test suite
Library                QForce                      #This library is build for Saleforce. # It is a extension of QWeb
Library                String
Library                DateTime
Suite Setup            Open Browser                about:blank                 chrome
Suite Teardown         Close All Browsers
Resource               ../CommonRobotforTimesofIndia/Timesconnection.robot

*** Test Cases ***
To test TimesofIndia
    [Tags]             TimesofIndia Site
    [Documentation]    Times of India Site
    Appstate           Home
    ClickText          //button[@id\='onetrust-accept-btn-handler']
    ClickText          //button[@class\='fc-button fc-cta-manage-options fc-secondary-button']
    ClickText          //button[@class\='fc-button fc-data-preferences-accept-all fc-secondary-button']
    ClickText          //*[@id\="app"]/div/div[2]/div/div[2]/div/div/div/div[1]/nav/ul/li[3]/a
    Sleep              10s
    ClickText          //*[@id\="app"]/div/div[2]/div[2]/div[3]/div/div/div/div[2]/nav/ul/li[11]/span
    Sleep              10s

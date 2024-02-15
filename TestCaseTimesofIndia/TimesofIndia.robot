*** Settings ***
Documentation              New test suite
Library                    QForce                      #This library is build for Saleforce. # It is a extension of QWeb
Library                    String
Library                    DateTime
Suite Setup                Open Browser                about:blank                 chrome
Suite Teardown             Close All Browsers
Resource                   ../CommonRobotforTimesofIndia/Timesconnection.robot

*** Test Cases ***
To test TimesofIndia
    [Tags]                 TimesofIndia Site
    [Documentation]        Times of India Site
    Appstate               Home
    ${Accept}=             IsElement                   //button[@id\='onetrust-accept-btn-handler']
    ${Manage}=             IsElement                   //button[@class\='fc-button fc-cta-manage-options fc-secondary-button']
    ${SecondaryButton}=    IsElement                   //button[@class\='fc-button fc-data-preferences-accept-all fc-secondary-button']
    Log                    ${Accept}
    Log                    ${Manage}
    Log                    ${SecondaryButton}
    Run Keyword If         '${Accept}'=='True'         ClickText                   //button[@id\='onetrust-accept-btn-handler']
    Run Keyword If         '${Manage}'=='True'         ClickText                   //button[@class\='fc-button fc-cta-manage-options fc-secondary-button']
    Run Keyword If         '${SecondaryButton}'=='True'                            ClickText                   //button[@class\='fc-button fc-data-preferences-accept-all fc-secondary-button']
    Sleep                  2s

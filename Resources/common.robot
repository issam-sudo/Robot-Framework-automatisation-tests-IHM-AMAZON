*** Settings ***
Library    SeleniumLibrary
Resource   ./variables.robot
*** Keywords ***
Begin web test
    Open Browser    about:blank    browser=${Browser}
    Maximize Browser Window

End web test
    Close Browser
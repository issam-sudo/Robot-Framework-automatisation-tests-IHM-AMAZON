*** Settings ***
Library     SeleniumLibrary
Resource    ../variables.robot
*** Keywords ***
Charger la page Web
    Go to   ${URL}
    wait until page contains    Images

Chercher site web
    clear element text  name=q
    input text  name=q  Amazon
    Click Element   xpath=/html/body/div[1]/div[2]/div/img
    Click Element   xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    wait until page contains    Amazon

Naviguer vers le site
    click element   xpath=//*[@id="tads"]/div[1]/div/div/div[1]/a/div[1]
    wait until page contains    Cart

Chercher le produit
    clear element text  name=field-keywords
    input text  name=field-keywords  miroir
    click element    xpath=//*[@id="nav-search-submit-text"]
    wait until page contains    miroir

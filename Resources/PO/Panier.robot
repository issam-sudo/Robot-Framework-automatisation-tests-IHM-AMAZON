*** Settings ***
Library     SeleniumLibrary
Resource    ../variables.robot

*** Keywords ***
Enregistrer Panier
    click link  //*[@id="nav-cart"]
    wait until page contains    Shopping Cart

Passer la commande
    select checkbox  xpath=//*[@id="sc-buy-box-gift-checkbox"]
    click element   xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
    wait until page contains    Sign-In

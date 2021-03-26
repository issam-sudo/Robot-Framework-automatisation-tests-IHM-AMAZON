*** Settings ***
Library     SeleniumLibrary
Resource    ../variables.robot

*** Keywords ***
Choisir produit
    click element  xpath=/html/body/div[1]/div[2]/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/div/div/div[2]/div[2]/div/div[1]/div/div/div[1]/h2/a
    wait until page contains    In Stock.
Quantite produit
    select from list by value   xpath=//*[@id="quantity"]   4
    wait until page contains    In Stock.

Ajouter au panier
    click element   xpath=//*[@id="add-to-cart-button"]
    wait until page contains    Added to Cart
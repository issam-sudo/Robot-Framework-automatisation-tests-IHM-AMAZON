*** Settings ***
Documentation   exemple achat sur le site web amazon.
Library     SeleniumLibrary
Resource    ../Resources/common.robot
Resource    ../Resources/PO/PageAcceuil.robot
Resource    ../Resources/PO/PageProduit.robot
Resource    ../Resources/PO/Panier.robot

Suite Setup  common.Begin web test
Suite Teardown  common.End web test
*** Keywords ***
Acceder a les produit disponible

    PageAcceuil.Charger la page Web
    PageAcceuil.Chercher site web
    PageAcceuil.Naviguer vers le site
    PageAcceuil.Chercher le produit

Selectionner produit

    PageProduit.Choisir produit
    PageProduit.Quantite produit
    PageProduit.Ajouter au panier

Ajout au Panier

    Panier.Enregistrer Panier
    Panier.Passer la commande


*** Test Case ***
Main Test
    #[Setup]  Begin web test
    Acceder a les produit disponible
    Selectionner produit
    Ajout au Panier
    #[Teardown]  End web test




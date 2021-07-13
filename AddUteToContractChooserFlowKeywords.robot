*** Settings ***
Library   SeleniumLibrary
Resource    PO/Login.robot
Resource    PO/DashboardPage.robot
Resource    CommonWeb.robot
Resource    PO/DeepLinking.robot
Resource    PO/ContractChooser.robot
Resource    ../API/APIKeyWords.robot


*** Keywords ***

Login with Valid User
    Login.Login as Valid User
    APIKeyWords.Read Data APIs

Deeplink To Adress page Direct To Contract Chooser
    DeepLinking.Deeplink To Adress Page
    ContractChooser.Verify Navigation to Contract Chooser page

Deeplink To Tariff page Direct To Unauthorized Access Error
    DeepLinking.Deeplink To Tariff Page

Deeplink To Bank Details page Direct To Contract Chooser Page
    DeepLinking.Deeplink To Bank Details Page
    ContractChooser.Verify Navigation to Contract Chooser page

Deeplink To TV Settings Page Directly
    DeepLinking.Deeplink To TV Settings Page
    ContractChooser.Verify Navigation to TV Settings Page

Deeplink To Quick Check page Direct To Contract Chooser
    DeepLinking.Deeplink To QuickCheck page
    ContractChooser.Verify Navigation to Contract Chooser page

Deeplink To Net Settings page Direct To Contract Chooser Page
    DeepLinking.Deeplink To Internet & Phone Settings Page
    ContractChooser.Verify Navigation to Contract Chooser page

Back To Dashboard
    ContractChooser.Navigate Back To Dashboard


#Verify UTE Accordion Details In Contract Chooser
#    ContractChooser.For Loop To Verify UTE Accordion Details In Contract Chooser

Verify Enabled Ute Accordion In Contract Chooser Page
    ContractChooser.Verify Enabled Ute Accordion In Contract Chooser Page

Verify Disabled Ute Accordion In Contract Chooser Page
    ContractChooser.Verify Disabled Ute Accordion In Contract Chooser Page

Verify Contract Chooser Page In Case Unauthorized Access
    ContractChooser.Verify Contract Chooser Page In Case Unauthorized Access







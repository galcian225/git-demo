*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Should be able to search for product
        Open Browser  https://www.amazon.com  ie
        Sleep  2s

#Xpath =, css=

        Click image  The Widow
#       Click Button  Yes, delete it!

*** Keywords ***

*** Settings ***
Documentation  This is some basic info about the whole suite

Resource  Resources/Common.robot
Resource  Resources/Amazon.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***

*** Test Cases ***
Logged out user can view a product
    [Tags]  Smoke Search
    Amazon.Search for Products
    Amazon.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke  View
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  Smoke  Checkout
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout

*** Keywords ***

# ${browser} 지정하여 bat파일로 여러 브라우저 에서 테스팅함.


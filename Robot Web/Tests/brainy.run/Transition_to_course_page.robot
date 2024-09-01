*** Settings ***
Resource    brainy.resource
Test Setup    web.Precondition: Open Browser And Maximize    site_url=https://brainy.run    browser=chrome
Test Teardown    web.Postcondition: Close Browser

*** Test Cases ***
Transition To Course Page
    [Documentation]    Перейти на страницу курса с главной
    brainy.Go To Course Landing
    brainy.Go To Course Page
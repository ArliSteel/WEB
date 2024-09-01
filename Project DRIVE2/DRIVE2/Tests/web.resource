*** Settings ***
Documentation    Общие кейворды для всех тестов
Library    SeleniumLibrary
Library    RequestsLibrary


*** Keywords ***
Precondition: Open Browser And Maximize
    [Arguments]    ${site_url}    ${browser}
    [Documentation]    Предусловие: открыт браузер на весь экран
    Open Browser    ${site_url}    ${browser}
    Maximize Browser Window

Postcondition: Close Browser
    [Documentation]    Постусловие: закрыть браузер
    Close Browser

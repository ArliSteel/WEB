*** Settings ***
Documentation    Кейворды для сайта wikipedia.org для тестирования поиска статьи
Resource    ../../web.resource
Resource    ../../../locators/wiki_search_lc.resource

*** Keywords ***
Click on the search field
    [Documentation]    Нажать на поле поиска
    Wait Until Element Is Visible    ${click_search}    timeout=10
    Click Element                    ${click_search}
    Sleep    1s

Enter text
    [Documentation]    Ввести текст
    Input Text                       ${input_text}    Robot framework    True
    Sleep    1s
    
Click on the search button
    [Documentation]    Нажать на кнопку поиска
    Wait Until Element Is Visible    ${click_search_btn}    timeout=10
    Click Element                    ${click_search_btn}
    Sleep    1s
    Wait Until Element Is Visible    ${logo}
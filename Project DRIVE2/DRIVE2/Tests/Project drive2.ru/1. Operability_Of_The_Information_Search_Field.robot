*** Settings ***
Documentation    Настройки для теста
Resource    drive2_keywords.resource
Test Setup    web.Precondition: Open Browser And Maximize    site_url=https://www.drive2.ru/    browser=chrome
Test Teardown    web.Postcondition: Close Browser


*** Test Cases ***
Testing The Efficiency Of Information Retrieval    # Ввод данных.
    [Documentation]    Тестирование работоспособности поля поиска информации.

    Enter A Question In The Search Field

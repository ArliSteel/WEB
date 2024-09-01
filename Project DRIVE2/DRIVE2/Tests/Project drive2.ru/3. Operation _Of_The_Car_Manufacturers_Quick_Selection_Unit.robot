*** Settings ***
Documentation    Настройки для теста
Resource    drive2_keywords.resource
Test Setup    web.Precondition: Open Browser And Maximize    site_url=https://www.drive2.ru/    browser=chrome
Test Teardown    web.Postcondition: Close Browser


*** Test Cases ***
Testing of the Car Manufacturers Quick Selection unit    # Циклы.
    [Documentation]    Тестирование работы блока быстрого выбора марок авто и соответствия выдаваемых результатов.

    Open Every Brand Car

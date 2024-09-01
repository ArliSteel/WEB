*** Settings ***
Documentation    Настройки для теста
Resource    drive2_keywords.resource
Test Setup    web.Precondition: Open Browser And Maximize    site_url=https://www.drive2.ru/    browser=chrome
Test Teardown    web.Postcondition: Close Browser


*** Test Cases ***
Testing the validation of the information search field    # Data Driven тестирование с условными операторами.
    [Documentation]    Тестирование валидации поля поиска информации, постов.
    [Template]    Entering Invalid Data

    ${INVALID_DATA_LINK}
    ${INVALID_DATA_SPEC_SYM}
    ${INVALID_DATA_MAX_SYM}

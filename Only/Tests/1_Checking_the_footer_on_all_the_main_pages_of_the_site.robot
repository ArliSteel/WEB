*** Settings ***
Documentation    Настройки для теста
Resource    only_keywords.resource
Suite Setup       Open Browser To Main Page
Suite Teardown    Close Browser


*** Test Cases ***
Checking the footer on all the main pages of the site
    [Documentation]    Проверка наличия футера на всех основных страницах сайта.

    Check Footer Elements

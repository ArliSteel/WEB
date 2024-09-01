*** Settings ***
Resource         wiki_search.resource
Test Setup       web.Precondition: Open Browser And Maximize    site_url=https://ru.wikipedia.org    browser=chrome
Test Teardown    web.Postcondition: Close Browser

*** Test Cases ***
Article search testing wiki
    [Documentation]    Тестирование поиска статьи вики
    Click on the search field
    Enter text
    Click on the search button
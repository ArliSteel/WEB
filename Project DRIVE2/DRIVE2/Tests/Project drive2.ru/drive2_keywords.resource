*** Settings ***
Documentation    Кейворды для сайта https://www.drive2.ru/
Resource    ../web.resource
Resource    ../../locators/drive2.resource


*** Keywords ***
Enter A Question In The Search Field
    [Documentation]    Ввод вопроса в поле поиска
    Wait Until Element Is Visible       locator=${SEARCH_FIELD}
    Input Text    locator=${SEARCH_FIELD}    text=Как поменять свечи
    Sleep    1s    # Необходим для стабильности теста.
    Click Element                       locator=${BTN_SEARCH}
    Wait Until Page Contains Element    locator=${SEARCH_RESULT}

Status Code 414
    [Documentation]    Статус код 414 "URI слишком длинный"
    Should Be Equal As Integers    ${RESPONSE_STATUS_CODE}    414

Entering Invalid Data
    [Documentation]    Ввод невалидных данных в поле поиска информации
    [Arguments]    ${data}
    Switch Window    locator=main
    Wait Until Element Is Visible       locator=${SEARCH_FIELD}
    Sleep    1s    # Необходим для стабильности теста.
    Input Text    locator=${SEARCH_FIELD}    text=${data}
    Click Element    locator=${BTN_SEARCH}    modifier=CONTROL
    Switch Window    locator=new
    ${has_there_been_a_search_error}
    ...    Run Keyword And Return Status
    ...    Wait Until Element Is Visible
    ...    ${SEARCH_ERROR}
    IF  not ${has_there_been_a_search_error}    Status Code 414

Open Every Brand Car
    [Documentation]    Открыть и проверить каждую марку автомобиля приведеную в блоке быстрого поиска.
    @{SELECTION_OF_MANUFACTURERS}    Get WebElements    ${LOGO_AUTO_MANUFACTURE}
    Click Button    ${BTN_ALL_MANUFACTURE}

    FOR    ${MANUFACTURE}    IN    @{SELECTION_OF_MANUFACTURERS}
        ${NAME_AUTO_MANUFACTURE}    Get Text    ${MANUFACTURE}
        Sleep    1s    # Необходим для стабильности теста.
        Click Link    ${MANUFACTURE}    modifier=CONTROL
        Switch Window    NEW

        Wait Until Element Is Visible    ${TITLE_MANUFACTURE}
        ${BLOG_MANUFACTURE_NAME}    Get Text    ${TITLE_MANUFACTURE}

        Should Be Equal    ${NAME_AUTO_MANUFACTURE}    ${BLOG_MANUFACTURE_NAME}
        Close Window    # Добавил для оптимизации, чтобы десятки вкладок не нагружали ЦП.
        Switch Window    MAIN
    END

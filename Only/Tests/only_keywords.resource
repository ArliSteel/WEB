*** Settings ***
Documentation    Кейворды для сайта https://www.drive2.ru/
Resource    ../locators/only.resource
Library    SeleniumLibrary


*** Keywords ***
Check Footer Elements
    [Documentation]    Проверка наличия футера страницах.
    FOR    ${page}    IN    @{PAGES}
        Go To    ${BASE_URL}${page}
        Scroll Page To Bottom
        Wait Until Element Is Visible    ${FOOTER_XPATH}
        Wait Until Element Is Visible    ${NUMBER_MAIL_XPATH}
        Wait Until Element Is Visible    ${SOCIAL}
    END
    Close Browser

Scroll Page To Bottom
    [Documentation]    Скроллинг страницы до самого низа.
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

Open Browser To Main Page
    [Documentation]    Открытие браузера и переход на основную страницу.
    Open Browser    ${BASE_URL}    ${BROWSER}
    Set Browser Implicit Wait    ${IMPLICIT_WAIT}
    Maximize Browser Window

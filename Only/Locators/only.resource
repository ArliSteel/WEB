*** Settings ***
Documentation    Локаторы для сайта https://only.digital/


*** Variables ***
${BASE_URL}             https://only.digital
@{PAGES}                /    /projects    /company    /job    /contacts    # Основные страницы сайта
${FOOTER_XPATH}         //footer[@class="sc-222969c7-0 dVHqae"]            # Локатор футера
${NUMBER_MAIL_XPATH}    //div[@class="sc-222969c7-5 dHBZCP"]               # Локатор блока контактов
${SOCIAL}               //div[@class="sc-222969c7-6 dQTkGf"]               # Локатор блока соц. сетей
${BROWSER}              Chrome                                             # Локатор браузера для запуска теста
${IMPLICIT_WAIT}        10 seconds                                         # Локатор для поддержки стабильности тестов

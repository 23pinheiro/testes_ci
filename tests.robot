*** Settings ***
Library    Browser
Library    ./load_env.py


*** Variables ***
${LOGIN_URL}        https://www.kabum.com.br/login?redirect_uri=https://www.kabum.com.br/
${USERNAME}         ${get_env_variable("USERNAME")}
${PASSWORD}         ${get_env_variable("PASSWORD")}

*** Test Cases ***
Test Successful Login
    [Documentation]               Teste para verificar login bem-sucedido
    [Tags]                        login
    New Browser                   chromium    headless=falsee
    New Page
    Go To                         ${LOGIN_URL}
    Fill Text                     id=login   ${USERNAME}
    Fill Text                     id=password    ${PASSWORD}
    Click                         password
    Wait For Elements State       id="input-busca"    visible
    Close Browser 
*** Settings***
Library         SeleniumLibrary

***Variables***
${URL}       https://app-28-170-49310.ide.cronapp.io/          

***Keywords***
Nova sessão
    Open Browser                      ${URL}      Firefox

Encerra sessão

    Capture Page Screenshot
    Close Browser   

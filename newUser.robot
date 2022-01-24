***Settings***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Cadastrar Novo user 
    Sleep           2
    Input text      id:input7274        admin
    Input text      id:input9836        admin     
    Click Element   css:button[type=submit] 
    Sleep           2
    Click Element   Xpath:.//a[contains(.,'Admin')]
    Sleep           1
    Click Element   Xpath:.//a[contains(., 'Usuários')]
    Sleep           5
    Click Element   Xpath:.//a[contains(., 'Adicionar')]
    Sleep           3
    Input text      id:textinput-name            Matheus
    Input text      id:textinput-userName        Matheus
    Input text      id:textinput-email           matheus@gmail.com
    Input text      id:textinput-password        senha
    Input text      id:textinput-phoneNumber     7198654452
    Click Element   Xpath:.//section/form/div[3]/div[9]/div/div/div/div
    Click Element   Xpath:.//li[contains(., 'io.cronapp.apps.aut')]
    Click Element   id:btn_crud_post

Verificar numero de users
    Sleep           2
    Input text      id:input7274        admin
    Input text      id:input9836        admin     
    Click Element   css:button[type=submit] 
    Sleep           2
    go to           ${URL}#/home/admin/user
    Sleep           3
    ${valor}            Get Element Count       Xpath:.//tr[contains(., '@')]
    BuiltIn.Should Be Equal As Strings     ${valor}                2


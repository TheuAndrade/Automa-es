***Settings***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Excluir Usuario
    Sleep               2
    Input text          id:input7274        admin
    Input text          id:input9836        admin     
    Click Element       css:button[type=submit] 
    Sleep               2
    go to               ${URL}#/home/admin/user
    Sleep               2
    Click Element       Xpath:.//tr[2]/td[5]/a[2]
    Click Element       Xpath:.//button[contains(., 'Sim')]
    Sleep               1

Verificar Remoção de Usuario
    Sleep           2
    Input text      id:input7274        admin
    Input text      id:input9836        admin     
    Click Element   css:button[type=submit] 
    Sleep           2
    go to           ${URL}#/home/admin/user
    Sleep           3
    ${valor}            Get Element Count       Xpath:.//tr[contains(., '@')]
    BuiltIn.Should Be Equal As Strings     ${valor}                1
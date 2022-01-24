***Settings***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Efetuar Login com Sucesso
    Sleep           2
    Input text      id:input7274        admin
    Input text      id:input9836        admin     
    Click Element   css:button[type=submit] 
    Sleep           2
    page should contain     Pagina inicial

Efetuar Login com senha incorreta 
    Sleep           2
    Input text      id:input7274        admin
    Input text      id:input9836        adm    
    Click Element   css:button[type=submit] 
    Sleep           2
    page should contain     Erro durante o processo de autenticação: Usuário ou senha incorretos!


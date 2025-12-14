*** Settings ***
Library    SeleniumLibrary
Resource    ../config/dev.robot
Resource    login.resource
Resource    generate_random_data.resource

*** Keywords ***
Acessar Pagina Usuarios
    Click Element    id:Cadastros

    Wait Until Element Is Visible    id:Usuários    timeout=10s
    Click Element    id:Usuários

    Wait Until Location Is    ${BASE_URL_UI}/user    timeout=10s
    Location Should Be    ${BASE_URL_UI}/user

    Wait Until Element Is Visible    xpath://h1[text()='Usuários']    timeout=10s
    Element Text Should Be    xpath://h1[text()='Usuários']    Usuários

    Wait Until Element Is Visible    id:edit    timeout=10s
    Element Text Should Be    id:edit    Editar
     #Click Element    id:edit
    Scroll Element Into View    id:firstIndexButton
    Sleep    5


#  Cadastrar Novo Usuário
#     Wait Until Element Is Visible    xpath://button[text()='Novo Usuário']    timeout=10s
#     Click Button    xpath://button[text()='Novo Usuário']

#     Wait Until Element Is Visible    xpath://h2[text()='Novo Usuário']    timeout=10s
#     Element Should Be Visible    xpath://h2[text()='Novo Usuário']

#     Preencher Formulario Novo Usuário
    
#     Wait Until Element Is Visible    xpath://button[text()='Cancelar']    timeout=10s
#     Click Button    xpath://button[text()='Cancelar']

# Preencher Formulario Novo Usuário
#     ${dados_users}=    Gerar Usuario
    
#     Preencher Campo Perfil de Acesso    ${dados_users['perfil']}
#     Preencher Campo CPF                ${dados_users['cpf']}
#     Preencher Campo Senha                ${dados_users['senha']}
#     Preencher Campo Confirmar Senha    ${dados_users['confirm_senha']}

# Preencher Campo Perfil de Acesso 
#     [Arguments]    ${perfil}
#     Wait Until Element Is Visible    id:accessProfile    timeout=10s
#     Input Text    id:accessProfile    ${perfil}

# Preencher Campo CPF
#     [Arguments]    ${cpf}
#     Wait Until Element Is Visible    id:cpf    timeout=10s
#     Input Text    id:cpf    ${cpf}

# Preencher Campo Senha 
#     [Arguments]    ${senha}
#     Wait Until Element Is Visible    id:password    timeout=10s
#     Input Text    id:password    ${senha}

# Preencher Campo Confirmar Senha 
#     [Arguments]    ${confirm_senha}
#     Wait Until Element Is Visible    id:confirmPassword    timeout=10s
#     Input Text    id:confirmPassword    ${confirm_senha}

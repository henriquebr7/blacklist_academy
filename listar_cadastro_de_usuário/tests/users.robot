*** Settings ***
Documentation     Keywords utilizadas na rota /user
Resource    ../resources/users.resource

*** Test Cases ***
Listar usuários
    Listar todos os usuários cadastrados
    

# Listar usuário
#     Listar usuário cadastrado por id

# Cadastrar usuario
#     Cadastrar novo usuario


# Atualizar status do usuário
#     Inativar usuario cadastrado por id

# Atualizar dados do usuário
#     Atualizar dados do usuário cadastrado por id

# Deletar usuário
#     Deletar usuário cadastrado por id
    



# Listar usuário cadastrado por id
#     ${token}    Realizar login com credenciais validas e armazenar token
#     GET On Session    alias=develop    url=/user/${USER_ID}?token=${token}    verify=${True}

# Cadastrar novo usuario
#     ${token}    Realizar login com credenciais validas e armazenar token
#     ${body}    Create Dictionary
#     ...    fullName=${USER_FULLNAME}
#     ...    mail=${USER_MAIL}
#     ...    accessProfile=${ACCESS_PROFILE}
#     ...    cpf=${USER_CPF}
#     ...    password=${NEW_PASSWORD}
#     ...    confirmPassword=${CONFIRM_PASSWORD}
#     ${response}    POST On Session    alias=develop    url=/user?token=${token}    json=${body}    verify=${True}
#     Status Should Be    201    ${response} 

# Inativar usuario cadastrado por id
#     ${token}    Realizar login com credenciais validas e armazenar token
#     ${body}   Create Dictionary    status=false
#     PUT On Session    alias=develop    url=/user/status/${USER_ID}?token=${token}    verify=${True}

# Atualizar dados do usuário cadastrado por id
#     ${token}    Realizar login com credenciais validas e armazenar token
#     ${body}    Create Dictionary    
#     ...    fullName=${USER_FULLNAME}
#     ...    mail=${UPDATED_USER_EMAIL}
#     ...    accessProfile=${ACCESS_PROFILE}
#     ...    cpf=${USER_CPF}
#     ...    password=${NEW_PASSWORD}
#     ...    confirmPassword=${CONFIRM_PASSWORD}
#     ${response}    PUT On Session    alias=develop    url=/user/${USER_ID}?token=${token}    json=${body}    verify=${True}
#     Status Should Be    200    ${response}

# Deletar usuário cadastrado por id
#     ${token}    Realizar login com credenciais validas e armazenar token
#     DELETE On Session    alias=develop    url=/user/${USER_ID}?token=${token}    verify=${True}

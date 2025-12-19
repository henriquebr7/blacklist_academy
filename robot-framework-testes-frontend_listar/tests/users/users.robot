*** Settings ***
Resource    ../../resources/usuarios.resource
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenario 01: Listar cadastro de usuário com Sucesso
    [Documentation]    

    Realizar Login
    Verificar Redirecionamento Para Home
    Verificar Elemento Cadastros Visivel
    Acessar Pagina Usuarios
    #Cadastrar Novo Usuário
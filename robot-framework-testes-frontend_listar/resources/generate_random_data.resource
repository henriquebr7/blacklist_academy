*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    FakerLibrary    locale=pt_BR


*** Keywords ***
Gerar Usuario
    [Documentation]    Gera dados de cliente aleatórios através da API 4devs
    
    # Criar sessão com a API 4devs
    ${headers}=    Create Dictionary    Content-Type=application/x-www-form-urlencoded
    Create Session    alias=4devs    url=https://www.4devs.com.br    headers=${headers}    verify=${True}
    
    # Dados para enviar como form data
    ${form_data}=    Create Dictionary
    ...    acao=gerar_pessoa
    ...    sexo=I
    ...    pontuacao=N
    ...    idade=18
    ...    cep_estado=PE
    ...    txt_qtde=1
    ...    cep_cidade=5406
    
    # Fazer requisição POST
    ${response}=    POST On Session    alias=4devs    url=/ferramentas_online.php    data=${form_data}    expected_status=200
    
    # Extrair dados da resposta
    ${pessoa}=    Set Variable    ${response.json()[0]}
    
    # Criar dicionário com os dados do cliente
    ${usuarios_dados} =    Create Dictionary
    ...    perfil=ADMIN
    ...    cpf=${pessoa['cpf']}
    ...    senha=1234@Testand0
    ...    confirm_senha=1234@Testand0
        
    RETURN    ${usuarios_dados}


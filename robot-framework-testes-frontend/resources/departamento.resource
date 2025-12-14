*** Settings ***
Library    SeleniumLibrary
Resource    ../config/dev.robot
Resource    login.resource
Resource    generate_random_data.resource

*** Keywords ***
Acessar Pagina departamento
    Click Element    id:Cadastros

    Wait Until Element Is Visible    id:Departamento    timeout=10s
    Click Element    id:Departamento

    Wait Until Location Is    ${BASE_URL_UI}/department    timeout=10s
    Location Should Be    ${BASE_URL_UI}/department

    Wait Until Element Is Visible    xpath://h1[text()='Departamento']    timeout=10s
    Element Text Should Be    xpath://h1[text()='Departamento']    Departamento


Editar Departamento
    Wait Until Element Is Visible    xpath://ul    timeout=10s

    Wait Until Element Is Visible    xpath://ul/li[1]//button[@id='edit']    timeout=10s 
    Click Button    xpath://ul/li[1]//button[@id='edit'] 

    # Wait Until Element Is Visible    xpath://button[text()='Editar']    timeout=10s
    # Click Button    xpath://button[text()='Editar']

    Wait Until Element Is Visible    xpath://h2[text()='Editar Departamento']    timeout=10s 
    Element Should Be Visible    xpath://h2[text()='Editar Departamento']

    ${departmentName}     Gerar edição departamento  
    Input Text    id:departmentName    ${departmentName}

    Wait Until Element Is Visible    id:Centro de Custo    timeout=10s
    Sleep    2s
    
    ${itens}=    Get List Items    id:Centro de Custo
    
    ${itens_filtrados}=    Create List

    FOR    ${item}    IN    @{itens}
        Run Keyword If    '${item}' != '' and '${item}' != 'Centro de Custo'    
        ...    Append To List    ${itens_filtrados}    ${item}
    END
    
    ${first}=    Get From List    ${itens_filtrados}    0
    
    Select From List By Label    id:Centro de Custo    ${first}

    Wait Until Element Is Visible    xpath://button[text()='Salvar']    timeout=10s
    Click Button    xpath://button[text()='Salvar']
    
    Sleep    10s

    Validar primeiro item da lista ${departmentName}

Validar primeiro item da lista
    [Arguments]        ${nome_esperado}
    Wait Until Element Is Visible    xpath://ul/li[1]/p    timeout=10s
    ${nome_atual}=    Get Text    xpath://ul/li[1]/p
    Should Be Equal    ${nome_atual}    ${nome_esperado}
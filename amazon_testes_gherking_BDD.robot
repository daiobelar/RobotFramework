*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônico"
    [Documentation]    Este teste verifica o menu eletrônico do site da Amazon.com.br
    ...                e verifia a categoria Computadores e Informática
    [Tags]             menus    categorias
    Dado que eu estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar " Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Telecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página



Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Este teste verifica a busca de um produto
    [Tags]             busca_produtos   lista_busca
    Dado que eu estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha " Xbox Series S" deve ser mostrado na página
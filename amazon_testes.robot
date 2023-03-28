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
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página é "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    #dados colocados entre " ", podem se tornar uma variavel no resources
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"


Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Este teste verifica a busca de um produto
    [Tags]             busca_produtos   lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series S"
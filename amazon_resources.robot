*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}            http://www.amazon.com.br
${MENU_ELETRONICOS}     //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}     //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXTO_HEADER_ELETRONICOS}   Eletrônicos e Tecnologia
${LOGO_AMAZON}    //a[contains(@class,'nav-logo-link nav-progressive-attribute')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    #ABRIR O BROWSER
    Maximize Browser Window
    #MAXIMIZAR O BROWSER

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    #Wait Until Element Is Visible    locator=${LOGO_AMAZON}
    #Espere até que pagina contenha um elemento visivel
Verificar se o título da página é "${TITLE}"
    Title Should Be    title=${TITLE}
Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=${TEXTO_HEADER_ELETRONICOS}
    #Espere até que a página contenha o texto acima
    Wait Until Element Is Visible     locator=${HEADER_ELETRONICOS}
    #Espere ate que encontre o elemento header eletrônicos

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']
    #corresponde a[@aria-label='${NOME_CATEGORIA}'] ->> //a[@aria-label='Computadores e Informática']
    Element Should Be Visible    locator=//a[contains(@aria-label, 'Tablets')]


Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox   text=${PRODUTO}


Clicar no botão de pesquisa
        Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa, se está listando o produto "${PRODUTO}"
        Wait Until Element Is Visible    locator=//img[contains(@alt,'${PRODUTO}')]
        #SE O ELEMENTO DA PESQUISA ESTÁ VISIVEL QUER DIZER QUE O ELEMENTO LISTOU O PRODUTO

Dado que eu estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página é "Amazon.com.br | Tudo pra você, de A a Z."
    
Quando acessar o menu "Eletrônicos"
     Entrar no menu "Eletrônicos"

Então o título da página deve ficar " Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página é "Amazon.com.br | Tudo pra você, de A a Z."

E o texto "Eletrônicos e Telecnologia" deve ser exibido na página
    Verificar se aparece a categoria "Computadores e Informática"


E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"


Dado que eu estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    #reaproveitar a keyword, pode ser mencionado uma dentro da outra
    Clicar no botão de pesquisa
Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Clicar no botão de pesquisa
E um produto da linha " Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series S"
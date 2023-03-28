*** Settings ***
Documentation   Exemplo de uso de variáveis como argumentos em Keywords

*** Variable ***
&{PESSOA}       nome=May Fernandes   email=mayfernandes@exemplo.com.br   idade=20   sexo=feminino
# chamou uma  variavel tipo PESSOA
*** Test Cases ***
Caso de teste de exemplo 01
    Uma keyword qualquer 01

*** Keywords ***
Uma keyword qualquer 01
    Uma subkeyword com argumentos   Bruno Silva   bruno_silva@teste.com.br
    # DEFINIU QUE A VARIAVEL  ${PESSOA.NOME} SERÁ BRUNO SILVA E ${PESSOA.EMAIL} = bruno_silva@teste.com.br
    Uma subkeyword com argumentos   ${PESSOA.nome}   ${PESSOA.email}
    #Nessa keyword as valiaveis ${PESSOA.NOME} e ${PESSOA.EMAIL}  receberá os valores atribuídos em 
    #... *** Variable ***
    #&{PESSOA}       nome=May Fernandes   email=mayfernandes@exemplo.com.br   idade=20   sexo=feminino
    ${MENSAGEM_ALERTA}   Uma subkeyword com retorno   ${PESSOA.nome}   ${PESSOA.idade}
    Log     ${MENSAGEM_ALERTA}

Uma subkeyword com argumentos
    [Arguments]     ${NOME_USUARIO}   ${EMAIL_USUARIO}
    Log             Nome Usuário: ${NOME_USUARIO}
    Log             Email: ${EMAIL_USUARIO}
# está recebendo os dados do usuarios
Uma subkeyword com retorno
    [Arguments]     ${NOME_USUARIO}   ${IDADE_USUARIO}
    # está recebendo os dados do usuarios
    ${MENSAGEM}     Set Variable If    ${IDADE_USUARIO}<18    Não autorizado! O usuário ${NOME_USUARIO} é menor de idade!   OK!Usuário é maior de idade!
    #Cria a mensagem de validação da idade do usuário se for menor de 18 anos.
    [Return]        ${MENSAGEM}

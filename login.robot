*** Settings ***
Documentation     Testes de login
Suite Setup       Start session
Suite Teardown    Teardown Session
Library           AppiumLibrary
Library           Screenshot


Resource          ../resources/environment_setup.robot
Resource          ../resources/base.resource
Resource        ../resources/screens/login.resource
Resource          ../resources/variables.robot

Test Setup        Setup Environment

*** Test Cases *** 
Login com Credenciais Válidas (user)
    [Documentation]    Testa o login de um estudante com credenciais válidas.
    Realizar Login    ${ESTUDANTE_USER}    ${ESTUDANTE_PASSWORD}
    Validar login

O estudante deve fazer o login com sucesso
    [Documentation]    Testa o login de um estudante com credenciais válidas(e-mail)..
    Realizar Login    ${ESTUDANTE_EMAIL}      ${ESTUDANTE_PASSWORD}
    Validar login

Login com Credenciais Inválidas (password)
    [Documentation]    Testa o login com uma senha inválida.
    Abrir Página de Login
    Preencher Campo de Usuário      ${ESTUDANTE_EMAIL}
    Clicar em Log In
    Preencher Campo de Senha        ${ADMIN_PASSWORD}
    Clicar em Log In
    Verificar Mensagem de Erro (Senha)
    

Login com Credenciais Administrativas
    [Documentation]    Testa o login com credenciais de administrador.
    Abrir Página de Login
    Preencher Campo de Usuário      ${ADMIN_EMAIL}
    Clicar em Log In
    Selecionar a conta
    Preencher Campo de Senha        ${ADMIN_PASSWORD}
    Clicar em Log In
    Verificar Mensagem Perfil adm

Login com Multi acessos
    [Documentation]    Testa o login com credenciais com cadastro em mais de um cliente
    Abrir Página de Login
    Preencher Campo de Usuário      ${STQA1_ESTUDANTE_EMAIL_MULT}
    Clicar em Log In
    Selecionar a conta
    Preencher Campo de Senha        ${ESTUDANTE_PASSWORD}
    Clicar em Log In
    Validar login
    Teardown Session
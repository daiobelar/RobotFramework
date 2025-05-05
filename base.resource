*** Settings ***
Documentation    Configurações e keywords para testes de login no aplicativo Studion.
Library           AppiumLibrary
Resource    ../resources/variables.robot

*** Variables ***
${LOGIN_PAGE_URL}            http://localhost:4723
${PLATFORM_NAME}             Android
${DEVICE_NAME}               Android Emulator
${AUTOMATION_NAME}           UIAutomator2
${APP_PATH}                  ${EXECDIR}/app/app-studionmxqa.apk
${UDID}                      emulator-5554
${ADB_EXEC_TIMEOUT}          60000   # 60 segundos
${NEW_COMMAND_TIMEOUT}       300     # 5 minutos
${APP_PACKAGE}               br.com.dotgroup.pegasus
${APP_ACTIVITY}    .MainActivity


*** Keywords ***
Start session
    [Documentation]    Inicia uma sessão no aplicativo Studion.
    Open Application
    ...               ${LOGIN_PAGE_URL}
    ...               platformName=${PLATFORM_NAME}
    ...               deviceName=${DEVICE_NAME}
    ...               automationName=${AUTOMATION_NAME}
    ...               app=${APP_PATH}
    ...               udid=${UDID}
    ...               appPackage=${APP_PACKAGE} 
    ...               appActivity=${APP_ACTIVITY}
    ...               autoGrantPermissions=true
    ...               fullReset=true


Teardown Session
    Close Application
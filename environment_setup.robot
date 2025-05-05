*** Settings ***
Resource    ../resources/variables.robot



*** Keywords ***
Setup Environment
    Run Keyword If    '${ENVIRONMENT}' == 'stqa1'    Setup STQA1 Environment
    ...    ELSE IF    '${ENVIRONMENT}' == 'stqa2'    Setup STQA2 Environment
    ...    ELSE IF    '${ENVIRONMENT}' == 'stqa3'    Setup STQA3 Environment
    ...    ELSE IF    '${ENVIRONMENT}' == 'stqa4'    Setup STQA4 Environment
    ...    ELSE IF    '${ENVIRONMENT}' == 'stqa5'    Setup STQA5 Environment
    ...    ELSE IF    '${ENVIRONMENT}' == 'stqa6'    Setup STQA6 Environment

Setup STQA1 Environment
    Set Test Variable    ${ADMIN_EMAIL}           ${STQA1_ADMIN_EMAIL}
    Set Test Variable    ${ADMIN_PASSWORD}        ${STQA1_ADMIN_PASSWORD}
    Set Test Variable    ${ESTUDANTE_EMAIL}       ${STQA1_ESTUDANTE_EMAIL}
    Set Test Variable    ${ESTUDANTE_USER}       ${STQA1_ESTUDANTE_USER}
    Set Test Variable    ${ESTUDANTE_EMAIL_MULT}       ${STQA1_ESTUDANTE_EMAIL_MULT}
    Set Test Variable    ${ESTUDANTE_PASSWORD}    ${STQA1_ESTUDANTE_PASSWORD}
    Set Test Variable    ${ESTUDANTE_EMAIL_INV}   ${STQA1_ESTUDANTE_EMAIL_INV}

Setup STQA2 Environment
    Set Test Variable    ${ADMIN_EMAIL}           ${STQA2_ADMIN_EMAIL}
    Set Test Variable    ${ADMIN_PASSWORD}        ${STQA2_ADMIN_PASSWORD}
    Set Test Variable    ${ESTUDANTE_EMAIL}       ${STQA2_ESTUDANTE_EMAIL}
    Set Test Variable    ${ESTUDANTE_PASSWORD}    ${STQA2_ESTUDANTE_PASSWORD}
    Set Test Variable    ${ESTUDANTE_USER}        ${STQA2_ESTUDANTE_USER}
    Set Test Variable    ${ESTUDANTE_EMAIL_INV}   ${STQA2_ESTUDANTE_EMAIL_INV}

Setup STQA3 Environment
    Set Test Variable    ${ADMIN_EMAIL}           ${STQA3_ADMIN_EMAIL}
    Set Test Variable    ${ADMIN_PASSWORD}        ${STQA3_ADMIN_PASSWORD}
    Set Test Variable    ${ESTUDANTE_EMAIL}       ${STQA3_ESTUDANTE_EMAIL}
    Set Test Variable    ${ESTUDANTE_PASSWORD}    ${STQA3_ESTUDANTE_PASSWORD}
    Set Test Variable    ${ESTUDANTE_USER}        ${STQA3_ESTUDANTE_USER}
    Set Test Variable    ${ESTUDANTE_EMAIL_INV}   ${STQA3_ESTUDANTE_EMAIL_INV}

Setup STQA4 Environment
    Set Test Variable    ${ADMIN_EMAIL}           ${STQA4_ADMIN_EMAIL}
    Set Test Variable    ${ADMIN_PASSWORD}        ${STQA4_ADMIN_PASSWORD}
    Set Test Variable    ${ESTUDANTE_EMAIL}       ${STQA4_ESTUDANTE_EMAIL}
    Set Test Variable    ${ESTUDANTE_PASSWORD}    ${STQA4_ESTUDANTE_PASSWORD}
    Set Test Variable    ${ESTUDANTE_USER}        ${STQA4_ESTUDANTE_USER}
    Set Test Variable    ${ESTUDANTE_EMAIL_INV}   ${STQA4_ESTUDANTE_EMAIL_INV}

Setup STQA5 Environment
    Set Test Variable    ${ADMIN_EMAIL}           ${STQA5_ADMIN_EMAIL}
    Set Test Variable    ${ADMIN_PASSWORD}        ${STQA5_ADMIN_PASSWORD}
    Set Test Variable    ${ESTUDANTE_EMAIL}       ${STQA5_ESTUDANTE_EMAIL}
    Set Test Variable    ${ESTUDANTE_PASSWORD}    ${STQA5_ESTUDANTE_PASSWORD}
    Set Test Variable    ${ESTUDANTE_USER}        ${STQA5_ESTUDANTE_USER}
    Set Test Variable    ${ESTUDANTE_EMAIL_INV}   ${STQA5_ESTUDANTE_EMAIL_INV}

Setup STQA6 Environment
    Set Test Variable    ${ADMIN_EMAIL}           ${STQA6_ADMIN_EMAIL}
    Set Test Variable    ${ADMIN_PASSWORD}        ${STQA6_ADMIN_PASSWORD}
    Set Test Variable    ${ESTUDANTE_EMAIL}       ${STQA6_ESTUDANTE_EMAIL}
    Set Test Variable    ${ESTUDANTE_PASSWORD}    ${STQA6_ESTUDANTE_PASSWORD}
    Set Test Variable    ${ESTUDANTE_USER}        ${STQA6_ESTUDANTE_USER}
    Set Test Variable    ${ESTUDANTE_EMAIL_INV}    ${STQA6_ESTUDANTE_EMAIL_INV}

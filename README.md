
<h1 align="center">Appium + Robot Framework</h1>

## Índice

1. [Requisitos do Sistema](#requisitos-do-sistema)
2. [Instalação do Appium](#instalação-do-appium)
3. [Instalação do Python e Bibliotecas Necessárias](#instalação-do-python-e-bibliotecas-necessárias)
4. [Estrutura do Projeto](#estrutura-do-projeto)
5. [Instalando Dependências](#instalando-dependências)
6. [Verificar a Instalação com Appium Doctor](#verificar-a-instalação-com-appium-doctor)
7. [Iniciar o Appium](#iniciar-o-appium)
8. [Licença](#licença)


Requisitos do Sistema

Java Development Kit (JDK): Appium requer o JDK instalado no sistema. Você pode baixar o JDK do site da Oracle ou do OpenJDK.
Node.js e npm: Necessários para instalar o Appium. Você pode baixá-los do site oficial do Node.js.
Android SDK: Necessário para testar aplicativos Android. Você pode baixá-lo como parte do Android Studio.
Para mais informações sobre a instalação, acesse: [Documentação de Instalação](https://docs.google.com/document/d/1BKdG4KUyDis9EFoEaKw707UNI3XjgVHQG8pxfvEULlE/edit?usp=sharing)

Instalação do Appium
Appium
Para instalar o Appium globalmente, execute:

<pre><code>npm install -g appium</code></pre>
Appium Doctor
Para verificar se todas as dependências estão configuradas corretamente, instale o Appium Doctor:

<pre><code>npm install -g appium-doctor</code></pre>
Instalação do Python e Bibliotecas Necessárias
Python
Certifique-se de que o Python esteja instalado. Você pode baixá-lo do site oficial do Python.

Robot Framework
Instale o Robot Framework com o seguinte comando:

<pre><code>pip install robotframework</code></pre>
Robot Framework Appium Library
Para instalar a biblioteca Appium para o Robot Framework, execute:

<pre><code>pip install robotframework-appiumlibrary</code></pre>
Appium-Python-Client
Instale o cliente Python do Appium:

<pre><code>pip install Appium-Python-Client</code></pre>
uiautomator2
Se você estiver usando o driver UIAutomator2 para Android, também é necessário instalar o uiautomator2:

<pre><code>pip install uiautomator2</code></pre>
Estrutura do Projeto
A estrutura do seu projeto deve se parecer com isso:

<pre><code>
studion-qa-mobile/
│
├── node_modules/
├── package.json
├── requirements.txt
├── resources/ 
|  └── base.resource
|  └── environment_setup.robot
|  └── variables.robot
└── tests/
    └── example.robot
</code></pre>

Arquivo requirements.txt
Crie um arquivo requirements.txt com as seguintes dependências:

<pre><code>
robotframework
robotframework-appiumlibrary
Appium-Python-Client
uiautomator2
</code></pre>
Instalando Dependências
Node.js
No diretório do projeto, execute:

<pre><code>npm install</code></pre>
Python
No diretório do projeto, execute:

<pre><code>pip install -r requirements.txt</code></pre>
Verificar a Instalação com Appium Doctor
Para verificar se todas as dependências estão corretamente configuradas, execute:

<pre><code>appium-doctor</code></pre>
Iniciar o Appium
Para iniciar o Appium, use o comando:

<pre><code>npm start</code></pre>


<pre><code>appium-doctor</code></pre>
Configurar o DND do DOT e  iniciar o emulador:
Ex:
<pre><code>Start-Process "C:\Users\daiane.obelar\AppData\Local\Android\Sdk\emulator\emulator.exe" -ArgumentList "-avd NOMEDOADB -dns-server 192.168.1.240 -snapshot default_boot"</code></pre>

<pre><code>appium-doctor</code></pre>
Executar os testes Robot framework em um ambiente especifico:

Ex:
<pre><code>robot -v ENVIRONMENT:stqa1 -d results tests/login.robot</code></pre>

## Autores

<p align="left">
<br><sub>Daiane Obelar</sub>
</p>

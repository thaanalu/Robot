###Para as suites se cria apenas 1 resource
***Settings***
#Declarando a library SeleniumLibrary, porque estamos usando um SITE
Library         SeleniumLibrary

***Variables***
#Declarando a variavel global do SITE
#variasveis globais podem ser acessadas de qualquer ponto do seu teste
${BROWSER}      firefox
${URL}          https://www.amazon.com.br/

***keywords***
### Setup e teardown ###
Abrir navegador
    Open Browser    about:blank  ${BROWSER}
Fechar navegador
    Close Browser
t
### passo a passo ###
Acessar página home do site
        Go To    ${URL} 

Entrar no menu "Eletrônicos"
        Click Button    xpath=//*[@id="nav-xshop"]/a[6]

Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
        Title Should Be    Eletrônicos e Tecnologia | Amazon.com.br

Verificar se aparece a frase "Eletrônicos e Tecnologia"
        Element Should Be Visible    xpath=//*[@id="contentGrid_761488"]//h1
        

Verificar se aparece a categoria "Computadores e Informática"
        Element Should Be Visible    xpath=//*[@id="nav-subnav"]/a[5]


### Comandos ###
### robot -d ./results tests\TestSitePractice.robot
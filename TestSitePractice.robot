***Settings***
###referenciando que a implementação das keyword estão no Resource.robot
Resource          Resource.robot
### SETUP ele roda keyword antes da suite ou de um teste
#vai abrir o navegador antes de cada suite/teste
Test Setup        Abrir navegador
### TEARDOWN ele roda keyword depois da suite ou um teste
#vai fechar o navegador antes de cada suite/teste
Test teardown     Fechar navegador

***Test Case***
CT_01: pesquisar produto existente
#se o teste tiver um setuP e/ou teardown proprio ele ignora os declarados na Settings
    Acessar página home do site
    Entrar no menu "Eletrônicos"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"
    
 #CT_02: pesquisar produto não existente
  #   Acessar página home do site
  #   Digitar o nome do produto "itemNãoExistente" no campo pesquisa
  #   Clicar no botão pesquisar
  #   Conferir mensagem de erro No results were found for your search "itemNãoExistente"

 #***keywords***


### Comandos ###
### robot -d ./results tests\TestSitePractice.robot
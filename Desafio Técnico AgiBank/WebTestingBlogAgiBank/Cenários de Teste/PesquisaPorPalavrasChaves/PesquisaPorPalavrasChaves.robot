*** Settings ***
Resource            ../../Resources/ResourcesRobot/ResourcesRobot.robot


*** Test Cases ***
Garantir que o usuário consegue acessar o BlogAgiBank, verificando se todos os elementos presentes em tela estão sendo apresentados
        Dado que estou acessando o BlogAgiBank
        Então devo conseguir visualizar todos os elementos presentes em tela


Garantir que o usuário consegue realizar uma busca informando uma palavra chave válida
        Dado que estou acessando o BlogAgibank, visualizando todos os elementos na interface
        Quando selecionar a Lupa, digitando no campo de pesquisa: "Inscrição"
        Então ao realizar a busca, devo visualizar resultados condicentes


Garantir que o usuário consegue realizar uma busca informando uma palavra chave inválida
        Dado que estou acessando o BlogAgibank, visualizando todos os elementos na interface
        Quando selecionar a Lupa, digitando no campo de pesquisa: "Inscriçao"
        Então ao realizar a busca, não devo visualizar resultados ao informar um erro de digitação no campo de pesquisa
*** Settings ***
Resource            ../../Resources/ResourcesRobot/ResourcesRobot.robot


*** Test Cases ***
Garantir que o usuário consegue acessar a opção "Institucional", visualizando todas as postagens referentes a produto
    Dado que estou acessando o BlogAgibank, visualizando todos os elementos na interface
    Quando eu clicar na opção "Institucional"
    Então devo visualizar as postagens contendo a flag "Institucional"
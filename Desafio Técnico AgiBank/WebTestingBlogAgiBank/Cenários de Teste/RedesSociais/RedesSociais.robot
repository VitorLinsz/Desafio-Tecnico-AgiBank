*** Settings ***
Resource            ../../Resources/ResourcesRobot/ResourcesRobot.robot


*** Test Cases ***
Garantir que o usuário está sendo redirecionado para o Facebook, ao clicar no ícone na parte superior direita da interface
    Dado que estou acessando o BlogAgibank, visualizando todos os elementos na interface
    Quando eu clicar no ícone do "Facebook" na parte superior direita
    Então devo conseguir ser redirecionado para a página do Facebook

Garantir que o usuário está sendo redirecionado para o Instagram, ao clicar no ícone na parte superior direita da interface
    Dado que estou acessando o BlogAgibank, visualizando todos os elementos na interface
    Quando eu clicar no ícone do "Instagram" na parte superior direita
    Então devo conseguir ser redirecionado para a página do Instagram

Garantir que o usuário está sendo redirecionado para o LinkedIn, ao clicar no ícone na parte superior direita da interface
    Dado que estou acessando o BlogAgibank, visualizando todos os elementos na interface
    Quando eu clicar no ícone do "LinkedIn" na parte superior direita
    Então devo conseguir ser redirecionado para a página do LinkedIn

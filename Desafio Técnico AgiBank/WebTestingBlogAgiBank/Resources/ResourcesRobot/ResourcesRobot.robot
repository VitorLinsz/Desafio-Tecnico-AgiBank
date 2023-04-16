*** Settings ***
Library              SeleniumLibrary
Documentation        Essa suíte de teste será responsável por armazenar todos os recursos utilizados pelo Robot
Test Setup           Abrir Navegador
Test Teardown        Fechar Navegador

*** Variables ***
${URL}                    https://blogdoagi.com.br/
${Lupa}                   xpath=/html/body/header/div[1]/button
${LogoTipo_AgiBank}       xpath=(//img[@alt='Blog do Agi'])[1]
${Institucional}          xpath=(//a[contains(text(),'Institucional')])[1]
${Produtos}               xpath=(//a[contains(text(),'Produtos')])[1]
${Serviços}               xpath=(//a[contains(text(),'Serviços')])[1]
${Finanças}               xpath=(//a[contains(text(),'Suas finanças')])[1]
${Segurança}              xpath=(//a[contains(text(),'Sua segurança')])[1]
${Carreira}               xpath=(//a[contains(text(),'Sua carreira')])[1]
${NossoCanal}             xpath=(//a[contains(text(),'Inscreva-se no nosso canal!')])[1]
${Investimentos}          xpath=(//a[contains(text(),'Seus investimentos')])[1]




*** Keywords ***

######## Construção de Passos
Abrir Navegador
    Open Browser        browser=chrome
    Maximize Browser Window

Fechar Navegador
    Close Browser


Acessar a home page do site blogdoagi
    Go To    url=${URL}

    

Visualizar menu superior
    #Sleep    5s
    Wait Until Element Is Visible    ${Lupa}
    Wait Until Element Is Visible    css=div[id='site-branding'] > div
    Wait Until Element Is Visible    ${LogoTipo_AgiBank}

Visualizar as opções: "INSTITUCIONAL", "PRODUTOS", "SERVIÇOS", "SUAS FINANÇAS", "SUA SEGURANÇA", "SUA CARREIRA", "INSCREVA-SE NO NOSSO CANAL", "SEUS INVESTIMENTOS"
    Wait Until Element Is Visible    ${Institucional}
    Wait Until Element Is Visible    ${Produtos}
    Wait Until Element Is Visible    ${Serviços}
    Wait Until Element Is Visible    ${Finanças}
    Wait Until Element Is Visible    ${Segurança}
    Wait Until Element Is Visible    ${Carreira}
    Wait Until Element Is Visible    ${NossoCanal}
    Wait Until Element Is Visible    ${Investimentos}
    
Visualizar seção principal de conteúdos
    Wait Until Element Is Visible    xpath=/html/body/section[1]


Visualizar seção de posts recentes
    Wait Until Element Is Visible    xpath=/html/body/div[3]

Visualizar seção de assinatura por email
    Wait Until Element Is Visible    xpath=//section[@id='blog_subscription-3']
    Wait Until Element Is Visible    xpath=(//label[@for='subscribe-field'])[1]
    Wait Until Element Is Visible    css=form[id='subscribe-blog'] > p:nth-of-type(1)
    Wait Until Element Is Visible    css=button[class*='wp-block-button__link']




Selecionar a Lupa
    Click Element    ${Lupa}
    Wait Until Element Is Visible    xpath=(//input[@name='s'])[1]
    Wait Until Element Is Visible    xpath=(//input[contains(@value,'Pesquisar')])[1]

Preenchendo um valor válido no campo de busca
    Input Text    xpath=(//input[@name='s'])[1]    Inscrição
    Click Element    xpath=(//input[contains(@value,'Pesquisar')])[1]


Preenchendo um valor inválido no campo de busca
    Input Text    xpath=(//input[@name='s'])[1]    Inscriçao
    Click Element    xpath=(//input[contains(@value,'Pesquisar')])[1]



Visualizar resultado de busca válido
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div
    Wait Until Element Is Visible    css=h1[class*='archive-title']
    Wait Until Element Is Visible    css=h1[class*='archive-title'] > span


Visualizar resultado de busca inválido
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div
    Wait Until Element Is Visible    css=h1[class*='entry-title']
    Wait Until Element Is Visible    css=div[class*='entry-content']
    Wait Until Element Is Visible    css=div[class*='entry-content'] > p



Selecionando a opção "Institucional"
    Wait Until Element Is Visible    ${Institucional}
    Click Element    ${Institucional}


Selecionando a opção "Produtos"
    Wait Until Element Is Visible    ${Produtos}
    Click Element    ${Produtos}



Selecionando a opção "Serviços"
    Wait Until Element Is Visible    ${Serviços}
    Click Element    ${Serviços}



Selecionando a opção "Suas Finanças"
    Wait Until Element Is Visible    ${Finanças}
    Click Element    ${Finanças}



Selecionando a opção "Sua Segurança"
    Wait Until Element Is Visible    ${Segurança}
    Click Element    ${Segurança}



Selecionando a opção "Sua Carreira"
    Wait Until Element Is Visible    ${Carreira}
    Click Element    ${Carreira}


Selecionando a opção "Inscreva-se no nosso canal"
    Wait Until Element Is Visible    ${NossoCanal}
    Click Element    ${NossoCanal}


Selecionando a opção "Seus Investimentos"
    Wait Until Element Is Visible    ${Investimentos}
    Click Element    ${Investimentos}



Visualizando posts da categoria Institucional
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[3]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[4]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[5]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[6]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[7]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[8]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[9]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[10]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[11]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Institucional')])[12]

Visualizando posts da categoria Produtos
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[3]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[4]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[5]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[6]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[7]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[8]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[9]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[10]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[11]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Produtos')])[12]

Visualizando posts da categoria Serviços
    Wait Until Element Is Visible    css=a[href*='category/nosso-agi/servicos/']:nth-of-type(5)
    Wait Until Element Is Visible    css=a[href*='category/nosso-agi/servicos/']:nth-of-type(4)
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Serviços')])[5]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Serviços')])[6]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Serviços')])[7]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Serviços')])[8]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Serviços')])[9]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Serviços')])[10]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Serviços')])[11]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Serviços')])[12]



Visualizando posts da categoria Finanças
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[3]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[4]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[5]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[6]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[7]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[8]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[9]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[10]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[11]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Suas finanças')])[12]


Visualizando posts da categoria Segurança
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[3]
    Wait Until Element Is Visible    css=a[href*='category/suas-financas/']:nth-of-type(2)
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[5]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[6]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[7]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[8]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[9]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[10]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[11]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua segurança')])[12]

Visualizando posts da categoria Sua Carreira
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua carreira')])[3]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua carreira')])[4]
    Wait Until Element Is Visible    css=a[href*='category/seu-sucesso/sua-carreira/']:nth-of-type(3)
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua carreira')])[6]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua carreira')])[7]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Sua carreira')])[8]
    Wait Until Element Is Visible    css=a[href*='category/seu-sucesso/sua-carreira/']:nth-of-type(2)


Visualizando posts da categoria Seus Investimentos
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[3]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[4]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[5]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[6]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[7]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[8]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[9]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[10]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[11]
    Wait Until Element Is Visible    xpath=(//a[contains(text(),'Seus investimentos')])[12]



Visualizando posts da categoria Inscreva-se no Nosso Canal
    Wait Until Element Is Visible    css=h1[class*='entry-title']
    Wait Until Element Is Visible    css=iframe[class*='youtube-player']



Visualizando o botão "Posts Mais Antigos"
    Execute Javascript    window.scrollBy(0, document.body.scrollHeight)
    #Wait Until Page Contains Element    id=div[id='infinite-handle'] > span > button        timeout=3s
    Wait Until Element Is Visible    css=div[id='infinite-handle'] > span > button


Selecionar o ícone do "Facebook" no canto superior direito
    Wait Until Element Is Visible    xpath=//div[1]/div[1]/nav/div/ul/li[1]/a
    Click Element                    xpath=//div[1]/div[1]/nav/div/ul/li[1]/a

Selecionar o ícone do "Instagram" no canto superior direito
    Wait Until Element Is Visible    xpath=//div[1]/div[1]/nav/div/ul/li[2]/a
    Click Element                    xpath=//div[1]/div[1]/nav/div/ul/li[2]/a

Selecionar o ícone do "LinkedIn" no canto superior direito
    Wait Until Element Is Visible    xpath=//div[1]/div[1]/nav/div/ul/li[3]/a
    Click Element                    xpath=//div[1]/div[1]/nav/div/ul/li[3]/a



Visualizar redirecionamento para o Facebook
    Wait Until Element Is Visible    css=div[class*='xyuz3pd']

Visualizar redirecionamento para o Instagram
    Wait Until Element Is Visible    css=div[class*='_aa_y']

Visualizar redirecionamento para o LinkedIn
    Title Should Be    Agibank | LinkedIn

Visualizar redirecionamento para o WordPress
    Wait Until Element Is Visible    css=div[id='lpc-titles'] > div > div > h1


######## Construção de Keywords
Dado que estou acessando o BlogAgiBank
    Abrir Navegador
    Acessar a home page do site blogdoagi

Então devo conseguir visualizar todos os elementos presentes em tela
    Visualizar menu superior
    Visualizar as opções: "INSTITUCIONAL", "PRODUTOS", "SERVIÇOS", "SUAS FINANÇAS", "SUA SEGURANÇA", "SUA CARREIRA", "INSCREVA-SE NO NOSSO CANAL", "SEUS INVESTIMENTOS"
    Visualizar seção principal de conteúdos
    Visualizar seção de posts recentes
    Visualizar seção de assinatura por email

Dado que estou acessando o BlogAgibank, visualizando todos os elementos na interface
    Dado que estou acessando o BlogAgiBank
    Então devo conseguir visualizar todos os elementos presentes em tela


Quando selecionar a Lupa, digitando no campo de pesquisa: "Inscrição"
    Selecionar a Lupa
    Preenchendo um valor válido no campo de busca

Então ao realizar a busca, devo visualizar resultados condicentes
    Visualizar resultado de busca válido


Quando selecionar a Lupa, digitando no campo de pesquisa: "Inscriçao"
    Selecionar a Lupa
    Preenchendo um valor inválido no campo de busca


Então ao realizar a busca, não devo visualizar resultados ao informar um erro de digitação no campo de pesquisa
    Visualizar resultado de busca inválido



Quando eu clicar na opção "Institucional"
    Selecionando a opção "Institucional"

Quando eu clicar na opção "Produtos"
    Selecionando a opção "Produtos"

Quando eu clicar na opção "Serviços"
    Selecionando a opção "Serviços"


Quando eu clicar na opção "Suas Finanças"
    Selecionando a opção "Suas Finanças"

Quando eu clicar na opção "Sua Segurança"
    Selecionando a opção "Sua Segurança"

Quando eu clicar na opção "Sua Carreira"
    Selecionando a opção "Sua Carreira"

Quando eu clicar na opção "Seus Investimentos"
    Selecionando a opção "Seus Investimentos"


Então devo visualizar as postagens contendo a flag "Produtos"
    Visualizando posts da categoria Produtos
    Visualizando o botão "Posts Mais Antigos"
    Visualizar seção de assinatura por email
    
    
Então devo visualizar as postagens contendo a flag "Institucional"
    Visualizando posts da categoria Institucional
    Visualizando o botão "Posts Mais Antigos"
    Visualizar seção de assinatura por email

Então devo visualizar as postagens contendo a flag "Serviços"
    Visualizando posts da categoria Serviços
    Visualizando o botão "Posts Mais Antigos"
    Visualizar seção de assinatura por email

Então devo visualizar as postagens contendo a flag "Suas Finanças"
    Visualizando posts da categoria Finanças
    Visualizando o botão "Posts Mais Antigos"
    Visualizar seção de assinatura por email

Então devo visualizar as postagens contendo a flag "Sua Segurança"
    Visualizando posts da categoria Segurança
    Visualizando o botão "Posts Mais Antigos"
    Visualizar seção de assinatura por email


Então devo visualizar as postagens contendo a flag "Sua Carreira"
    Visualizando posts da categoria Sua Carreira
    Visualizando o botão "Posts Mais Antigos"
    Visualizar seção de assinatura por email

Então devo visualizar as postagens contendo a flag "Seus Investimentos"
    Visualizando posts da categoria Seus Investimentos
    Visualizando o botão "Posts Mais Antigos"
    Visualizar seção de assinatura por email


Quando eu clicar no ícone do "Facebook" na parte superior direita
    Selecionar o ícone do "Facebook" no canto superior direito


Quando eu clicar no ícone do "Instagram" na parte superior direita
    Selecionar o ícone do "Instagram" no canto superior direito


Quando eu clicar no ícone do "LinkedIn" na parte superior direita
    Selecionar o ícone do "LinkedIn" no canto superior direito

Então devo conseguir ser redirecionado para a página do Facebook
    Visualizar redirecionamento para o Facebook

Então devo conseguir ser redirecionado para a página do Instagram
    Visualizar redirecionamento para o Instagram

Então devo conseguir ser redirecionado para a página do LinkedIn
    Visualizar redirecionamento para o LinkedIn

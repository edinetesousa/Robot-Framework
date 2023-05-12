*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Abrir o navegador e acessar o site do Organo
    Open Browser    url=http://localhost:3000/  Browser=Chrome

Preencher os campos do formulário
    input text      id:form-nome            Akemi
    input text      id:form-cargo           Desenvolvedora
    input text      id:form-imagem          https://picsum.photos/200/300
    click element   class:lista-suspensa    
    click element   //option[contains(.,'Programação')]
    Sleep   10s
    click element   id:form-botao
    element should Be Visible   class:colaborador
    Sleep   5s

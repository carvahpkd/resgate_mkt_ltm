#language: pt

Funcionalidade: Busca de um Produto

Cenario: Validar Filtro de Busca 
  
  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
  E clicar no botao Entrar no Site
  Quando realizar a busca por um produto e clicar Enter
  Então deve exibir a lista de produtos com a palavra chave
  

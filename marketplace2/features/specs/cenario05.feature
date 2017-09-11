#language: pt

Funcionalidade: Navegue Por Produtos

Cenario: Validar Vitrine de Produtos
  
  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
    E clicar no botao Entrar no Site
  Quando eu clicar no menu Navegue por Produto
  Então deve exibir a vitrine de produtos

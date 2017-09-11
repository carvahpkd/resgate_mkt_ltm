#language: pt

Funcionalidade: Acesso Campanha Padrão Marketplace

Cenario: Validar a Vitrine Inicial
  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
    E clicar no botao Entrar no Site
  Entao deve exibir a tela inicial de produtos

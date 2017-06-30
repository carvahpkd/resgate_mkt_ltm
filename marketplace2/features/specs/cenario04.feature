#language: pt

Funcionalidade: Navegue Por Lojas

Cenario: Validar Painel de Parceiros
  
  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
  E clicar no botao Entrar no Site
  Quando eu clicar no menu Navegue por Lojas
  Então deve exibir a vitrine de parceiros

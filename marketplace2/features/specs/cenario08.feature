#language: pt


Funcionalidade: Acesso Vitrine Parceiro

Cenario: Validar Produtos do Parceiro
  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
  E clicar no botao Entrar no Site
  Quando eu clicar no menu Navegue por Lojas
  E selecionar um parceiro de produtos
  Então deve exibir a vitrine da loja selecionada
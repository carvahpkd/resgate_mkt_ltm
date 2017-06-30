#language: pt

Funcionalidade: Cálculo de Frete

Cenario: Calcular Frete do Produto
  
  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
  E clicar no botao Entrar no Site
  Quando eu clicar no menu Navegue por Lojas
  E selecionar um parceiro de produtos
  Então deve exibir a vitrine da loja selecionada
  Quando realizar a busca de um produto de baixo valor
  Então eu seleciono o produto e vejo o detalhe
  Quando eu clicar no botão de adicionar ao carrinho
  Então deve exibir a tela de carrinho
  Quando eu preenhcer o campo de CEP
  Então eu clico no botão Calcular
  Então o sistema exibe o valor do frete da mercadoria

#language: pt

Funcionalidade: Realizar Resgate de Produto
  
  Cenário: Eu como usuário do sistema, desejo acessar minha vitrine de produtos e efetuar um resgate

  Dado que eu acesse o site "http://marketplace.webpremios.com.br"
  Quando informar os dados Login 
  	    | Login        |   Senha     |
  	    | teste        |   123456    |
  E clicar no botão Entrar
  E clicar no menu Navegue por Lojas, seleciono o parceiro Ponto Frio
  E vai exibir a vitrine do parceiro
  Quando eu realizar a busca de um produto 
     	  |Sabonete                    |
  	    |Lapis                       |
  	    | Produtos de baixa pontuação|
  E selecionar o produto vai para tela de detalhe
  E clico no botão Adicionar ao Carrinho
  E clico no botão Finalizar Resgate
  E preencho o campo ponto de referência e clico no botão terminar resgate 
  Então deve exibir o resumo do pedido

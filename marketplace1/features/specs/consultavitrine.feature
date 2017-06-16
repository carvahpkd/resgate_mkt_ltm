#language: pt


Funcionalidade: Verificar Vitrine da Loja
  Cenário: Consulta produtos do parceiro 

  Dado que eu acesse o site "http://marketplace.webpremios.com.br"
  Quando informar os dados Login 
  	    | Login        |   Senha     |
  	    | teste        |   123456    |
  E clicar no botão Entrar
  Então eu clico no menu Navegue por Lojas E seleciono o parceiro Ponto Frio
  Então deve exibir a vitrine do parceiro
  Quando eu realizar a busca de um produto 
     	  |      Sabonete              |
  	    |      Lapis                 |
  	    | Produtos de baixa pontuação|
  Então eu seleciono o produto para tela de detalhe
  Então eu clico no botão Adicionar ao Carrinho
  Então eu clico no botão Finalizar Resgate
  Então eu preencho o campo ponto de referência e clico no botão terminar resgate 
  Então deve exibir o resumo do pedido

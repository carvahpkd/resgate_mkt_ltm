#language: pt

Funcionalidade: Acesso Seus Pedidos

Cenario: Validar Pedidos
  
  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
  E clicar no botao Entrar no Site
  Entao deve exibir a tela inicial de produtos
  Quando eu posicionar o cursor no menu do participante
  Então eu clico na opção Seus Pedidos
  Então o sistema exibe a tela de Pedidos

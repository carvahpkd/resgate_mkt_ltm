#language: pt

Funcionalidade: Acesso Meu Extrato

Cenario: Validar Extrato do Participante

  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
  E clicar no botao Entrar no Site
  Entao deve exibir a tela inicial de produtos
  Quando eu posicionar o cursor no menu do participante
  Então eu clico na opção Meu Extrato
  Então o sistema exibe a tela de extrato

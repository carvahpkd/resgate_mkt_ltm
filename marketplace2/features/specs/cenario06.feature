#language: pt

Funcionalidade: Fale Conosco

Cenario: Validar as Lojas dos Parceiros
  
  Dado que eu acesse o site "https://padrao.webpremios.com.br/#/busca"
  Quando eu preencher os campos de Login e Senha
  E clicar no botao Entrar no Site
  Quando clicar no menu Fale Conosco
  Então exibe a tela padrão de formulário
  Quando eu preenhcer os campos obrigatórios
  Então eu clico no botão Enviar Mensagem

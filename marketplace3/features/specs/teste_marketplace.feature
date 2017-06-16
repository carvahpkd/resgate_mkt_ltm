#language: pt


	Funcionalidade: Acesso Campanha Padrão Marketplace
		@primeiro_cenario
		Cenario: Acesso ao Sistema

Dado que eu acesse o site "https://padrao.webpremios.com.br/#/login"
Quando eu preencher os campos de Login e Senha
E clicar no botao Entrar no Site
Entao deve exibir a tela inicial de produtos


	@segundo_cenario 
	Cenario: Validação da Vitrine da Loja

Dado que eu esteja na página logada
Quando eu clicar no menu Navegue por Lojas
E selecionar a loja de um parceiro
Então deve exibir a vitrine de produtos

	@terceiro_cenario
	Cenario: Tela de Detalhe

Dado que eu esteja na tela da vitrine do parceiro
Quando eu relizar a busca por um produto de baixa pontuação
E clicar no botão para ver o detalhe do produto
Então o sistema exibe a tela de detalhe

	@quarto_cenario
	Cenario: Adicionar produto ao carrinho

Dado que eu esteja na tela de detalhe
Quando eu clicar no botão adicionar ao carrinho
E calcular o Cep de entrega
Então eu clico no botão Finalizar Resgate

	@quinto_cenario
	Cenario: Confirmação de Endereço 

Dado que eu esteja na tela de endereço
Quando eu preencher os campos obrigatórios
E finalizar a compra 
Então exibe a tela de resumo do pedido

	@sexto_cenario
	Cenario: Finaliza Resgate
Dado que eu esteja na tela de resumo do pedido
Quando eu clicar no botão de finalizar
Então o sistema exibe o status do pedido
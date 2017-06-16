#Cenário 01 - Execução de Login
Dado(/^que eu acesse o site "([^"]*)"$/) do |arg1|
  page.driver.browser.manage.window.maximize
  visit (arg1)
end

Quando(/^eu preencher os campos de Login e Senha$/) do
  fill_in 'txtLogin', with: 'teste'
  fill_in 'txtSenha', with: '123456'
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/1_login.png")
end

Quando(/^clicar no botao Entrar no Site$/) do
  click_button 'loginButton'
end

Entao(/^deve exibir a tela inicial de produtos$/) do
  assert_text "Webprêmios"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/1_vitrine_home.png")
end

#Cenário 02 - Consulta do Menu de Extrato
Quando(/^eu posicionar o cursor no menu do participante$/) do
  find("span[class='btn-abre-saudacao']").click
end

Então(/^eu clico na opção Meu Extrato$/) do
  find("span[class='btn-abre-saudacao']").hover
  find("a[href='#/extrato']").click
end

Então(/^o sistema exibe a tela de extrato$/) do
  page.has_title? "https://marketplace.webpremios.com.br/#/extrato"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/2_extrato.png")
end

#Cenário 03 - Consulta do Menu de Pedidos
Então(/^eu clico na opção Seus Pedidos$/) do
  find("span[class='btn-abre-saudacao']").hover
  find("a[href='#/pedidos']").click
end

Então(/^o sistema exibe a tela de Pedidos$/) do
  page.has_title? "https://marketplace.webpremios.com.br/#/pedido"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/3_pedidos.png")
end

#Cenário 04 - Acesso Vitrine de Parceiros
Quando(/^eu clicar no menu Navegue por Lojas$/) do
  find_link("NAVEGUE POR LOJAS").click
end

Então(/^deve exibir a vitrine de parceiros$/) do
  page.has_title? "https://marketplace.webpremios.com.br/#/lojas"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/4_vitrine_lojas.png")
end

#Cenário 05 - Acesso Vitrine de Produtos
Quando(/^eu clicar no menu Navegue por Produto$/) do
  find_link("NAVEGUE POR PRODUTO").click 
end

Então(/^deve exibir a vitrine de produtos$/) do
  page.has_title? "https://marketplace.webpremios.com.br/#/busca"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/5_vitrine_produtos.png")
end

#cenário 06 - Fale Conosco
Quando(/^clicar no menu Fale Conosco$/) do
  find_link("FALE CONOSCO").click 
end

Então(/^exibe a tela padrão de formulário$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/contato"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/6_fale_conosco.png")
end

Quando(/^eu preenhcer os campos obrigatórios$/) do
  fill_in :placeholder => "Empresa", :with => "Empresa LTM"
  fill_in :placeholder => "Digite a sua mensagem", :with => "Teste Mensagem"
  find("select[id='Subject']").hover
  find("option[label='Elogios']").click
end

Então(/^eu clico no botão Enviar Mensagem$/) do
  first("a[class='btn btn-finalizar']").click
  expect(page).to have_content('Suas informações foram enviadas com sucesso!')
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/6_mensagem_envio.png")
end

#Cenário 07 - Validar Filtro de Busca 
Quando(/^realizar a busca por um produto e clicar Enter$/) do
  fill_in :placeholder => "Busque um produto", :with => "Sabonete"
  find("input[placeholder ='Busque um produto']").native.send_keys(:enter)
end

Então(/^deve exibir a lista de produtos com a palavra chave$/) do
  assert_text "ORDENAÇÃO"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/7_produtos.png")
end

#Cenário 08 - Validar Produtos do Parceiro
Quando(/^selecionar um parceiro de produtos$/) do
  find("img[alt ='Ponto Frio']").click
end

Então(/^deve exibir a vitrine da loja selecionada$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/loja/ponto-frio"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/8_vitrine_parceiro.png")
end

#Cenário 09 - Busca e Detalhe de Produto
Quando(/^realizar a busca de um produto de baixo valor$/) do
  fill_in :placeholder => "Busque um produto em ponto-frio", :with => "Sabonete"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/9_busca_produto.png")
  find("input[placeholder ='Busque um produto em ponto-frio']").native.send_keys(:enter)
end

Então(/^eu seleciono o produto e vejo o detalhe$/) do
  find_link("Porta Sabonete Líquido Hercules em Plástico - Branco").click
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/9_detalhe_produto.png")
end

#Cenário 10 - Adicionar Produto ao Carrinho
Quando(/^eu clicar no botão de adicionar ao carrinho$/) do
  find("a[class='btn-add-carrinho ng-scope']").click
end

Então(/^deve exibir a tela de carrinho$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/carrinho"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/10_carrinho.png")
end

#Cenário 11 - Cálculo de Frete
Quando(/^eu preenhcer o campo de CEP$/) do
  fill_in :placeholder => "Digite o CEP do local de entrega", :with => "06454000"
end

Então(/^eu clico no botão Calcular$/) do
  first("button[class='btn-calculo-frete']").click
end

Então(/^o sistema exibe o valor do frete da mercadoria$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/carrinho"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/11_calculo_frete.png")
end

#Cenário 12 - Confirmação de Endereço - Finaliza Resgate Passo 1
Quando(/^eu clico no botão Finalizar Resgate$/) do
  first("a[class='btn btn-finalizar']").click
end

Então(/^exibe a tela de confirmação de endereço$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/carrinho/endereco"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/12_endereco.png")
end

#Cenário 13 - Confirmação de Endereço - Finaliza Resgate Passo 2
Quando(/^eu preencher os campos obrigatórios$/) do
  fill_in "txtPontoReferencia", with: "Pedido Teste"
end

Quando(/^clicar no botão de finalizar resgate$/) do
  first("a[class='btn btn-finalizar']").click
end

Então(/^exibe a tela de resumo do pedido$/) do
  assert_text "RESUMO DO SEU PEDIDO"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/13_resumo_pedido.png")
end

Quando(/^eu finalizo o resgate$/) do
  first("a[class='btn btn-finalizar']").click
end

Então(/^o sistema exibe o número do pedido$/) do
  assert_text "NÚMERO DO SEU PEDIDO:"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/13_numero_pedido.png")
end

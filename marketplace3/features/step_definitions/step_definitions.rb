  #Executando a primeira tag

Dado(/^que eu acesse o site "([^"]*)"$/) do |arg1|
  page.driver.browser.manage.window.maximize
  visit (arg1)
end

Quando(/^eu preencher os campos de Login e Senha$/) do
  fill_in 'txtLogin', with: '00000000000'
  fill_in 'txtSenha', with: '123456'
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/1_login.png")
end

Quando(/^clicar no botao Entrar no Site$/) do
  click_button 'loginButton'
end

Entao(/^deve exibir a tela inicial de produtos$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/" 
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/2_vitrine_home.png")
end

#Executando a segunda tag
Dado(/^que eu esteja na página logada$/) do
  page.driver.browser.manage.window.maximize
  visit "https://padrao.webpremios.com.br/#/login"
  fill_in 'txtLogin', with: '00000000000'
  fill_in 'txtSenha', with: '123456'
  click_button 'loginButton'
end

Quando(/^eu clicar no menu Navegue por Lojas$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/"
  find_link("NAVEGUE POR LOJAS").click 
end

Quando(/^selecionar a loja de um parceiro$/) do
  find("img[alt ='Ponto Frio']").click
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/3_lojas.png")
end

Então(/^deve exibir a vitrine de produtos$/) do
   page.has_title? "https://padrao.webpremios.com.br/#/"
   save_screenshot("c:/users/thiago.carvalho/thiagodev/data/4_vitrine_loja.png")
end

#Executando a terceira tag
Dado(/^que eu esteja na tela da vitrine do parceiro$/) do
  page.driver.browser.manage.window.maximize
  visit "https://padrao.webpremios.com.br/#/login"
  fill_in 'txtLogin', with: '00000000000'
  fill_in 'txtSenha', with: '123456'
  click_button 'loginButton'
  page.has_title? "https://padrao.webpremios.com.br/#/"
  find_link("NAVEGUE POR LOJAS").click 
  find("img[alt ='Ponto Frio']").click
end

Quando(/^eu relizar a busca por um produto de baixa pontuação$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/loja/ponto-frio"
  fill_in :placeholder => "Busque um produto em ponto-frio", :with => "Sabonete"
  find("input[placeholder ='Busque um produto em ponto-frio']").native.send_keys(:enter)
end

Quando(/^clicar no botão para ver o detalhe do produto$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/busca/58/ponto-frio/palavrachave=sabonete"
  find_link("Porta Sabonete Líquido Hercules em Plástico - Branco").click
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/9_detalhe_produto.png")
end

Então(/^o sistema exibe a tela de detalhe$/) do
  assert_text "Detalhe da Compra"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/10_detalhe.png")
end

#Executando a quarta tag
Dado(/^que eu esteja na tela de detalhe$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/busca/58/ponto-frio/detalhe"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/11_detalhe.png")
end

Quando(/^eu clicar no botão adicionar ao carrinho$/) do
  click_button "addCart"  
end

Quando(/^calcular o Cep de entrega$/) do
 fill_in 'CEP', with: '06233030' 
 click_button "calcCep" 
end

Então(/^eu clico no botão Finalizar Resgate$/) do
 click_button "FINALIZAR RESGATE"
 save_screenshot("c:/users/thiago.carvalho/thiagodev/data/12_finalizar_resgate.png") 
end

#Executando a quinta tag
Dado(/^que eu esteja na tela de endereço$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/busca/58/ponto-frio/endereco"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/13_endereco.png")
end

Quando(/^eu preencher os campos obrigatórios$/) do
  fill_in 'NOME', with: 'Teste de Campo Nome'
  fill_in 'ENDERECO', with: 'Rua Avenida Travessa'
  fill_in 'NUMERO', with: '12'
  fill_in 'COMPLEMENTO', with: 'Nenhuma'
  fill_in 'CEP', with: '06233030'
  fill_in 'REFERENCIA', with: 'Proximo ao Ponto'
end

Quando(/^finalizar a compra$/) do
  find("img[alt ='Finalizar']").click
end

Então(/^exibe a tela de resumo do pedido$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/busca/58/ponto-frio/resumo-pedido"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/14_resumo_pedido.png")
end

#Executando a sexta tag
Dado(/^que eu esteja na tela de resumo do pedido$/) do
  page.has_title? "https://padrao.webpremios.com.br/#/busca/58/ponto-frio/resumo-pedido"
end

Quando(/^eu clicar no botão de finalizar$/) do
  click_button "FINALIZAR RESGATE"
end

Então(/^o sistema exibe o status do pedido$/) do
  page.has_content "Resumo do Pedido"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/15_numero_pedido.png")
end
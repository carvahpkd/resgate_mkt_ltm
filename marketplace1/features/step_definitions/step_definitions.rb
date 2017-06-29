Dado(/^que eu acesse o site "([^"]*)"$/) do |arg1|
  page.driver.browser.manage.window.maximize
  visit(arg1)
end

Quando(/^informar os dados Login$/) do |table|
  fill_in 'txtLogin', with: '00000000000'
  fill_in 'txtSenha', with: '123456'
end

Quando(/^clicar no botão Entrar$/) do
  click_button 'loginButton'
end

Quando(/^clicar no menu Navegue por Lojas, seleciono o parceiro Ponto Frio$/) do
  find_link("NAVEGUE POR LOJAS").click 
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/1_vitrine_inicial.png")
  sleep 10
  find("img[alt ='Ponto Frio']").click
end

Quando(/^vai exibir a vitrine do parceiro$/) do
  page.has_title? "https://marketplace.webpremios.com.br/#/loja/ponto-frio"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/2_vitrine_parceiro.png")
end

Quando(/^eu realizar a busca de um produto$/) do |table|
  fill_in :placeholder => "Busque um produto em ponto-frio", :with => "Sabonete"
  find("input[placeholder ='Busque um produto em ponto-frio']").native.send_keys(:enter)
end

Quando(/^selecionar o produto vai para tela de detalhe$/) do
  find_link("Sabonete Anti-odor e Suporte Hercules em Aco Inox").click
end

Quando(/^clico no botão Adicionar ao Carrinho$/) do
  find("a[class='btn-add-carrinho ng-scope']").click
end

Quando(/^clico no botão Finalizar Resgate$/) do
  first("a[class='btn btn-finalizar']").click
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/3_detalhe_produto.png")
end

Quando(/^preencho o campo ponto de referência e clico no botão terminar resgate$/) do
  fill_in "txtPontoReferencia", with: "Pedido Teste"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/4_endereço.png")
  first("a[class='btn btn-finalizar']").click 
end

Então(/^deve exibir o resumo do pedido$/) do
  assert_text "RESUMO DO SEU PEDIDO"
  save_screenshot("c:/users/thiago.carvalho/thiagodev/data/5_resumo_pedido.png")
end


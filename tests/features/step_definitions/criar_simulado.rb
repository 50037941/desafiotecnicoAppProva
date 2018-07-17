Dado("que eu acesse a página de criação de simulado") do
  @simulado = SimiladoPage.new
  sleep(3)
  @simulado.load 
  #@simulado.botao_simulado.click
  
  sleep(5)
end

Quando("eu realizar todos os passos para {string}") do |acao|
  @simulado.Questao(acao)
end

Então("vejo a mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end

Então("publico o simulado") do
  pending # Write code here that turns the phrase above into concrete actions
end
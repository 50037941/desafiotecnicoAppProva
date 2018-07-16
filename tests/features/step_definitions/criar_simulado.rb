Dado("que eu acesse a página de criação de simulado") do
  @simulado = SimiladoPage.new
  sleep(3)
  @simulado.load 
  #@simulado.botao_simulado.click
  
  sleep(5)
end

Quando("eu realizar tudo os passos") do
  @simulado.PublicarQuestao()
end

Então("vejo a mensagem {string}") do |string|
  
end
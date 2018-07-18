Dado("que eu acesso a pagina do simulado") do                       
  visit 'http://homolog.fund.appprova.com.br/mocks'
end                                                                          
                                                                             
Quando("quando preencho todas as respostas do simulado") do                  
  @respSimulado = SimuladoAluno.new
  @respSimulado.ResponderSimulado()
end                                                                          

Quando("quando tento responder um simulado") do
  sleep(2)
  find('button[data-mock-id="183"]').click
  sleep(10)
end
Dado("que acessa a pagina do perfil do aluno") do                               
  visit 'http://homolog.fund.appprova.com.br/users/edit'
end                                                                             
                                                                                
Quando("eu realizar a edicoes do perfil") do                                    
    @EditaP = PerfilAluno.new
    @EditaP.Editar('Minas Gerais','Belo Horizonte','AppProva','9º Ano')
end                                                                             
                                                                                
Entao("ver a mensagem {string}") do |mensagem|                                    
    expect(page).to have_content mensagem
end                                                                             
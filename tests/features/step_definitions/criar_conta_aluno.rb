Dado("que eu acesse a pagina princial") do                                   
  visit 'http://homolog.fund.appprova.com.br/users/sign_in'
end                                                                          
                                                                             
Quando("prechendo os cadastro de cadastro") do                               
  @Aluno = CadastroAluno.new
  @Aluno.Cadastro('Patrcik','patrick@gmail.com','123456','123456')
end                                                                          
                                                                             
Entao("devo possui um acesso ao sistema") do                                 
    expect(page).to have_content 'Bem vindo! Você realizou seu registro com sucesso.'
end                                                                          
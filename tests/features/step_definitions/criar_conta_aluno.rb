require 'securerandom'

Dado("que eu acesse a pagina princial") do                                   
  visit 'http://homolog.fund.appprova.com.br/users/sign_in'
end                                                                          
                                                                             
Quando("prechendo os cadastro de cadastro") do      
  @nomeAleatorio = SecureRandom.hex (6) 
  @email = @nomeAleatorio << '@gmail.com'                     
  @Aluno = CadastroAluno.new
  @Aluno.Cadastro('Patrick', @email,'123456','123456')
  puts email
end                                                                          
                                                                             
Entao("devo possui um acesso ao sistema") do                                 
    expect(page).to have_content 'Bem vindo! Você realizou seu registro com sucesso.'
end                                                                          
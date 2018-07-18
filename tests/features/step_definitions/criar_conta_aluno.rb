require 'securerandom'

Dado("que eu acesse a pagina princial") do                                   
  visit 'http://homolog.fund.appprova.com.br/users/sign_in'
end                                                                          
                                                                             
Quando("prechendo os campos {string}, {string},{string},{string} cadastro de cadastro") do |nome, email, senha, confsenha|      
  nomeAleatorio = SecureRandom.hex (6) 
  if email.eql?('emailAleatorio')
    email = nomeAleatorio << '@gmail.com' 
  end                     
  @Aluno = CadastroAluno.new
  @Aluno.Cadastro(nome, email, senha, confsenha)
end                                                                          
                                                                             
Entao("devo possui um acesso ao sistema vendo a {string}") do |mensagem|                                
    expect(page).to have_content mensagem
end                                                                          
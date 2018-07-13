Dado("que eu acesso a página inicial") do
  @loginP = LoginProfessor.new
  @loginP.load
  sleep(2)
end

Quando("eu faço login com {string} e {string}") do |email, senha|
 @email = email
 @senha = senha
 @loginP.Logar(@email,@senha)
end

Então("vejo a {string}") do |mensagem|
  expect(page).to have_content mensagem
end
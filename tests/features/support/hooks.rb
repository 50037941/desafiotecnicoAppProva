require 'securerandom'

Before('@login') do 
    @loginPa = LoginProfessor.new
    @loginPa.load
    @loginPa.Logar("qa@appprova.com.br","loveqaatappprova")
end

Before('@loginAluno') do 
    visit 'http://homolog.fund.appprova.com.br/users/sign_in'
    @nomeAleatorio = SecureRandom.hex (6) 
    @email = @nomeAleatorio << '@gmail.com'                     
    @Aluno = CadastroAluno.new
    @Aluno.Cadastro('Patrick', @email,'123456','123456')
end

Before('@editarPerfil') do 
    visit 'http://homolog.fund.appprova.com.br/users/edit'
    @EditaPerfil = PerfilAluno.new
    @EditaPerfil.Editar('Minas Gerais','Belo Horizonte','AppProva','9º Ano')
end
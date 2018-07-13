

Before('@login') do 
    @loginPa = LoginProfessor.new
    @loginPa.load
    @loginPa.Logar("qa@appprova.com.br","loveqaatappprova")
end
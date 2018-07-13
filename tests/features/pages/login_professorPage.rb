class LoginProfessor < SitePrism::Page
    set_url '/'

    element :email, '#teacher_email'
    element :senha, '#teacher_password'
    element :botao_entrar, 'input[value="Entrar"]'

    def Logar(user, pass)
        email.set user
        senha.set pass
        botao_entrar.click
    end
end
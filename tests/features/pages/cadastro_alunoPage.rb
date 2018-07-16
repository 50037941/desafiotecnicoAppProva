class CadastroAluno < SitePrism::Page
    
    element :nome, '#user_name'
    element :email, '#user_email'
    element :senha, '#user_password'
    element :confirmasenha, '#user_password_confirmation'
    element :botao_cadastrar, 'input[value="Cadastrar"]'


    def Cadastro(user, mail, pass, confirma)
        find('a[href="/users/sign_up"]').click
        nome.set user
        email.set mail
        senha.set pass
        confirmasenha.set confirma
        botao_cadastrar.click
    end

end
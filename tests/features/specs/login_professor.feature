#language: pt

@login_professor
Funcionalidade: Login do professor

Esquema do Cenario: Logar no sistema
    Dado que eu acesso a página inicial
    Quando eu faço login com "<email>" e "<senha>"
    Então vejo a "<mensagem>"

Exemplos:

|email                   |senha           |mensagem                  |
|patrick.reis@null.com.br|asdfgqwer       |E-mail ou senha inválidos.|
|qa@appprova.com.br      |loveqaatappprova|Início                    |
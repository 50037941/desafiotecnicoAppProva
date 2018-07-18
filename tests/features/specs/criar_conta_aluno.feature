#language: pt

@criarContaAluno
Funcionalidade: Criar uma conta de aluno

    Esquema do Cenario: Criar conta
    Dado que eu acesse a pagina princial
    Quando prechendo os campos '<nome>', '<email>','<senha>','<confirma>' cadastro de cadastro
    Entao devo possui um acesso ao sistema vendo a '<mensagem>'

    Exemplos:

|nome       |email                   |senha           |confirma        |mensagem                |
|           |patrick.reis@null.com.br|123456          |123456          |não pode ficar em branco|
|Patrick    |qa                      |loveqaatappprova|loveqaatappprova|com formato inválido    |
|Patrick    |qa                      |                |                |não pode ficar em branco|
|Patrick    |patrick@gmail.com       |123456          | 123456         |já está em uso          |
|Patrick    |emailAleatorio          |123456          | 123456         |Início                  |
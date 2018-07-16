#language: pt

@EditarPerfil
Funcionalidade: Fluxo de edição do perfil do aluno
@loginAluno
    Cenario: Editar perfil
    Dado que acessa a pagina do perfil do aluno
    Quando eu realizar a edicoes do perfil
    Entao ver a mensagem 'Dados atualizados com sucesso!'
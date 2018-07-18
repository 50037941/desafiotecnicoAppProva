#language: pt

@ResponderSimulado
Funcionalidade: Responder simulado
@Respondendosemeditarperfil
@loginAluno
Cenario: Respondendo sem editar o perfil
    Dado que eu acesso a pagina do simulado
    Quando quando tento responder um simulado
    Entao vejo a mensagem 'Complete seus dados escolares para ter acesso a simulados, ranking e estatísticas.'

@loginAluno@editarPerfil
Cenario: Respondendo simulado com sucesso
    Dado que eu acesso a pagina do simulado
    Quando quando preencho todas as respostas do simulado
    Entao vejo a mensagem 'Resultado do Simulado'
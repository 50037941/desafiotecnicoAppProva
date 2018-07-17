#language: pt

@simulado
Funcionalidade: Fluxo de criação de um simulado
@login
Cenario: Salvar simulado como rascunho e publica-lo
    Dado que eu acesse a página de criação de simulado
    Quando eu realizar todos os passos para 'rascunho'
    Então vejo a mensagem "Simulado salvo como rascunho!"
    E publico o simulado
@login
Cenario: Criar simulado
    Dado que eu acesse a página de criação de simulado
    Quando eu realizar todos os passos para 'publicar'
    Então vejo a mensagem "Simulado publicado com sucesso"
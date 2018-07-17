class PerfilAluno < SitePrism::Page
    set_url '/'

    element :dadosPerfil, 'a[href="/users/edit_enrollment_data/initial"]'
    element :estado, '#user_estado_id'
    element :cidade, '#user_cidade_id'
    element :escola, '#select2-chosen-1'
    element :buscaEscola, '#s2id_autogen1_search'
    element :resultadoBusca, 'ul[id="select2-results-1"]'
    element :serie, '#user_enrollment_attributes_grade_id'
    element :botao_Salvar, 'input[value="Salvar dados"]'

    def Editar(estadoA, cidadeA, escolaA, serieA)
        dadosPerfil.click
        estado.select(estadoA)
        cidade.select(cidadeA)
        escola.click
        sleep(2)
        buscaEscola.set escolaA
        sleep(2)
        buscaEscola.send_keys(:enter)
        serie.select(serieA)
        botao_Salvar.click
    end
end
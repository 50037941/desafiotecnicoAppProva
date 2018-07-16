class PerfilAluno < SitePrism::Page
    set_url '/'

    element :dadosPerfil, 'a[href="/users/edit_enrollment_data/initial"]'
    element :estado, '#user_estado_id'
    element :cidade, '#user_cidade_id'
    element :escola, '#select2-drop-mask'
    element :buscaEscola, '#s2id_autogen1_search'
    element :resultadoBusca, '#select2-result-label-2'
    element :serie, '#user_enrollment_attributes_grade_id'
    element :botao_Salvar, 'input[value="Salvar dados"]'

    def Editar(estadoA, cidadeA, escolaA, serieA)
        dadosPerfil.click
        estado.select(estadoA)
        cidade.select(cidadeA)
        escola.select(escolaA)
       #buscaEscola.select(escolaA)
        resultadoBusca.click
        serie.select(serieA)
        botao_Salvar.click
    end
end
class PerfilAluno < SitePrism::Page

    element :Dados, 'a[href="/users/edit_enrollment_data/initial"]'
    element :estado, '#user_estado_id'
    element :cidade, '#user_cidade_id'
    element :escola, '#select2-drop-mask'
    element :buscaEscola, '#s2id_autogen1_search'
    element :serie, '#user_enrollment_attributes_grade_id'
    element :botao_Salvar, 'input[value="Salvar dados"]'
end
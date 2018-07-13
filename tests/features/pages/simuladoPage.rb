class SimiladoPage < SitePrism::Page
    set_url '/mocks'

    element :botao_simulado, 'a[href="/activities/new"]'
    element :nome_simulado, '#mock_name'

    element :proximo, '#wizard-form__submit-button'

    element :materia_fisica, 'li[data-subgroup-id="20"]'
end
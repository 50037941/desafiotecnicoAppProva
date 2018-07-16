class SimiladoPage < SitePrism::Page
    set_url '/mocks'

    element :botao_simulado, 'a[href="/activities/new"]'
    element :nome_simulado, '#mock_name'

    element :proximo, '.waves-effect.waves-light.btn-large'

    element :materia_fisica, 'li[data-subgroup-id="21"]'
    #click_on('Próximo')
    #check('label[for="tag-306"]')

    element :codigo_questao, '#codigo'

    #click_button 'BUSCAR'

    element :adicionar_questao, 'div[data-href="/activities/116/add_question/70104"]'
    element :publicar, '#publish_button'
    element :rascunho, '#save_as_draft_button'


    def PublicarQuestao
        botao_simulado.click
        nome_simulado.set 'TestePatrick'
        proximo.click
        materia_fisica.click
        within('ul[class="tag-list"]') do 
            find('#tag-306').click
        end        
        click_on('Próximo')
        codigo_questao.set '70104'
        adicionar_questao.click
        click_on('Próximo')
        publicar.click
    end

end
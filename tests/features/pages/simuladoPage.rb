class SimiladoPage < SitePrism::Page
    set_url '/mocks'

    element :botao_simulado, 'a[href="/activities/new"]'
    element :nome_simulado, '#mock_name'

    element :proximo, '.waves-effect.waves-light.btn-large'

    element :materia_fisica, 'li[data-subgroup-id="21"]'
    #click_on('Próximo')
    #check('label[for="tag-306"]')
    element :codigo_questao, '#codigo'
    element :selecionaEletricidade, 'label[for="tag-306"]'

    #click_button 'BUSCAR'
    element :button_buscar, 'button[type="submit"]'
    element :adicionar_questao, 'div[class="btn add-question"]'
    element :publicar, '#publish_button'
    element :rascunho, '#save_as_draft_button'


    def Questao(acao)
        botao_simulado.click
        nome_simulado.set 'TestePatrick'
        proximo.click
        materia_fisica.click
        sleep(2)
        selecionaEletricidade.click
        #find('label[for="tag-306"]').click 
        sleep(2)  
        click_on('Próximo')
        codigo_questao.set '70104'
        button_buscar.click
        adicionar_questao.click
        click_on('Próximo')
        if acao = 'publicar'
            publicar.click
        else
            rascunho.click
        end
    end

    
end
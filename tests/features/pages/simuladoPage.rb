require "time"

class SimiladoPage < SitePrism::Page
    set_url '/mocks'

    element :botao_simulado, 'a[href="/activities/new"]'
    
    #Elementos para criar simulado
    element :nome_simulado, '#mock_name'
    element :proximo, '.waves-effect.waves-light.btn-large'
    element :materia_fisica, 'li[data-subgroup-id="21"]'
    element :codigo_questao, '#codigo'
    element :selecionaEletricidade, 'label[for="tag-306"]'
    element :button_buscar, 'button[type="submit"]'
    element :adicionar_questao, 'div[class="btn add-question"]'
    element :publicar, '#publish_button'
    element :rascunho, '#save_as_draft_button'

    #elementos para buscar e publicar rascunho
    element :nomeRascunho, '#q_name_cont'
    element :buscarSimulado, 'button[name="button"]'
    element :publicarRascunho, '#publish-button'

    def Questao(acao)
        botao_simulado.click
        nome_simulado.set 'TestePatrick'
        proximo.click
        materia_fisica.click
        sleep(2)
        selecionaEletricidade.click
        sleep(2)  
        click_on('Próximo')
        codigo_questao.set '70104'
        button_buscar.click
        adicionar_questao.click
        click_on('Próximo')

        
        find('#start_time__time').set '00:30'
        find('.picker__holder').click
        sleep(2)  
        find('#end_time__time').set '00:40'
        find('.picker__holder').click
        
        if acao.eql?('publicar')
            publicar.click
        else
            rascunho.click
        end
    end

    def PublicarRascunho()
        nomeRascunho.set 'TestePatrick'
        buscarSimulado.click
        sleep(2)  
        first('.long-text.main-long-text').click_link('TestePatrick')
        publicarRascunho.click 
        
        within('#publish-modal')do
            click_link 'OK'
        end
    end

    
end
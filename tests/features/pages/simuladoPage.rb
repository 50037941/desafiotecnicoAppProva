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
    element :editarRascunho, '#edit-button'

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
        sleep(3)
        page.execute_script("$('#start_time__date').val('21/07/2018')")
        page.execute_script("$('#start_time__time').val('03:00')")
        page.execute_script("$('#end_time__date').val('25/07/2018')")
        page.execute_script("$('#end_time__time').val('04:00')")
        sleep(5)
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
        editarRascunho.click
        page.execute_script("$('#start_time__date').val('21/07/2018')")
        page.execute_script("$('#start_time__time').val('03:00')")
        page.execute_script("$('#end_time__date').val('25/07/2018')")
        page.execute_script("$('#end_time__time').val('04:00')")
        publicar.click 
        
        
    end

    
end
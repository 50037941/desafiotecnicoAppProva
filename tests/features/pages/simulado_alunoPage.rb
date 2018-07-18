class SimuladoAluno < SitePrism::Page
    set_url '/'

    element :iniciarSimuladoAutomatizado, 'button[data-mock-id="170"]'
    element :iniciarSimuladoAutomatizadoSemPerfil, 'button[data-mock-id="183"]'
    element :modalComecar, '#welcome-content'
    element :comecarSimulado, '#btn_start_mock'
    element :alternativa1, '.letter', :text  => 'b)'
    element :alternativa2, '#alternative_330174'
    element :alternativa3, '#alternative_330188'
    element :alternativa4, '#alternative_330407'
    element :alternativa5, '#alternative_330193'
    element :responderPergunta, '#btn-simulated-answer-question'
    element :entregaSimulado, '.btn.btn-simulated-finished.action-btn.question-btn-left'

    def ResponderSimulado()
        iniciarSimuladoAutomatizado.click
        
        within(modalComecar)do
            comecarSimulado.click
        end
        alternativa1.click
        responderPergunta.click
        alternativa1.click
        responderPergunta.click
        alternativa1.click
        responderPergunta.click
        alternativa1.click
        responderPergunta.click
        alternativa1.click
        responderPergunta.click
        entregaSimulado.click
    end

    def ResponderSemPerfil()
        iniciarSimuladoAutomatizadoSemPerfil.click
    end
end
Feature: Carregar Home page

    Scenario: Carregar Home page.
        Given o browser está aberto.
        When Entrar na página 'https://sade.com'
        Then a página é encontrada.
        And ela contém 3 links 'Entrar como membro', 'Entrar como dev', 'Cadastrar dev'

Feature: Entrar no sistema como um desenvolvedor do Sade.

    Scenario: login como usuário cadastrado
        Given a página "http://sade.com/dev" está aberta
        When coloco usuário e senha válido
        Then sou redirecionado para a página inicial de desenvolvedor

    Scenario: login como usuário não cadastrado
        Given a página "http://sade.com/dev" está aberta
        When coloco nome de usuário não cadastrado e senha qualquer
        Then uma mensagem de erro é mostrada "Usuário ou senha inválido"

    Scenario: login com usuário cadastrado e senha inválida
        Given a página "http://sade.com/dev" está aberta
        When coloco nome de um usuário cadastrado e senha inválida
        Then uma mensagem de erro é mostrada "Usuário ou senha inválido"

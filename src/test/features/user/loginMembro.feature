Feature: Entrar no sistema como um membro da conpec.

    Scenario: login como usuário cadastrado
        Given a página "http://sade.com/membro" está aberta
        When coloco usuário e senha válido
        Then sou redirecionado para a página inicial de membro

    Scenario: login como usuário não cadastrado
        Given a página "http://sade.com/membro" está aberta
        When coloco nome de usuário não cadastrado e senha qualquer
        Then uma mensagem de erro é mostrada "Usuário ou senha invádio"

    Scenario: login com usuário cadastrado e senha inválida
        Given a página "http://sade.com/membro" está aberta
        When coloco nome de um usuário cadastrado e senha inválida
        Then uma mensagem de erro é mostrada "Usuário ou senha invádio"

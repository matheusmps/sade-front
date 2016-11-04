Feature: Cadastrar um novo desenvolvedor

    Scenario: Cadastro de um novo desenvolvedor válido.
        Given PENDING página "http://sade.com/cadastro"
        When adiciono todas as informações obrigatórias para cadastro de desenvolvedor. Clico no botão "Cadastrar"
        Then um novo desenvolvedor é criado. Sou redirecionado para a página de perfil deste desenvolvedor

    Scenario: Cadastro de um desenvolvedor com cpf repetido
        Given PENDING página "http://sade.com/cadastro"
        When adiciono todas as informações obrigatórias para cadastro de desenvolvedor, utilizando um número de cpf de um usuário já cadastrado. Clico no botão "Cadastrar"
        Then uma mensagem de erro aparece "Cpf já utilizado". O desenvolvedor não é criado.

    Scenario: Cadastro de um desenvolvedor com cpf inválido
        Given PENDING página "http://sade.com/cadastro"
        When adiciono todas as informações obrigatórias para cadastro de desenvolvedor, utilizando um número de cpf inválido.
        Then uma mensagem de erro aparece "Número de cpf inváldo". Desenvolvedor não é criado.

    Scenario: Cadastro faltando informação obrigatória.
        Given PENDING página "http://sade.com/cadastro"
        When clico no botão "Cadastrar" sem preencher alguma informação obrigatória.
        Then uma mensagem de erro aparece "Informação xxx está faltando". Desenvolvedor não é criado.

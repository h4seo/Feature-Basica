#language: pt

Funcionalidade: Pré-Cadastro

    Como um cliente da loja
    Quero me cadastrar no e-commerce
    Para fazer compras online

    @pre_tent_cad
    Esquema do Cenario: Primeiras tentativas

        Dado que acesso a página de cadastro
        Quando preencho o campo email com:
            | email | <email_in> |

        Então vejo a mensagem de alerta: "<mensagem_out>"

        Exemplos:
            | email_in           | mensagem_out                                                                                                         |
            |                    | Invalid email address.                                                                                               |
            | teste007$teste.com | Invalid email address.                                                                                               |
            | teste@teste.com    | An account using this email address has already been registered. Please enter a valid password or request a new one. |

    @pre_cad
    Cenario: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando informo o email "teste007@teste.com"
        Então sou redirecionado para o Cadastro.
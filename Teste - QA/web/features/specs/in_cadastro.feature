#language: pt

Funcionalidade: Cadastro Interno

    Como um cliente da loja
    Quero me cadastrar no e-commerce
    Para fazer compras online

    @in_tent_cad
    Esquema do Cenario: Tentativas sem exito

        Dado que acesso a página de cadastro interno
        Quando preencho os campos com:
            | pri_nome  | <pri_nome>  |
            | sob_nome  | <sob_nome>  |
            | email     | <email_in>  |
            | senha     | <pass>      |
            | d_birth   | <d_birth>   |
            | m_birth   | <m_birth>   |
            | a_birth   | <a_birth>   |
            | add_nome  | <add_nome>  |
            | add_sobr  | <add_sobr>  |
            | add_emp   | <add_emp>   |
            | add_end_1 | <add_end_1> |
            | add_city  | <add_city>  |
            | add_state | <add_state> |
            | add_cep   | <add_cep>   |
            | add_info  | <add_info>  |
            | add_cel   | <add_cel>   |
            | add_alt   | <add_alt>   |

        Então vejo o alerta: "<mensagem>"

        Exemplos:
            | pri_nome | sob_nome | email_in           | pass   | d_birth | m_birth   | a_birth | add_nome | add_sobr | add_emp       | add_end_1          | add_city  | add_state  | add_cep | add_info             | add_cel  | add_alt       | mensagem                                                                         |
            |          | teste um | teste@teste.com    | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | firstname is required.                                                           |
            | teste    |          | teste@teste.com    | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | lastname is required.                                                            |
            | teste    | teste um |                    | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | email is required.                                                               |
            | teste    | teste um | teste%teste.com    | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | email is invalid.                                                                |
            | teste    | teste um | teste007@teste.com |        | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | passwd is required.                                                              |
            | teste    | teste um | teste007@teste.com | 123456 |         | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | Invalid date of birth                                                            |
            | teste    | teste um | teste007@teste.com | 123456 | 25      |           | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | Invalid date of birth                                                            |
            | teste    | teste um | teste007@teste.com | 123456 | 25      | September |         | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | Invalid date of birth                                                            |
            | teste    | teste um | teste007@teste.com | 123456 | 25      | September | 2021    | teste    | teste um | empresa teste | R. Testes novo 127 | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | Invalid date of birth                                                            |
            | teste    | teste um | teste007@teste.com | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste |                    | São Paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | address1 is required.                                                            |
            | teste    | teste um | teste007@teste.com | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 |           | New Jersey | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | city is required.                                                                |
            | teste    | teste um | teste007@teste.com | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | são paulo |            | 04814   | apenas um novo teste | 142-5474 | R. Novo teste | This country requires you to choose a State.                                     |
            | teste    | teste um | teste007@teste.com | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | são paulo | New Jersey |         | apenas um novo teste | 142-5474 | R. Novo teste | The Zip/Postal code you've entered is invalid. It must follow this format: 00000 |
            | teste    | teste um | teste007@teste.com | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | são paulo | New Jersey | 04814   | apenas um novo teste |          | R. Novo teste | You must register at least one phone number.                                     |
            | teste    | teste um | teste007@teste.com | 123456 | 25      | September | 1988    | teste    | teste um | empresa teste | R. Testes novo 127 | são paulo | New Jersey | 04814   | apenas um novo teste | 142-5474 |               | alias is required.                                                               |


    @in_cad
    Cenario: Finalizar Cadastro

        Dado que acesso a página de cadastro interno
        Quando preencho os campos:
            | pri_nome  | teste                |
            | sob_nome  | teste um             |
            | email     | teste010@teste.com   |
            | senha     | 123456               |
            | d_birth   | 25                   |
            | m_birth   | September            |
            | a_birth   | 1988                 |
            | add_nome  | teste ae             |
            | add_sobr  | teste um             |
            | add_emp   | empresa teste        |
            | add_end_1 | R. Testes novo 127   |
            | add_city  | são paulo            |
            | add_state | New Jersey           |
            | add_cep   | 04814                |
            | add_info  | apenas um novo teste |
            | add_cel   | 142-5474             |
            | add_alt   | r. novo teste,30     |

        Então sou redirecionado para o Dashboard.
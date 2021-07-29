            # language: pt


            Funcionalidade:  Login na plataforma
            Como cliente da EBAC-SHOP
            Quero realizar login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a loja EBAC-SHOP

            Esquema do Cenário: Dados válidos com multiplos usuários
            Quando digitar o <usuário>
            E a <senha>
            Então deve ser direcionado para a tela de checkout.

            Exemplos:
            | usuário                   | senha  |
            | tiago.soares1@ebac.com.br | 123456 |
            | tiago.soares2@ebac.com.br | 134679 |
            | tiago.soares3@ebac.com.br | 987456 |

Cenário: Senha inválida
Quando digitar o usuário "tiago.soares1@ebac.com.br"
E a senha "hdfkdhdhv"
Então deve apresentar a mensagem de alerta "Usuário ou senha inválidos"

Cenário: Usuário inválido
Quando digitar o usuário "shfhshs@gcsvjsbhjsv"
E a senha "123456"
Então deve apresentar a mensagem de alerta "Usuário ou senha inválidos"
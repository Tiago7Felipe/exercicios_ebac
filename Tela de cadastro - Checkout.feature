            # language: pt


            Funcionalidade: Tela de cadastro - checkout
            Como cliente da EBAC-SHOP
            Quero finalizar meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que esteja no site da Ebac-Shop, e queira realizar o cadastro para finalizar a compra

            Cenário: Campos obrigatórios com asterisco devem ser preenchidos
            Quando quando escolher os produtos
            E clicar em comprar
            Então deve me redirecionar para a tela de cadastro.

            Cenário: Validar Tela de cadastro - Campos obrigatórios
            Quando preencher os campos obrigatórios marcados com asteriscos
            E clicar em finalizar compra
            Então deve permitir que avance com a compra

            Cenário: Formato incorreto de email
            Quando preencher o email
            E entrar com um formato de email inválido
            Então deve me apresentar uma mensagem de erro.

            Cenário: Campos Vazios
            Quando tentar cadastrar com campos Vazios
            Então deve me retornar uma mensagem de alerta.

            Esquema do Cenário: validar cadastro com campos Obrigatórios preenchidos.
            Quando preencher <nome><sobrenome><país><endereço><cidade><cep><telefone><endereço de email>
            E clicar em finalizar compra
            Então deve ser permitido avançar com a compra.

            Exemplos:
            | nome  | sobrenome | país   | endereço   | cidade    | cep      | telefone    | endereço de email        |
            | Tiago | Soares    | Brasil | Rua dois   | Bonfim    | 35480000 | 318256-6932 | tiago.soares@ebac.com.br |
            | João  | Caique    | Brasil | Rua quatro | Rio Manso | 35480000 | 318256-6932 | João.caique@ebac.com.br  |

            Esquema do Cenário: validar formato emails inválidos
            Quando preencher <endereço de email>
            Então deve me apresentar uma mensagem de erro.

            Exemplos:
            | endereço de email    |
            | 12234@teste          |
            | dgfgdjkddgdh         |
            | emaisl teste @com.br |
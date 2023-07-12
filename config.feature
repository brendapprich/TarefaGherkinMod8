            #language: pt

            Funcionalidade: Configuração de Produto EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho de gosto
            E escolher a quantidade
            Para depois inserir no carrinho de compras

            Contexto:
            Dado que acessei a plataforma EBAC-SHOP

            Cenário: Configurar Produto
            Quando selecionar a "cor", "tamanho" e "quantidade" de até 10 produtos
            E clicar em "adicionar ao carrinho"
            Então uma mensagem de confirmação irá aparecer "Seu produto foi adicionado com sucesso"

            Cenário: Configuração de Produto Inválida
            Quando não selecionar um dos campos "cor" , "tamanho" ou "quantidade" de algum dos 10 produtos
            E clicar em "adicionar ao carrinho"
            Então deve exibir uma mensagem de erro "Por favor, selecione a opção para seu produto"

            Cenário: Configuração de mais de 10 Produtos
            Quando não selecionar um dos campos "cor" , "tamanho" ou "quantidade" de mais de 10 produtos
            E clicar em "adicionar ao carrinho"
            Então deve exibir uma mensagem de erro "Quantidade de Produtos adicionados passou do limite"

            Esquema do Cenário: Configurar Produto
            Quando eu selecionar a <cor>, <tamanho> e <quantidade> de até 10 produtos
            E clicar em adicionar <produto> ao carrinho
            Então deve exibir uma <mensagem> de sucesso

            Exemplos:
            | cor        | tamanho | quantidade | ação                    | mensagem                                              |
            | "rosa"     | "P"     | "3"        | "adicionar ao carrinho" | "Seu produto foi adicionado com sucesso"              |
            | "azul"     | "M"     | "1"        | "adicionar ao carrinho" | "Seu produto foi adicionado com sucesso"              |
            | "vermelho" | "GG"    | "12"       | "adicionar ao carrinho" | "Quantidade de Produtos adicionados passou do limite" |
            | "preto"    | "G"     | "5"        | "adicionar ao carrinho" | "Por favor, selecione a opção para seu produto"       |







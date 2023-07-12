            #language: pt

            Funcionalidade: Tela de Login loja EBAC
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a plataforma da EBAC-SHOP para fazer meu login

            Cenário: Autenticação Válida
            Quando eu digitar o usuário "brenda@ebac.com.br"
            E a senha "ebac@321"
            Então deve exibir uma mensagem de boas vindas "Bem vindo(a) Brenda!"

            Cenário: Usuário Inexistente
            Quando eu digitar o usuário "hsfgd@ebac.com.br"
            E a senha "ebac@321"
            Então deve exibir uma mensagem de alerta "Usuário Inexistente"

            Cenário: Usuário com senha Inválida
            Quando eu digitar o usuário "brenda@ebac.com.br"
            E a senha "bbjshahdal321"
            Então deve exibir uma mensagem de alerta "Usuário ou Senha Inválidos"

            Esquema do Cenário: Autenticar Múltiplos Usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir uma <mensagem> de sucesso

            Exemplos:
            | usuario              | senha      | mensagem               |
            | "brenda@ebac.com.br" | "ebac@321" | "Bem vindo(a) Brenda!" |
            | "scott@ebac.com.br"  | "ebac@321" | "Bem vindo(a) Scott!"  |
            | "gael@ebac.com.br"   | "ebac@321" | "Bem vindo(a) Gael!"   |




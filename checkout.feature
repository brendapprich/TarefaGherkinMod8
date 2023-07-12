#language: pt

Funcionalidade: Página de Checkout da EBAC-SHOP
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto: 
Dado que meu cadastro está completo com todos os dados obrigatórios

Cenário: Conclusão de Cadastro
Quando eu completar todos os campos obrigatórios com asterisco 
E meu campo de email está válido
Então deve exibir uma mensagem de cadastro completo "Cadastro Realizado com Sucesso!"

Cenário: Cadastro com campo de email Inválido
Quando eu completar todos os campos obrigatórios com asterisco 
E meu campo de email está inválido 
Então deve exibir uma mensagem de erro "Por favor, verifique seu email!"

Cenário: Cadastro com campos obrigatórios em branco
Quando eu completar todos os campos obrigatórios com asterisco 
E um ou mais campos obrigatórios estão incompletos
Então deve exibir uma mensagem de erro "Por favor, complete os campos obrigatórios"

Esquema do Cenário: Conclusão de Cadastro 
Quando eu completar os meus <dados> do cadastro com todos os campos obrigatórios com asterisco
E com uma <email> válido
Então deve exibir uma <mensagem> de sucesso

Exemplos:
|dados|email|mensage|
|"dados obrigatórios preenchidos"|"brenda@ebac.com.br"|"Cadastro Realizado com Sucesso!"|
|"dados obrigatórios preenchidos"|"brendaebac.com.br"|"Por favor, verifique seu email!"|
|"dados obrigatórios incompletos"|"brenda@ebac.com.br"|"Por favor, complete os campos obrigatórios"|



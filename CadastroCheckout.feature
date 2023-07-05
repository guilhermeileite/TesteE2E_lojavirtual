#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: 
    Dado que o usuario esta autenticado no site 
    

Esquema do Cenario: Cadastrar dados usuario valido 
Quando o usuario digitar o <nome> 
E o <sobrenome> 
E escolhe o <pais>
E o usuario digitar o <endereço> 
E o usuario digitar o <complemento>
E a <cidade>
E selecionar o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir a pagina "Pedido recebido" com os detalhes do pedido 

Exemplos:
| nome        |    sobrenome     | pais    | endereço                    | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| Guilherme   |  Leite           | Brasil  | Rua da Consolação #271      | apto 604           | Sao Paulo     | Sao Paulo      | 05648233   | 998565151   |  guilherme@ebac.com   |
| Sandra      |  Regina          | Brasil  | Rua Colômbia #456           |                    | Sao Paulo     | Sao Paulo      | 08465611   | 995666566   |  sandrinha@gmail.com  |
| João        |  Costa           | Brasil  | Av. Paulista #56            | apto 91 bloco A    | Sao Paulo     | Sao Paulo      | 04848951   | 997879813   |  jcosta@gmail.com     |



Esquema do Cenario: Cadastrar dados usuario invalido 
Quando o usuario digitar <nome> 
E o <sobrenome> 
E escolhe o <pais>
E o usuario digitar o <endereço> 
E  o <complemento>
E a <cidade>
E selecionar o <estado>
E digitar o <CEP>
E o <telefone>
E o <e-mail>
Entao deve exibir uma <mensagem> de alerta. 

Exemplos:
| nome        |    sobrenome     | pais    | endereço                        | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |                                mensagem                                        |
|  João       |                  | Brasil  | Av. Paulista #56                | apto  91 bloco A   | Sao Paulo     | Sao Paulo      | 04848951   | 997879813   |  jcosta@gmail.com     | "Não e permitido campos vazios                                                 |
|  João       |                  | Brasil  | Av. Paulista #56                | apto 91 bloco A    | São Paulo     | São Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  | "Não e permitido campos vazios"                                                |
| Leslie      |    Cespedes      |         | rua Coronel Vieira de Castro    | casa  9            | São Paulo     | Sao Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  | "Não e permitido campos vazios"                                                |
| Leslie      |    Cespedes      | Brasil  |                                 | casa  9            | São Paulo     | Sao Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  | "Não e permitido campos vazios"                                                |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            |               | Sao Paulo      | 02466110   | 991390066   |  testeu479@gmail.com  | "Não e permitido campos vazios"                                                |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     |                | 02466110   | 991390066   |  testeu479@gmail.com  | "Não e permitido campos vazios"                                                |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      |            | 991390066   |  testeu479@gmail.com  | "Não e permitido campos vazios"                                                |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      | 02466110   |             |  testeu479@gmail.com  | "Não e permitido campos vazios"                                                |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      | 02466110   | 991390066   |                       | "Não e permitido campos vazios"                                                |
| Leslie      |  Cespedes        | Brasil  | rua Coronel Vieira de Castro    | casa  9            | Sao Paulo     | Sao Paulo      | 02466110   | 991390066   |  testeu479            | "O email informado é inválido! Insira no seguinte formato: exemplo@dominio.com" |
|             |                  |         |                                 |                    |               |                |            |             |                       | "Dados obrigatorios *  |

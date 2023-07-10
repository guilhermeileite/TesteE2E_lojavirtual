#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto: 
    Dado que o usuario esta autenticado no site 
    
Esquema do Cenario: Cadastrar dados usuario valido 
Quando o usuario digitar o <nome>, o <sobrenome>, o <pais>, o <endereco>, o <complemento>, a <cidade>, selecionar o <estado>, digitar o <CEP>, o <telefone> e o <e-mail>  
Entao deve exibir a pagina "Pedido recebido" com os detalhes do pedido 

Exemplos:
| nome        |    sobrenome     | pais    | endereco                    | complemento        | cidade        | estado         |   CEP      |   telefone  |     e-mail            |
| Guilherme   |  Leite           | Brasil  | Rua da Consolacao #271      | apto 604           | Sao Paulo     | Sao Paulo      | 05648233   | 998565151   |  guilherme@ebac.com   |
| Sandra      |  Regina          | Brasil  | Rua Colombia #456           |                    | Sao Paulo     | Sao Paulo      | 08465611   | 995666566   |  sandrinha@gmail.com  |
| Joao        |  Costa           | Brasil  | Av. Paulista #56            | apto 91 bloco A    | Sao Paulo     | Sao Paulo      | 04848951   | 997879813   |  jcosta@gmail.com     |


Esquema do Cenario: Cadastrar dados usuario invalido 
Quando o usuario deixar de preencher algum campo obrigatorio
Entao deve exibir uma <mensagem> de alerta "Nao e permitido campos vazios" 


#language: pt

Funcionalidade: Configurar meu produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para inserir depois no carrinho

Contexto: 
    Dado que o usuario esta autenticado no site 

Esquema do Cenario: Configuracao valida
Quando o usuario seleciona um produto, escolhe a <cor>, o <tamanho> e a <quantidade>
Entao o produto deve ser inserido no carrinho


Exemplos:
|    cor          |  tamanho   | quantidade |
|  "vermelho"     |   "L"      |   "3"      |
|  "azul"         |   "L"      |   "1"      |
|  "rosa"         |   "M"      |   "10"     | 


Esquema do Cenario: Configuracao invalida
Quando o usuario seleciona um produto, o <tamanho> e a <quantidade>
Entao deve exibir uma mensagem de alerta "Selecione uma das opcoes do produto antes de adiciona-lo ao carrinho" 

Quando o usuario seleciona uma quantidade maior que 10 produtos
Entao deve exibir uma mensagem de alerta "E permitido apenas 10 produtos por venda"

Cenario: Limpar dados
Quando o usuario seleciona um produto, escolhe a cor, o tamanho e a quantidade
E clica no botao “limpar”
Entao os dados do produto voltam ao estado original



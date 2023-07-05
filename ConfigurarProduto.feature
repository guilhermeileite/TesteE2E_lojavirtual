#language: pt

Funcionalidade: Configurar meu produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para inserir depois no carrinho

Contexto: 
    Dado que o usuario esta autenticado no site 

Esquema do Cenario: Configuração válida
Quando o usuário seleciona um produto
E o usuário escolhe a <cor>
E o usuário escolhe o <tamanho>
E  o usuário escolhe a <quantidade>
Entao o produto deve ser inserido no carrinho


Exemplos:
|    cor          |  tamanho   | quantidade |
|  "vermelho"     |   "L"      |   "3"      |
|  "azul"         |   "L"      |   "1"      |
|  "rosa"         |   "M"      |   "10"     | 


Esquema do Cenário: Configuração inválida
Quando o usuário seleciona um produto
E o usuário seleciona o <tamanho>
E  o usuário seleciona a <quantidade>
Entao deve exibir uma <mensagem> de alerta 

Exemplos:
|    cor         |  tamanho   | quantidade  |                     mensagem                                              |
|  "rosa"        |   "M"      |             | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|                |   "L"      |   "2"       | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|  "amarelo"     |            |   "5"       | "Selecione uma das opções do produto antes de adicioná-lo ao carrinho."   |
|  "branco"      |   "M"      |   "11"      | "E permitido apenas 10 produtos por venda."                               |

Cenário: Limpar dados
Quando o usuário seleciona um produto
E o usuário escolhe a <cor>
E o usuário escolhe o <tamanho>
E o usuário escolhe a <quantidade>
E clicar no botão “limpar”
Entao os dados do produto voltam ao estado original



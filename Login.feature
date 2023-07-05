#language: pt

Funcionalidade: Login na plataforma  
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Contexto:
Dado que o usuario possui uma conta no portal EBAC-SHOP


Esquema do Cenario: Autenticação valida
Quando eu digitar o usuario <usuario> 
E a senha <senha> 
Entao deve ser direcionado para a tela de checkout

Exemplos:
| usuario                       |    senha                |  
| "guilhermeleite@ebac.com "   |  "senhaebacshop123"     |  


Esquema do Cenario:  Autenticacao invalida
Quando eu digitar o usuario <usuario> 
E a senha <senha> 
Entao deve exibir a mensagem <mensagem>

Exemplos:
| usuario               |    senha              |      mensagem                          |
| "guilhermeleite"      |  "senhaguilherme"     | "usuario ou senha inválidos"           | 
| "joao@ebac.com"       |  "senhajoao"          | "usuario ou senha inválidos"           | 
|                       |                       | "Campos usuario ou senha obrigatórios  | 
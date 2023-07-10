#language: pt

Funcionalidade: Login na plataforma  
Como cliente da EBAC-SHOP
Quero fazer o login (autenticacao) na plataforma  
Para visualizar meus pedidos


Contexto:
Dado que o usuario possui uma conta no portal EBAC-SHOP


Esquema do Cenario: Autenticacao valida
Quando eu digitar o usuario <usuario> 
E a senha <senha> 
Entao deve ser direcionado para a tela de checkout

Exemplos:
| usuario                      |    senha                |  
| "guilhermeleite@ebac.com "   |  "senhaebacshop123"     |  


Esquema do Cenario:  Autenticacao invalida
Quando eu digitar o usuario <usuario> 
E a senha <senha> 
Entao deve exibir a mensagem "usuario ou senha invalidos"

Quando eu nao digitar o usuario
Ou a senha
Entao deve exibir a mensagem "campos usuario ou senha obrigatorios"

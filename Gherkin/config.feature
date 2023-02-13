                  #language: pt

                  Funcionalidade: Tela de Configuração
                  Como cliente da EBAC-SHOP
                  Quero configurar meu produto de acordo com meu tamanho e gosto
                  E escolher a quantidade
                  Para depois inserir no carrinho

                  Contexto:
                  Dado estar na página de configurações

                  Esquema do Cenário: Inserindo produto sem seleções
                  Quando clico no botão inserir no carrinho
                  Então validar <mensagem> de erro

                  Exemplos:
                  | mensagem                         |
                  | "Selecionar a cor desejada"      |
                  | "Selecionar o tamanho desejado"  |
                  | "Selecionar quantidade desejada" |

Cenário: Inserindo cinco produtos
Quando seleciono o Tamanho P
E seleciono a cor rosa
E seleciono cinco quantidades
Então validar toast alert "Itens inseridos com sucesso!"

Cenário: Inserindo onze produtos
Quando seleciono o Tamanho M
E seleciono a cor preta
E seleciono onze quantidades
Então validar toast alert "Limite de quantidade excedido"

Cenário: Limpando itens
Quando clicar em Limpar
Então validar toast alert "Sem itens no carrinho"
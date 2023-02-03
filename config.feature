      #language: pt

      Funcionalidade: Tela de Configuração
      Como cliente da EBAC-SHOP
      Quero configurar meu produto de acordo com meu tamanho e gosto
      E escolher a quantidade
      Para depois inserir no carrinho

      Contexto:
      Dado estar na página de configurações

      Esquema do Cenário: Inserindo produto sem cor
      Quando seleciono o <tamanho>
      E seleciono a <quantidade>
      E clico no botão inserir no carrinho
      Então validar toast alert "Selecionar a cor desejada"

      Esquema do Cenário: Inserindo produto sem tamanho
      Quando seleciono a <cor>
      E seleciono a <quantidade>
      E clico no botão inserir no carrinho
      Então validar toast alert "Selecionar o tamanho desejado"

      Esquema do Cenário: Inserindo produto sem quantidade
      Quando seleciono o <tamanho>
      E seleciono a <cor>
      E clico no botão inserir no carrinho
      Então validar toast alert "Selecionar quantidade desejada"

      Exemplos:
      | cor      | tamanho | quantidade |
      | rosa     | PP      | 1          |
      | azul     | M       | 2          |
      | preto    | G       | 3          |
      | vermelho | GG      | 4          |

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
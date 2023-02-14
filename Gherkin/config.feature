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

      Esquema do Cenário: Não permitir a seleção de mais de 10 itens
      Quando selecionar <tamanho>, <cor>
      E seleciono <quantidade>
      Então validar <toast alert>

      Exemplos:
      | tamanho | cor   | quantidade | toast alert                     |
      | PP      | Rosa  | 10         | "Itens inseridos com sucesso!"  |
      | GG      | Preto | 11         | "Limite de quantidade excedido" |
      | M       | Azul  | 12         | "Limite de quantidade excedido" |

Cenário: Limpando itens
Quando clicar em Limpar
Então validar toast alert "Sem itens no carrinho"





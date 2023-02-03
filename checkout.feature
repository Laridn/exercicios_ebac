                  #language: pt

                  Funcionalidade: Tela de Checkout
                  Como cliente da EBAC-SHOP
                  Quero concluir meu cadastro
                  Para finalizar minha compra

                  Contexto:
                  Dado estar na página de Checkout

                  Esquema do Cenário: Validar campos obrigatórios
                  Quando clicar em finalizar compra
                  Então validar <mensagem> de erro

                  Exemplos:
                  | mensagem                               |
                  | "Campo nome obrigatório"               |
                  | "Campo sobrenome obrigatório"          |
                  | "Campo país obrigatório"               |
                  | "Campo endereço obrigatório"           |
                  | "Campo cidade obrigatório"             |
                  | "Campo CEP obrigatóriso"               |
                  | "Campo telefone obrigatório"           |
                  | "Campo endereço de e-mail obrigatório" |

                  Cenário: Validar e-mail inválido
                  Quando preencher o campo e-mail "leticia2@ebac.com.br"
                  Então validar mensagem de erro "Endereço de e-mail inválido"

                  Esquema do Cenário: Dados cadastrados
                  Quando preencher o <nome>
                  E preencher o <sobrenome>
                  E preencher o <país>
                  E preencher o <endereço>
                  E preencher a <cidade>
                  E preencher o <cep>
                  E preencher o <telefone>
                  E preencher o <e-mail>
                  E clicar no botão Finalizar Compra
                  Então validar toast alert "Dados cadastrados com sucesso!"

                  | nome     | sobrenome | país     | endereço     | cidade      | cep         | telefone      | e-mail               |
                  | "Camila" | "Silva"   | "Brasil" | "Rua Cidade" | "São Paulo" | "00000-000" | "11999999999" | camilasilva@ebac.com |
                  | "Cátia"  | "Silva"   | "Brasil" | "Rua Estado" | "São Paulo" | "00000-001" | "11999999998" | catiasilva@ebac.com  |
                  | "Carlos" | "Silva"   | "Brasil" | "Rua Região" | "São Paulo" | "00000-002" | "11999999997" | carlossilva@ebac.com |

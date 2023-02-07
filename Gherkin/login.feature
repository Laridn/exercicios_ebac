                  #language: pt

                  Funcionalidade: Tela de Login
                  Como cliente da EBAC-SHOP
                  Quero fazer o login (autenticação) na plataforma
                  Para visualizar meus pedidos

                  Contexto:
                  Dado estar na página de autenticação do portal EBAC

                  Cenário: Autenticação válida
                  Quando digitar o usuário "leticiaalves@ebac.com.br"
                  E a senha "leticia123"
                  Então validar mensagem de boas vindas "Olá Larissa"

                  Cenário: Usuário inválido
                  Quando digitar o usuário "leticia2@ebac.com.br"
                  E a senha "leticia123"
                  Então validar toast alert "Usuário ou senha inválidos"

                  Cenário: Senha inválida
                  Quando digitar o usuário "leticiaalves@ebac.com.br"
                  E a senha "lele123"
                  Então validar toast alert "Usuário ou senha inválidos"

                  Esquema do Cenário: Autenticar múltiplos usuários válidos
                  Quando digitar o <usuario>
                  E a <senha>
                  Então validar <mensagem> de sucesso

                  Exemplos:
                  | usuario                        | senha         | mensagem      |
                  | "leticiasilva@ebac.com.br"     | "silva123"    | "Olá Leticia" |
                  | "lucasoliveira@hotmail.com.br" | "oliveira123" | "Olá Lucas"   |

                  Esquema do Cenário: Autenticar múltiplos usuários inválidos
                  Quando digitar o <usuario>
                  E a <senha>
                  Então validar <toast alert> de erro

                  Exemplos:
                  | usuario                        | senha         | toast alert                  |
                  | "leticiasilva@ebac.com.br"     | "silva555"    | "Usuário ou senha inválidos" |
                  | "lucasoliveira@hotmail.com.br" | "oliveira878" | "Usuário ou senha inválidos" |
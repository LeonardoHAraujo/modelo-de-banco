<p>Título: Modelo de banco de dados</p>

<p>Autor: Leonardo Araújo</p>

<p>Resumo do modelo:</p>

    Foi apresentado um cenário, como se fosse o Mercado livre (site de compra e venda) 
    no qual foi desmembrado em vários mini-mercados com ramos diferentes.
    As necessidades para que a regra de negócio funcionasse, seriam as seguintes:

        1. Sistema de gestão de múltiplos sites de venda (mini-mercados), categorizados em
        ramos de Mercado diferentes.
        2. Cada mini-mercados deve ter um gerente (também usuário do sistema).
        3. Login e senha de um usuário clientes devem ser válidos em TODOS os sistemas.
        4. Cadastro de usuários (clientes/administradores/gerentes).
        5. Usuários administradores podem cadastrar novos Ramos de Mercado.
        6. NÃO é possível termos mais de um mini-mercado livre em um mesmo ramo.
        7. Produtos publicados em um mini-mercado NÃO devem estar disponíveis nos outros.
        8. Clientes podem comprar e vender produtos. Registro das vendas.
        9. Existe a necessidade de conseguirmos extrair relatórios sobre os usuários que
        realizaram compras de cada mini-mercado livre.
        10. Precisamos saber a idade de cada cliente
        11. Gerentes podem cadastrar cupons de desconto, referente a um mini-mercado.
        12. Uma venda pode conter vários produtos diferentes e um produto pode ser vendido
        inúmeras vezes (NxN).
    
    E com base no dados acima, o modelo de banco de dados para solução de regra de negócio
    foi criado.

<p>Como o modelo funciona:</p>

    O mesmo é constituído por um banco de dados chamado "Mercados_livres" e por sete tabelas, 
    segue abaixo:

        1. users_adms.
        2. users_gerentes.
        3. users_clientes.
        4. mini_mercado.
        5. produtos_publicados.
        6. vendas.
        7. cupons.

    As tabelas "users_gerentes", "produtos_publicados", "vendas" e "cupons" possuem 
    relacionamentos entre tabelas.
    Todo o detalhamento das relações estão descritos na ilustração do banco de dados.

<p>Observações:</p>

    Na pasta "database" possui um dump do modelo de banco de dados caso seja necessário
    a implementação da solução.
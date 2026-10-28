--Exercicio 1--
ATIVIDADE READ

1-SELECT * FROM produto; -- tabela produto /

2-SELECT  nome_produto, marca, estoque FROM produto; --puxando so os dados nome_produto, marca, estoque /

3-select nome_produto,categoria,preco_unitario,data_cadastro 
 from produto order by marca asc; /

/*ordem alfabetica Z-A DESC   A-Z ASC

 select nome_produto,categoria,peco_unitario,data_cadastro
 from produto order by marca asc; */

4-select nome_produto,categoria,preco_unitario,data_cadastro
 from produto order by marca desc; /

5-SELECT * FROM cliente; /

6-SELECT  nome,email,cidade,estado from cliente; /

7- SELECT  nome_cliente email, cidade, estado from cliente ORDER BY estado ASC; /

8-select nome_cliente email, cidade, estado
 from cliente order by estado DESC; /


9-SELECT * FROM venda /

10-SELECT  cliente.nome_cliente, venda.data_venda, venda.preco_unitario_venda, venda.forma_pagamento 
from cliente
INNER JOIN venda 
on  cliente.id_cliente = venda.id_cliente;/

11-SELECT id_produto, data_venda,quantidade, status_venda from venda;/

12-SELECT produto.nome_produto,produto.preco_unitario,venda.forma_pagamento 
from produto
inner join venda 
on venda.id_produto = produto.id_produto 
where venda.forma_pagamento in("PIX","Boleto");/

13-SELECT cliente.nome_cliente, produto.nome_produto, venda.data_venda, venda.quantidade
from venda
inner join cliente
on cliente.id_cliente = cliente.id_cliente
inner join produto
on venda.id_produto =  venda.id_produto;

14-SELECT  produto.nome_produto,venda.forma_pagamento 
from produto
inner join venda 
on venda.id_produto = produto.id_produto 
order by venda.data_venda desc;

15- SELECT  produto.nome_produto,venda.forma_pagamento 
from produto
inner join venda 
on venda.id_produto = produto.id_produto 
order by venda.data_venda asc;

16- select cliente.nome_cliente, cliente.email, produto.nome_produto,venda.forma_pagamento, produto.marca, produto.categoria, venda.status_venda 
from produto
 INNER JOIN cliente 
 on produto.id_produto = cliente.id_cliente INNER JOIN venda 
 on venda.id_produto WHERE venda.status_venda in ("concluida", "cancelada") 
 order by venda.status_venda DESC;


-----------------------------------------------------------------------------------------------------------------


--Exercicio 2-- 
 ATIVIDADE UPDATE


1--chave unica no email

2-UPDATE cliente
set data_cadastro = "2026-01-01"
WHERE cidade in ("manaus");

3-update cliente
set nome_cliente = "michal jackson"
where id_cliente = 10;

4-update produto
set nome_produto = "notbook lenovo ideapad7"
where id_produto = 1;

5-update produto
set preco_unitario= "4999.99"
where marca in ("1");

6-update venda
set desconto_percentual= "0.01"
where quantidade = 2;


------------------------------------------------------------------------------------------------------------
--exercicio 4--
ATIVIDADE INSERT

1-INSERT INTO cliente (nome_cliente, email, cidade, estado, data_cadastro)
VALUES ("Rubervaldo Sesiano", "ruber.sesi@gmail.com", "Jaguariúna", "SP", CURDATE());

2-INSERT INTO produto (nome_produto, categoria, marca, preco_unitario, estoque, ativo, data_cadastro)
VALUES ("MousePad 5POL", "Acessórios", "Lumix", 59.98, 35, 1, CURDATE());

3-INSERT INTO venda (
    id_produto,
    id_cliente,
    data_venda,
    quantidade,
    preco_unitario_venda,
    desconto_percentual,
    forma_pagamento,
    status_venda
)
VALUES (
    (SELECT id_produto FROM produto WHERE nome_produto = 'MousePad 5POL' LIMIT 1),
    (SELECT id_cliente FROM cliente WHERE nome_cliente = 'Rubervaldo Sesiano' LIMIT 1),
    "2026-10-21",
    10,
    59.98,
    1.33,
    'PIX',
    'Concluída'
);
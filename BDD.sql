
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

--exerci 2--


1- UPDATE clientes 
SET email = 'email@email.com.br' 
WHERE estado IN ('SP', 'RJ');

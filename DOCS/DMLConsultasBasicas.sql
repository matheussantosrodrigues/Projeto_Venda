use ProjetoVenda; -- ATIVAR O BANCO 

select * from cliente;
select * from produto;
select * from venda;
select * from vendaItem;
select * from tamanho;
select * from tamanhoproduto;

-- 1
-- Crie uma consulta que receba o nome e telefone de todos os clientes.
-- como no nosso código não tem telefone utilizamos do CPF.
select nomeCliente, cpf from cliente;

-- 2
-- Crie uma consulta que retorne um  determinado endereço utilizando como índice o cep.
-- o where serve para colocar onde vai estar no caso em que cep for tal.
select cep, nomeCliente, cpf from cliente where cep= "20222365";

-- 3
-- Crie uma consulta que retorne o nome, marca de todos os produtos.
select nomeProduto, marca from produto;

-- 4
-- Crie uma consulta que retorne o nome, marca de um determinado produto, 
-- de tamanho G com todas as suas quantidades.
SELECT produto.nomeProduto, produto.marca, tamanhoproduto.quantidade, tamanho.sigla 
FROM produto  INNER JOIN tamanhoproduto
ON produto.codProduto = tamanhoproduto.codProduto
INNER JOIN tamanho ON tamanho.codTam = tamanhoproduto.codTam
WHERE tamanho.sigla = "G";

-- 5
-- Crie uma consulta que retorne o nome do cliente, 
-- o código e a data de uma determinada venda;
SELECT cliente.nomeCliente, cliente.codCliente, venda.dataHora
FROM cliente INNER JOIN vendaitem
ON cliente.codCliente = vendaitem.codVenda
INNER JOIN venda ON venda.codVenda = vendaitem.codVenda
WHERE venda.codVenda = "5";

-- 6
-- Crie uma consulta que retorne o nome do cliente, data e numero da venda,
-- itens e quantidades constantes em todas as vendas realizadas.
SELECT cliente.nomeCliente, venda.dataHora, venda.codVenda, produto.nomeProduto, vendaitem.quant
FROM cliente INNER JOIN vendaitem
ON cliente.codCliente = vendaitem.codVenda
INNER JOIN venda ON venda.codVenda = vendaitem.codVenda
INNER JOIN produto ON vendaitem.codProduto = produto.codProduto
WHERE venda.codVenda = "2";

-- 7
-- Crie uma consulta que retorne o nome do cliente, data e numero da venda,
-- itens e quantidades constantes em todas as vendas realizadas, de apenas um unico dia.
SELECT
cliente.nomeCliente, venda.dataHora, venda.codVenda, produto.nomeProduto, vendaItem.quant
FROM venda
INNER JOIN cliente ON venda.codCliente = cliente.codCliente
INNER JOIN vendaItem ON venda.codVenda = vendaItem.codVenda
INNER JOIN produto ON vendaItem.codProduto = produto.codProduto
WHERE venda.dataHora = "2010/07/01 11:55";

-- 8
-- Atualize os dados de um produto alterando seu nome.
update produto set nomeProduto ="all star" where codProduto = 7;

-- 9
update vendaitem set codProduto ="4" where codVenda = 2 AND codProduto=5;

-- 10

delete from vendaitem where codVenda = 1;

-- 11 Crie um relatório que apresente o 
-- nome do cliente, o nome do produto comprado, quantidade, 
-- valor unitario de uma determinada venda, buscar pelo numero da venda. 
SELECT cliente.nomeCliente, produto.nomeProduto, vendaItem.quant, vendaItem.valorUnit
FROM venda
INNER JOIN vendaItem ON venda.codVenda = vendaItem.codVenda
INNER JOIN cliente ON venda.codCliente  = cliente.codCliente
INNER JOIN produto ON vendaItem.codProduto = produto.codProduto
WHERE venda.codVenda = "20";


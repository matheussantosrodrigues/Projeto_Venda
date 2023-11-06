use projetovenda;

select * from cliente;
select * from produto;
select * from venda;
select * from vendaitem;

SELECT V.codVenda, C.nomeCliente, P.nomeProduto, VI.quantVendida, VI.valorUnit, (VI.quantVendida * VI.valorUnit) AS total
FROM vendaitem VI
JOIN Produto P ON VI.codProduto = P.codProduto
JOIN Venda V ON VI.codVenda = V.codVenda
JOIN Cliente C ON V.codCliente = C.codCliente;

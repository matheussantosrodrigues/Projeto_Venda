use projetovenda;

update produto set nomeProduto = 'Saia Longa' where codProduto = '1';
update produto set nomeProduto = 'Calca Wide Leg' where codProduto = '2';
update produto set nomeProduto = 'Blusa' where codProduto = '3';

update venda set dataHora = '1995-04-28 22:22:00' where codVenda = '1';
update venda set dataHora = '2021-09-17 15:56:00' where codVenda = '2';
update venda set dataHora = '1996-04-28 23:15:00' where codVenda = '3';

delete from vendaitem where codVenda = '1';

delete from vendaitem where codVenda = '2';

delete from venda where codVenda = '1';


use projetovenda;

update produto set nomeProduto="Camisa Jeans" where codProduto = 1;
update produto set nomeProduto="Camisa Regata" where codProduto = 2;
update produto set nomeProduto="Boné" where codProduto = 3;

update venda set dataHora="2023/08/21 12:12" where codVenda = 1;
update venda set dataHora="2010/10/10 11:11" where codVenda = 4;
update venda set dataHora="2004/04/04 20:20" where codVenda = 5;

 delete from vendaItem where codVenda = 20;
  delete from venda where codVenda = 20;
   delete from vendaItem where codVenda = 19;
  delete from venda where codVenda = 19;
   delete from vendaItem where codVenda = 18;
  delete from venda where codVenda = 18;
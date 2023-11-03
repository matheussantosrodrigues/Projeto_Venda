use projetovenda;


-- INSERCAO DE CLIENTES


insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Amanda Pires', 12345678910, 'Rua', 'Boracéia', 20, 'Laranjeiras', 'Caieiras', 'SP', 07700000, 'Casa', 'Nenhuma'); 

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Isabelly Cristina', 12345678911, 'Rua', 'Tucano', 21, 'Laranjeiras', 'Caieiras', 'SP', 07700001, 'Casa', 'Casa verde'); 

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Ellen Canutto', 12345678912, 'Rua', 'Andorinha', 22, 'Laranjeiras', 'Caieiras', 'SP', 07700002, 'Casa', 'Portâo de aço');

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Rafaella Prates', 12345678913, 'Av', 'Anchieta', 23, 'Perus', 'Saõ Paulo', 'SP', 07700003, 'Apto', 'Bloco B');  

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Yasmin Liara', 12345678914, 'Rua', 'João Massaia', 24, 'Laranjeiras', 'Caieiras', 'SP', 07700004, 'Casa', 'Nenhuma'); 

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Fabiola Rodrigues', 12345678915, 'Rua', 'Maria Marietta', 25, 'Palmares', 'Franco da Rocha', 'SP', 07700005, 'Casa 2', 'Nenhuma'); 

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Luiza Nascimento', 12345678916, 'Av', 'Sete de Setembro', 26, 'Centro', 'Franco da Rocha', 'SP', 07700006, 'Casa', 'Nenhuma'); 

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Maria Luiza', 12345678917, 'Rua', 'Jonnes', 27, 'Lapa', 'São Paulo', 'SP', 07700007, 'Apto', 'Bloco A'); 

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Ana Gabrielly', 12345678918, 'Rua', 'Carlina', 28, 'Monte Verde', 'Franco da Rocha', 'SP', 07700008, 'Casa', 'Casa 3'); 

insert into cliente (nomeCliente, cpf, tipoLogradouro, nomeRua, Nresidencial, bairro, cidade, UF, cep, complemento, observacao)
values ('Nicolly Cristina', 12345678919, 'Av', 'Pontes', 29, 'Pq Vitória', 'Osasco', 'SP', 07700009, 'Casa', 'Deixar ao lado'); 


-- INSERCAO DE PRODUTOS 

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Saia', 50, 49.99, 'Adulto', 'Feminino', 'Poliester', 'Pitty Jeans');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Calça', 75, 70.00, 'Adulto', 'Masculino', 'Algodão', 'Nike');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Camisa', 120, 89.00, 'Adulto', 'Unissex', 'Algodão', 'Billie Eilish');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Meias', 90, 15.00, 'Adulto', 'Unissex', 'Algodão', 'Puma');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Saia', 55, 29.99, 'Infantil', 'Feminino', 'Jeans', 'Pitty Jeans');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Macacão', 60, 75.99, 'Adulto', 'Unissex', 'Jeans', 'Pitty Jeans');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Cueca', 100, 25.99, 'Adulto', 'Masculino', 'Poliester', 'Calvin Klein');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Cueca', 100, 15.99, 'Infantil', 'Masculino', 'Poliester', 'Calvin Klein');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Calcinha', 100, 15.99, 'Infantil', 'Feminino', 'Poliester', 'Calvin Klein');

insert into Produto (nomeProduto, quantidade, valor, categoria, genero, tipo, marca)
values ('Calcinha', 100, 25.99, 'Adulto', 'Feminino', 'Poliester', 'Calvin Klein');



-- INSERCAO DE VENDAS


insert into venda (codCliente, codVenda, dataHora)
values 
(1, 1, '2022-07-05 03:00:00');

insert into venda (codCliente, codVenda, dataHora)
values 
(2, 2, ' 2022-02-08 01:23:00');

insert into venda (codCliente, codVenda, dataHora)
values
(3, 3, " 2022-01-17 07:51:00");

insert into venda (codCliente, codVenda, dataHora)
values
(4, 4, " 2022-10-23 08:40:00");

insert into venda (codCliente, codVenda, dataHora)
values
(5, 5, " 2022-04-03 06:47:00");

insert into venda (codCliente, codVenda, dataHora)
values
(6, 6, " 2022-09-01 02:36:00");

insert into venda (codCliente, codVenda, dataHora)
values
(7, 7, " 2022-12-18  03:09:00");

insert into venda (codCliente, codVenda, dataHora)
values
(8, 8, " 2022-03-08 04:15:00");

insert into venda (codCliente, codVenda, dataHora)
values
(9, 9, " 2022-07-04 08:21:00");

insert into venda (codCliente, codVenda, dataHora)
values
(10, 10, " 2022-06-15 08:30:00");

insert into venda (codCliente, codVenda, dataHora)
values
(1, 11, " 2022-09-04 02:34:00");

insert into venda (codCliente, codVenda, dataHora)
values
(2, 12, " 2022-01-03 12:40:00");

insert into venda (codCliente, codVenda, dataHora)
values
(3, 13, " 2020-07-22 04:02:00");

insert into venda (codCliente, codVenda, dataHora)
values
(4, 14, " 2018-12-22 09:12:00");

insert into venda (codCliente, codVenda, dataHora)
values
(5, 15, " 2022-06-04 01:47:00");

insert into venda (codCliente, codVenda, dataHora)
values
(6, 16, " 2012-02-11 12:01:00");

insert into venda (codCliente, codVenda, dataHora)
values
(7, 17, " 2014-05-24 11:34:00");

insert into venda (codCliente, codVenda, dataHora)
values
(8, 18, " 2017-08-10 08:22:00");

insert into venda (codCliente, codVenda, dataHora)
values
(9, 19, " 2019-12-31 11:59:00");

insert into venda (codCliente, codVenda, dataHora)
values
(10, 20, " 2016-02-09 09:13:00");


-- INSERCAO DE VENDA ITEM


insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(1, 1, 2, 49.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(2, 2, 4, 70.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(3, 3, 6, 89.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(4, 4, 1, 15.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(5, 5, 10, 29.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(6, 6, 1, 75.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(7, 7, 3, 25.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(8, 8, 2, 15.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(9, 9, 3, 15.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(10, 10, 7, 25.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(11, 1, 2, 49.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(12, 2, 3, 70.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(13, 3, 1, 89.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(14, 4, 5, 15.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(15, 5, 10, 29.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(16, 6, 3, 75.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(17, 7, 5, 25.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(18, 8, 4, 15.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(19, 9, 5, 15.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(20, 10, 8, 25.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(20, 1, 20, 75.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(19, 2, 16, 70.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(18, 3, 21, 89.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(17, 4, 5, 15.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(16, 5, 3, 29.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(15, 6, 15, 75.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(14, 7, 6, 25.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(13, 8, 4, 15.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(12, 9, 18, 15.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(11, 10, 2, 25.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(10, 5, 11, 29.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(9, 7, 3, 25.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(8, 2, 18, 70.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(7, 8, 4, 15.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(6, 1, 2, 49.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(5, 3, 1, 89.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(4, 6, 10, 75.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(3, 10, 5, 25.99);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(2, 4, 10, 15.00);

insert  into vendaitem (codVenda, codProduto, quantVendida, valorUnit)
values
(1, 9, 16, 15.99);

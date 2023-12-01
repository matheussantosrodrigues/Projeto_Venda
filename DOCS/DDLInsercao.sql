use ProjetoVenda; -- ATIVAR O BANCO 

												-- Inserção de  Clientes --
                                                                 
 -- cliente 01 --
insert into cliente (nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Marie", "78936412300", "avenida", "950", "20222365", "RJ", "Leblon", "Niterói", "Supla", "casa 2", "Casa com piscina");

 -- cliente 02 --
insert into cliente (nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Louro José", "78963210112", "rua", "50", "20546936", "PR", "Curitiba", "Paraná", "bruxelas", " ", "tem varios cachorros");

 -- cliente 03 --
 insert into cliente (nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Silvio Santos", "72345688077", "rua", "2022", "08001236", "SP", "Jequiti", "Sao Paulo", "Sbt", "Ap 20", "Casa com parede de ouro");

 -- cliente 04 --
 insert into cliente (nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Fautão", "72354700010", "avenida", "120", "20222365", "RJ", "Paraty", "Ipanema", "Domingão", "Ap 0", "Casa com elevador");

 -- cliente 05 --
 insert into cliente (nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Larissa Manoela", "71456988880", "rua", "1000", "19980065", "MG", "Mineirão", "Barbacena", "México", "", "Casa com grande portão");

 -- cliente 06 --
insert into cliente(nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Luciano Huck", "45888999652", "rua", "10000", "14788923", "PE", "Porto de Galinhas", "Recife", "milhonário", "Ap 56", "porteiro gente fina");

 -- cliente 07 --
insert into cliente (nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Guimarães Rosa", "78956667980", "rua", "041", "44775202", "MG", "Miguilim", "Serra Negra", "Canadá", "Casa ", "Casa com vacas");

 -- cliente 08 --
insert into cliente (nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Willin Shakespeare", "12345546243", "rua", "330", "147552011", "RR", "Boa Vista", "Queixote", "Romantismo", "Ap 10", "Casa de Otelo");

 -- cliente 09 --
 insert into cliente (nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("George Orwell", "78564122151", "travessa", "450", "45669744", "RN", "Parnamirim", "Natal", "marchantes", "Casa E", "Casa com porteira");

 -- cliente 10 --
 insert into cliente(nomeCliente, cpf, tipoLogradouro, Nresidencial, cep, UF, bairro, cidade, nomeRua, complemento, observacao)
values ("Graciliano Ramos", "78925566410", "rua", "111", "44452365", "ES", "Vitória", "Miopse", "Solarado", "casa A", "Lixo Preto ao lado");




																-- Inserção de Produtos --
                                                                

-- produto 01 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Camisa", "16.90", "camisa", "masculino", "regata", "vans");

-- produto 02 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Blusa", "49.90", "blusa", "feminino", "colete", "overcome");

-- produto 03 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Calça", "78.40", "calça", "feminino", "legging", "k2b");

-- produto 04 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("calcão", "88.30", "calça", "masculino", "Tactel", "adidas");

-- produto 05 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Boina", "114.20", "Calça", "feminino", "wide leg", "moon city");

-- produto 06 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Meia", "14.20", "meia", "feminino", "soquete", "puma");

-- produto 07 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Roupa de vestir", "108.20", "roupa de banho", "feminino", "biquini", "hering");

-- produto 08 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Roupa brincar", "48.20", "roupa de banho", "masculino", "sunga", "puma");

-- produto 09 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Luva", "34.20", "luva", "feminino", "couro", "nike");

-- produto 10 --
insert into produto (nomeProduto, valor, categoria, genero, tipo, marca)
values ("Chapéu", "24.50", "chápeu", "masculino", "lã", "adidas");



												-- Inserção das vendas --
                                        
-- venda 01 --                                        
insert into venda (codCliente, dataHora)
values ("1","2002/06/22 12:45");

-- venda 02 --                                        
insert into venda (codCliente, dataHora)
values ("2","2012/11/22 17:05");

-- venda 03 --                                        
insert into venda (codCliente, dataHora)
values ("3","2022/10/02 13:29");

-- venda 04 --                                        
insert into venda (codCliente, dataHora)
values ("4","1999/05/07 14:58");

-- venda 05 --                                        
insert into venda (codCliente, dataHora)
values ("5","2022/12/22 00:00");

-- venda 06 --                                        
insert into venda (codCliente, dataHora)
values ("6","2017/04/11 03:15");

-- venda 07 --                                        
insert into venda (codCliente, dataHora)
values ("7","2007/03/22 16:53");

-- venda 08 --                                        
insert into venda (codCliente, dataHora)
values ("8","2013/07/18 19:32");

-- venda 09 --                                        
insert into venda (codCliente, dataHora)
values ("9","2010/07/01 11:55");

-- venda 10 --                                        
insert into venda (codCliente, dataHora)
values ("2","2020/02/21 09:35");

-- venda 11 --                                        
insert into venda (codCliente, dataHora)
values ("8","2022/06/22 12:45");

-- venda 12 --                                        
insert into venda (codCliente, dataHora)
values ("2","2017/01/22 13:05");

-- venda 13 --                                        
insert into venda (codCliente, dataHora)
values ("1","2014/09/02 13:39");

-- venda 14 --                                        
insert into venda (codCliente, dataHora)
values ("5","2015/11/07 12:58");

-- venda 15 --                                        
insert into venda (codCliente, dataHora)
values ("4","2022/12/22 00:10");

-- venda 16 --                                        
insert into venda (codCliente, dataHora)
values ("3","2020/04/11 03:15");

-- venda 17 --                                        
insert into venda (codCliente, dataHora)
values ("6","2017/03/22 16:53");

-- venda 18 --                                        
insert into venda (codCliente, dataHora)
values ("1","2014/09/02 13:40");

-- venda 19 --                                        
insert into venda (codCliente, dataHora)
values ("7","2010/07/01 11:55");

-- venda 20 --                                        
insert into venda (codCliente, dataHora)
values ("9","2020/02/21 09:35");



												-- Inserção das vendaItem  --
                                                
-- vendaitem 01 --                                        
insert into vendaItem (codVenda, codProduto, quant, valorUnit )
values ("1","10", "2", 24.50),        

-- vendaitem 02 --                                      
("1","7", "8", 108.20),      

-- vendaitem 03 --                                        
("2","2", "4", 49.90),         

-- vendaitem 04 --                                      
 ("2","5", "1", 114.20),     

-- vendaitem 05 --                                        
("3","2", "3", 49.90),         

-- vendaitem 06 --
("3","1", "5", 16.90), 

-- vendaitem 07 --                                        
("4","8", "1", 48.20),         

-- vendaitem 08 --                                      
("4","9", "2", 34.20),

-- vendaitem 09 --                                        
("5","5", "5", 114.20),         

-- vendaitem 10 --                                        
("5","1", "1", 16.90),  

-- vendaitem 11 --                                        
("6","4", "9", 88.30),         

-- vendaitem 12 --                                        
("6","6", "2", 14.20), 

-- vendaitem 13 --                                        
("7","10", "3", 24.50),         

-- vendaitem 14 --                                        
("7","2", "4", 49.90),   

-- vendaitem 15 --                                         
("8","1", "9", 16.90),         

-- vendaitem 16 --                                       
("8","4", "1", 88.30), 

-- vendaitem 17 --                                        
("9","9", "1", 34.20),         

-- vendaitem 18 --                                       
("9","7", "3", 108.20),                                  

-- vendaitem 19 --                                        
("10","6", "7", 14.20),         

-- vendaitem 20 -- 
("10","4", "4", 88.30),      

-- vendaitem 21 --                                         
("11","10", "9", 24.50),         

-- vendaitem 22 --                                         
("11","5", "4", 114.20),      

-- vendaitem 23 --                                          
("12","6", "44", 14.20),         

-- vendaitem 24 --                                         
("12","7", "2", 108.20),

-- vendaitem 25 --                                           
("13","2", "8", 49.90),         

-- vendaitem 26 --                                         
("13","2", "1", 49.90),   

-- vendaitem 27 --                                        
("14","10", "4", 24.50),         

-- vendaitem 28 --   
("14","10", "6", 24.50),   

-- vendaitem 29 --                                        
("15","6", "1", 14.20),         

-- vendaitem 30 --                                         
("15","8", "3", 48.20), 

-- vendaitem 31 --                                        
("16","6", "6", 14.20),         

-- vendaitem 32 --                                         
("16","8", "9", 48.20),  

-- vendaitem 33 --                                        
("17","7", "7", 108.20),         

-- vendaitem 34 --                                         
("17","3", "1", 78.40),  

-- vendaitem 35 --                                        
("18","8", "5", 48.20),         

-- vendaitem 36 --                                         
("18","1", "4", 16.90),   

-- vendaitem 37 --                                        
("19","4", "1", 88.30),         

-- vendaitem 38 --                                         
("19","3", "3", 78.40), 

-- vendaitem 39 --                                        
("20","3", "9", 78.40),         

-- vendaitem 40 --                                         
("20","2", "9", 49.90);  

												-- Inserção das vendaItem  --

 insert into tamanho (sigla)
values ("PP");

 -- tamanho 02 --
 insert into tamanho (sigla)
values ("P");

 -- tamanho 03 --
 insert into tamanho (sigla)
values ("M");

 -- tamanho 04 --
 insert into tamanho (sigla)
values ("G");

 -- tamanho 05 --
 insert into tamanho (sigla)
values ("GG");

 -- tamanho 06 --
 insert into tamanho (sigla)
values ("XXG");



insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("50", "1", "1");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("25", "2", "1");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("30", "6", "1");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("11", "3", "2");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("3", "4", "2");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("34", "1", "3");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("9", "5", "3");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("5", "2", "4");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("20", "3", "4");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("55", "3", "5");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("32", "4", "5");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("2", "1", "6");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("13", "6", "6");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("22", "5", "7");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("12", "2", "7");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("44", "4", "8");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("56", "1", "8");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("7", "6", "9"); 

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("20", "3", "9");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("14", "4", "10");

insert into tamanhoproduto (quantidade, codTam, codProduto )
values ("33", "5", "10");


 
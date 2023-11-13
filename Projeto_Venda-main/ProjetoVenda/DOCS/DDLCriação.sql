create database ProjetoVenda; -- CRIAR O BANCO
use ProjetoVenda; -- ATIVAR O BANCO 

create table produto
	(
		nomeProduto varchar (70) not null,
		codProduto int auto_increment not null primary key,
        quantidade int not null,
        valor decimal (7,2) not null
    );
    
    create table cliente 
    (
		nomeCliente varchar (70) not null,
        cpf char (11) not null unique,
        tipoLogradouro char(10) not null,
        nomeRua varchar(50) not null,
        Nresidencial int not null,
        bairro varchar (30) not null,
        cidade varchar (30) not null,
        UF char(02) not null,
        cep char(08) not null,
        complemento varchar (30) null,
        observacao varchar(30) null,
        codCliente int auto_increment not null primary key
    );
    
    create table venda
    ( 
		codVenda int auto_increment not null primary key,
		codCliente int not null, 
        constraint fkClienteVenda foreign key (codCliente) references cliente(codCliente),
        codProduto int not null,
        constraint fkVendaProd foreign key (codProduto) references produto(codProduto)
    );
	
    create table vendaItem 
    ( 
		
		codProduto int not null ,
		constraint fkProdutoVenda foreign key (codProduto) references Produto (codProduto),
        codVenda int not null,
		constraint fkItemVenda foreign key (codVenda) references Venda (codVenda),
        quant int not null,
        valorUnit decimal(7,2) not null
        
    );

    
	alter table produto add categoria varchar (30) not null;
	alter table produto add genero char(10) not null;
	alter table produto add tipo varchar (30) not null;
	alter table produto add marca varchar (30) not null;
    
    alter table produto add constraint UqProduto
    unique (categoria, genero, tipo, marca);
    
    alter table venda drop constraint fkVendaProd;
    alter table venda drop column codProduto; 
    
    alter table venda add column dataHora datetime;
    
create table tamanho
	(
		sigla varchar(3) not null,
        codTam int auto_increment not null primary key
        );
        
	create table tamanhoProduto (
	quantidade int not null,
	codTamPro int auto_increment primary key,
    codTam int not null,
    constraint fkcodTam foreign key (codTam) references tamanho (codTam),
	codProduto int not null,
    constraint fkcodpro foreign key (codProduto) references produto (codProduto)
	);        
    
 
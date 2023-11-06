create database ProjetoVenda; -- CRIAR O BANCO

use ProjetoVenda; -- EXECUTAR O BANCO

create table produto 
(
	codProduto int auto_increment not null primary key,
    nomeProduto varchar (70) not null unique,
    quantidade int not null,
    valor decimal(7,2) not null
);

create table cliente 
(
	nomeCliente varchar (60) not null,
    cpf char(11) not null unique,
    endereco varchar (100) null,
    codCliente int auto_increment not null primary key
);

create table venda 
(
	codVenda int auto_increment not null primary key,
    codCliente int  not null,
    codProduto int not null,
    constraint fkClienteVenda foreign key (codCliente) references cliente (codCliente),
    constraint fkProdutoVenda foreign key (codProduto) references produto (codProduto)
);

alter table cliente drop column endereco;
alter table cliente add tipoLogradouro char (50) not null;
alter table cliente add nomeRua varchar (50) not null;
alter table cliente add nResidencial int not null;
alter table cliente add bairro varchar (30) not null;
alter table cliente add cidade varchar (30) not null;
alter table cliente add UF char (02) not null;
alter table cliente add cep char (08) not null;
alter table cliente add complemento varchar (30) null;
alter table cliente add observacao varchar (30);


alter table produto drop constraint nomeProduto;

alter table produto add categoria varchar(30) not null;
alter table produto add genero char(10) not null;
alter table produto add tipo varchar(30) not null;
alter table produto add marca varchar(30) not null;

alter table produto add constraint uqProduto
unique (nomeProduto, categoria, genero, tipo, marca);



alter table venda add dataHora datetime not null;
alter table venda drop constraint fkProdutoVenda;
alter table venda drop column codProduto;

create table vendaItem (
codVenda int not null,
codProduto int not null,
quantVendida int not null,
valorUnit decimal(7,2) not null,
constraint fkProduto foreign key (CodProduto)
references produto(codProduto),
constraint fkVenda foreign key (CodVenda)
references venda(codVenda),
constraint pkVendaItem primary key(codVenda,codProduto)
);






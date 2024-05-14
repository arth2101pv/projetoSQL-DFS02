drop database dbLivrariaprof;

create database dbLivrariaprof;

use dbLivrariaprof;

create table tbGeneros(
    idGenero int not null auto_increment,
    descricao varchar(100),
    primary key(idGenero)
);

create table tbAutor(
    idAutor int not null auto_increment,
    nome varchar(100),
    email varchar(100),
    primary key(idAutor)
);

create table tbClientes(
    idCliente int not null auto_increment,
    nome varchar(100),
    telefone varchar(45),
    primary key(idCliente)
);

create table tbLivros(
    idLivro int not null auto_increment,
    titulo varchar(100),
    preco decimal(9,2),
    estoque int,
    idGenero int not null,
    primary key(idLivro),
    foreign key(idGenero) references tbGeneros(idGenero)
);

create table tbVendas(
    idVenda int not null auto_increment,
    data date,
    total decimal(9,2),
    idCliente int not null,
    primary key(idVenda),
    foreign key(idCliente) references tbClientes(idCliente)
);

create table tbItens_Vendas(
    idVenda int not null,
    idLivro int not null,
    quantidade int,
    subtotal decimal(9,2),
    foreign key(idVenda) references tbVendas(idVenda),
    foreign key(idLivro) references tbLivros(idLivro)
);

create table tbEscreve(
    idLivro int not null,
    idAutor int not null,
    foreign key(idLivro) references tbLivros(idLivro),
    foreign key(idAutor) references tbAutor(idAutor)
);

desc tbGeneros;
desc tbAutor;
desc tbClientes;
desc tbLivros;
desc tbVendas;
desc tbItens_Vendas;
desc tbEscreve;
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

-- Cadastrando os registros nas tabelas
-- Genero
insert into tbGeneros(descricao) values ('Acao');
insert into tbGeneros(descricao) values ('Ficcao');
insert into tbGeneros(descricao) values ('Aventura');
insert into tbGeneros(descricao) values ('Terror');
insert into tbGeneros(descricao) values ('Comedia');
insert into tbGeneros(descricao) values ('Romance');
insert into tbGeneros(descricao) values ('Documentario');

-- Autor
insert into tbAutor(nome, email) values ('Chuck Wending', 'exampleAutor@email.com');
insert into tbAutor(nome, email) values ('J.K. Rowling', 'exampleAutor@email.com');
insert into tbAutor(nome, email) values ('Rick Riordan', 'exampleAutor@email.com');
insert into tbAutor(nome, email) values ('Scott Cawthon', 'exampleAutor@email.com');
insert into tbAutor(nome, email) values ('Paola Siviero', 'exampleAutor@email.com');
insert into tbAutor(nome, email) values ('Collen Hoover', 'exampleAutor@email.com');
insert into tbAutor(nome, email) values ('Francisco Elinaldo Teixeira', 'exampleAutor@email.com');

-- Cliente
insert into tbClientes(nome, telefone) values ('Ana Paula', '99999-9999');
insert into tbClientes(nome, telefone) values ('Carlos', '99999-9999');
insert into tbClientes(nome, telefone) values ("Gus'tavo", '99999-9999');

-- Livros
insert into tbLivros(titulo, preco, estoque, idGenero) values ('Harry Potter e a Pedra Filosofal', 14.99, 3, 2);
insert into tbLivros(titulo, preco, estoque, idGenero) values ('Star Wars: Marcas da Guerra', 50.50, 4, 1);
insert into tbLivros(titulo, preco, estoque, idGenero) values ('O Auto da Maga Josefa', 20.00, 10, 5);
insert into tbLivros(titulo, preco, estoque, idGenero) values ("Olhos Prateados: Five Nights at Freddy's", 70.50, 3, 4);
insert into tbLivros(titulo, preco, estoque, idGenero) values ('O Ladrao de Raios - Percy Jackson e os Olimpianos 1', 30.50, 8, 3);
insert into tbLivros(titulo, preco, estoque, idGenero) values ('E assim que acaba', 45.99, 7, 6);
insert into tbLivros(titulo, preco, estoque, idGenero) values ('Cinemas "nao Narrativos": Documentario e Experimental', 15.50, 5, 7);

-- Vendas
insert into tbVendas(data, total, idCliente) values ('2024-05-16', 150.50, 2);
insert into tbVendas(data, total, idCliente) values ('2024-05-16', 10.50, 1);
insert into tbVendas(data, total, idCliente) values ('2024-05-16', 120.50, 3);

-- Itens da Venda
insert into tbItens_Vendas(idVenda, idlivro, quantidade, subtotal) values (1, 1, 10, 100.00);
insert into tbItens_Vendas(idVenda, idlivro, quantidade, subtotal) values (2, 4, 3, 50.00);
insert into tbItens_Vendas(idVenda, idlivro, quantidade, subtotal) values (3, 6, 1, 15.00);

-- Escreve
insert into tbEscreve(idLivro, idAutor) values (1, 2);
insert into tbEscreve(idLivro, idAutor) values (4, 4);
insert into tbEscreve(idLivro, idAutor) values (6, 6);

-- Pesquisar os campos das tabelas
select * from tbGeneros;
select * from tbAutor;
select * from tbClientes;
select * from tbLivros;
select * from tbVendas;
select * from tbItens_Vendas;
select * from tbEscreve;
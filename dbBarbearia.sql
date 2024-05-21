-- Apagando banco de dados se existir
drop database dbBarbearia;

-- Criando banco de dados
create database dbBarbearia;

-- Acessando banco de dados
use dbBarbearia;

-- Criando as tabelas no bd
create table tbProdutos(
        -- Campos da tabela
        codProd int not null auto_increment,
        descricao varchar(100),
        marca varchar(50),
        preco decimal(9,2),

        -- Chaves
        primary key(codProd)
    );

insert into tbProdutos(descricao, marca, preco)
    values('Shampoo', 'nivea', 10.00);
insert into tbProdutos(descricao, marca, preco)
    values('Sabonete','Puma', 5.00);
insert into tbProdutos(descricao, marca, preco)
    values('Creme de barbear', 'Loreal Paris', 25.00);
insert into tbProdutos(descricao, marca, preco)
    values('Shampoo', 'rexona', 12.50);
insert into tbProdutos(descricao, marca, preco)
    values('Condicionador', 'Jujutsu Piece', 100.00);

select * from tbProdutos;

delete from tbProdutos where codProd = 2;

select * from tbProdutos;

select codProd as 'Código', descricao as 'Descrição', marca as 'Marca', preco as 'Preço' from tbProdutos;
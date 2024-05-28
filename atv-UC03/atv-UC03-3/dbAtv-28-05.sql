-- Apagando banco de dados existentes
drop database dbAtv_28_05;

-- Criando banco de dados
create database dbAtv_28_05;

-- Acessando banco de dados
use dbAtv_28_05;

-- Criando as tabelas no banco de dados
create table tbFuncionarios(
    -- Campos da tabela
    codigo int not null auto_increment,
    nome varchar(50) not null,
    email varchar(100) not null,
    telefone char(10) not null,
    endereco varchar(100) not null,
    numero char(10) not null,
    cep char(9) not null,
    bairro varchar(100) not null,
    cidade varchar(50) not null,
    estado varchar(50) not null,

    -- Chaves
    primary key (codigo)
);

-- Inserindo valores na tabela
insert into tbFuncionarios (nome, email, telefone, endereco, numero, cep, bairro, cidade, estado) values
('Mike', 'example1@email.com', '11111-1111', 'Rua Pedro Manzal', '980', '11111-111', 'Jão Dias', 'São Paulo', 'SP'),
('Alex', 'example2@email.com', '22222-2222', 'Rua Filho de Deus', '35', '22222-222', 'Santa Amada', 'São Paulo', 'SP'),
('Lisa', 'example3@email.com', '33333-3333', 'Rua Armando Silva', '89', '33333-333', 'Interrios', 'São Paulo', 'SP'),
('Cloe', 'example4@email.com', '44444-4444', 'Rua Bem-Ali', '1009', '44444-444', 'Floresta Ângelo', 'São Paulo', 'SP'),
('Emma', 'example5@email.com', '55555-5555', 'Rua Virando-Esquina', '2', '55555-555', 'Fantapiranga', 'São Paulo', 'SP');

select * from tbFuncionarios;

update tbFuncionarios set telefone = '99999-9999' where codigo = 1; 
update tbFuncionarios set email = 'Ronaldinhodograu@gmail.com' where codigo = 3; 
update tbFuncionarios set numero = '1800' where codigo = 5; 

select * from tbFuncionarios;

delete from tbFuncionarios where codigo = 4;

select * from tbFuncionarios;
select nome from tbFuncionarios;
select nome, email, endereco from tbFuncionarios;
select numero * 10 as 'Número da casa multiplicado por 10' from tbFuncionarios;
select numero * 1.10 as 'Número com 10% de aumento' from tbFuncionarios;
select codigo, nome, email, 'Coluna virtual' as 'Campo virtual' from tbFuncionarios;

-- Tipos de busca (select)
select * from tbFuncionarios;
select nome, email from tbFuncionarios;

-- Clausula where / Operadores
select * from tbFuncionarios where numero = 

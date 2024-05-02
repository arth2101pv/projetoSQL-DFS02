-- Apagando banco de dados se existir
drop database dbLoja;

-- Criando banco de dados
create database dbLoja;

-- Acessando banco de dados
use dbLoja;

-- Visualizando bd
show databases;

-- Criando as tabelas no bd
create table tbUsuarios(
codUsu int, 
nome varchar(50),
senha varchar(20)
);

create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
cpf char(14),
telCel char(10)
);

-- Visualizando as tabelas criadas
show tables;

-- Visualizando as estruturas das tabelas
describe tbUsuarios;
desc tbFuncionarios;

-- Inserindo valores/registros nas tabelas
insert into tbUsuarios(codUsu, nome, senha)
	values(1, 'arthur.cabral', '1919');

insert into tbFuncionarios(codFunc, nome, email, cpf, telCel)
	values(10, 'Arthur dos Santos Cabral',
	'example@email.com',
	'478.856.875-85',
	'98523-8547');

-- Visualizando os registros nos campos das tabelas
select * from tbUsuarios;
select * from tbFuncionarios;
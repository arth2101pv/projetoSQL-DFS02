-- Apagando banco de dados
drop database dbGabyBolos;

-- Criando banco de Dados
create database dbGabyBolos;

--Acessando o Banco de Dados
use dbGabyBolos;

-- Visualizando as tabelas no banco de dados
show tables;

-- Criando tabelas
create table tbFuncionarios(
codfunc int,
nome varchar(100),
email varchar(100),
telefone char(9)
);

show tables;

desc tbFuncionarios;
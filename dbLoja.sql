-- Apagando banco de dados se existir
drop database dbLoja;

-- Criando banco de dados
create database dbLoja;

-- Acessando banco de dados
use dbLoja;

-- Visualizando bd
show databases;

-- Criando as tabelas no bd
create table tbFuncionarios(
	-- Campos da tabela
	codFunc int not null auto_increment,
	nome varchar(100) not null,
	email varchar(100),
	cpf char(14) not null unique,
	telCel char(10),
	logradouro varchar(100),
	numero char(10),
	cep char(9),
	bairro varchar(100),
	cidade varchar(100),
	estado char(2),
	-- Chaves
	primary key(codFunc)
);


create table tbFornecedores(
	-- Campos da tabela
	codForn int not null auto_increment,
	nome varchar(100),
	email varchar(100),
	cnpj char(16) not null unique,
	primary key(codForn)
);

create table tbClientes(
	-- Campos da tabela
	codCli int not null auto_increment,
	nome varchar(100),
	email varchar(100),
	cpf char(14) not null unique,
	-- Chaves
	primary key(codCli)
);

create table tbUsuarios(
	-- Campos da tabela
	codUsu int auto_increment, 
	nome varchar(50) not null,
	senha varchar(20) not null,
	codFunc int not null,
	-- Chaves
	primary key(codUsu),
	foreign key(codFunc) references tbFuncionarios(codFunc)
);

create table tbProdutos(
	-- Campos da tabela
	codProd int not null auto_increment,
	descricao varchar(100),
	valor decimal(9,2),
	quantidade int,
	data date,
	hora time,
	codForn int not null,
	-- Chaves
	primary key(codProd),
	foreign key(codForn) references tbFornecedores(codForn)
);

create table tbVendas(
	-- Campos da tabela
	codVend int not null auto_increment,
	valor decimal(9,2),
	data date,
	hora time,
	quantidade int,
	codUsu int not null,
	codProd int not null,
	codCli int not null,
	-- Chaves
	primary key(codVend),
	foreign key(codUsu) references tbUsuarios(codUsu), 
	foreign key(codProd) references tbProdutos(codProd) ,
	foreign key(codCli) references tbClientes(codCli)
	);

-- Visualizando as tabelas criadas
show tables;

-- Visualizando as estruturas das tabelas
desc tbFuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;

-- Inserindo valores/registros nas tabelas

insert into tbFuncionarios(nome, email, cpf, telCel, logradouro, numero, cep, bairro, cidade, estado)
	values(
		'Arthur dos Santos Cabral',
		'example@email.com',
		'478.856.875-85',
		'98523-8547',
		'Rua Dr. Antônio Bento',
		'355',
		'4750-000',
		'Santo Amaro',
		'Sao Paulo',
		'SP'
	);

insert into tbFuncionarios(nome, email, cpf, telCel, logradouro, numero, cep, bairro, cidade, estado)
	values(
		'Ana Frios Delgado Matarazzo',
		'ana.fdMatarazzo@hotmail.com',
		'278.857.764-74',
		'92384-4785',
		'Rua Da Alegria',
		'135',
		'04751-000',
		'Santo Amaro',
		'Sao Paulo',
		'SP'
	);

insert into tbUsuarios(nome, senha, codFunc)
	values('arthur.cabral', '1919', 1);
	values('ana.fdmatarazzo', '7484', 2);


-- Visualizando os registros nos campos das tabelas
select * from tbFuncionarios;
select * from tbUsuarios;
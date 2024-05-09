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
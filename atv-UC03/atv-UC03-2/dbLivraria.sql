-- Apagando banco de dados se existir
	drop database dbLivraria;

-- Criando banco de dados
	create database dbLivraria;

-- Acessando banco de dados
	use dbLivraria;

-- Criando as tabelas no bd
	create table tbGenero(
		-- Campos da tabela
		idGenero int not null auto_increment,
		descricao varchar(100),

		-- Chaves
		primary key(idGenero)
	);

	create table tbLivro(
		-- Campos da tabela
		idLivro int not null auto_increment,
		titulo varchar(100),
		preco decimal(9,2),
		estoque int not null,
		idGenero int not null,

		-- Chaves
		primary key(idLivro),
		foreign key(idGenero) references tbGenero(idGenero)
	);

	create table tbAutor(
		-- Campos da tabela
		idAutor int not null auto_increment,
		nome varchar(100),
		email varchar(100) unique,

		-- Chaves
		primary key(idAutor)
	);

	create table tbEscreve(
		-- Campos da tabela
		idLivro int not null,
		idAutor int not null,

		-- Chaves
		foreign key(idLivro) references tbLivro(idLivro),
		foreign key(idAutor) references tbAutor(idAutor)
	);

	create table tbCliente(
		-- Campos da tabela
		idCliente int not null auto_increment,
		nome varchar(100),
		telefone varchar(45) unique,

		-- Chaves
		primary key(idCliente)
	);

	create table tbVenda(
		-- Campos da tabela
		idVenda int not null auto_increment,
		data date,
		total float,
		idCliente int not null,

		-- Chaves
		primary key(idVenda),
		foreign key(idCliente) references tbCliente(idCliente)
	);

	create table tbItens_da_venda(
		-- Campos da tabela
		idVenda int not null,
		idlivro int not null,
		qtd int not null,
		subtotal decimal(9,2),

		-- Chaves
		foreign key(idVenda) references tbVenda(idVenda),
		foreign key(idLivro) references tbLivro(idLivro)
	);


-- Visualizando as tabelas criadas
	show tables;

-- Visualizando as estruturas das tabelas
	desc tbGenero;
	desc tbAutor;
	desc tbCliente;
	desc tbLivro;
	desc tbEscreve;
	desc tbVenda;
	desc tbItens_da_venda;
-- Apagando banco de dados se existir
drop database dbAtv;

-- Criando banco de dados
create database dbAtv;

-- Acessando banco de dados
use dbAtv;

-- Criando as tabelas no bd
create table tbMedico(
	-- Campos da tabela
    idMedico int not null auto_increment,
    nmMedico varchar(45),
    telefoneMedico varchar(9),

	-- Chaves
    primary key(idMedico)
);

create table tbReceitaMedica(
    -- Campos da tabela
    idReceitaMedica int not null auto_increment,
    descricao varchar(500),

	-- Chaves
    primary key(idReceitaMedica)
);

create table tbPaciente(
    -- Campos da tabela
    idPaciente int not null auto_increment,
    nmPaciente varchar(45),
    telefonePaciente varchar(9),
    convenio varchar(45),

	-- Chaves
    primary key(idPaciente)
);

create table tbConsulta(
    -- Campos da tabela
    idConsulta int not null auto_increment,
    dt_consulta datetime,
    idMedico int not null,
    idPaciente int not null,
    idReceitaMedica int not null,

	-- Chaves
    primary key(idConsulta),
    foreign key(idMedico) references tbMedico(idMedico),
    foreign key(idReceitaMedica) references tbReceitaMedica(idReceitaMedica),
    foreign key(idPaciente) references tbPaciente(idPaciente)
);

-- Visualizando as tabelas criadas
show tables;

-- Visualizando as estruturas das tabelas
desc tbMedico;
desc tbReceitaMedica;
desc tbPaciente;
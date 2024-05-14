-- Apagando banco de dados existentes
drop database dbCosultorio;

-- Criando banco de dados
create database dbCosultorio;

-- Acessando banco de dados
use dbCosultorio;

-- Criando as tabelas no banco de dados
create table tbMedico(
    idMedico int not null auto_increment,
    nmMedico varchar(100),
    telefoneMedico char(9) unique,

    primary key(idMedico)
);

create table tbPaciente(
    idPaciente int not null auto_increment,
    nmPaciente varchar(45),
    telefonePaciente char(9) unique,
    convenio varchar(100),

    primary key(idPaciente)
);

create table tbReceitaMedica(
    idReceitaMedica int not null auto_increment,
    descricao varchar(100),

    primary key(idReceitaMedica)
);

create table tbConsulta(
    idConsulta int not null auto_increment,
    dt_consulta datetime,
    idMedico int not null,
    idPaciente int not null,
    idReceitaMedica int not null,

    primary key(idConsulta),
    foreign key(idMedico) references tbMedico(idMedico),
    foreign key(idReceitaMedica) references tbReceitaMedica(idReceitaMedica),
    foreign key(idPaciente) references tbPaciente(idPaciente)
);

desc tbMedico;
desc tbReceitaMedica;
desc tbPaciente;
desc tbConsulta;
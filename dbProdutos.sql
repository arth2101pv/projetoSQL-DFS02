drop database dbProdutos;

create database dbProdutos;

use dbProdutos

create table tbProdutos
(
 codigo int,
 nome varchar(50),
 tipo varchar(25),
 quantidade int,
 valor decimal(10,2)
);

insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 1,
'IMPRESSORA', 'INFORMATICA', 200, 600.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 2,
'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 3, 'DVDPLAYER', 'ELETRONICOS', 250, 500.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 4,
'MONITOR', 'INFORMATICA', 400, 900.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 5,
'TELEVISOR', 'ELETRONICOS', 350, 650.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 6,
'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 7,
'CELULAR', 'TELEFONE', 450, 850.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 8,
'TECLADO', 'INFORMATICA', 300, 450.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 9,
'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 );
insert into tbProdutos ( codigo, nome, tipo, quantidade, valor ) values ( 10,
'MOUSE', 'INFORMATICA', 400, 60.00 );

desc tbProdutos;

select * from tbProdutos;
select distinct tipo from tbProdutos;
select * from tbProdutos where tipo = 'INFORMATICA';
select distinct tipo from tbProdutos order by tipo;

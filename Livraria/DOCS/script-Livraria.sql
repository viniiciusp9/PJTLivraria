create database db_Livraria
go

use db_Livraria
go

create table tb_Usuarios(
	id_usuarios int identity primary key,
	nome varchar (50) NOT NULL,
	sobrenome varchar (50) NOT NULL,
	email varchar (100) not null,
	nome_usuario varchar (10) not null,
	senha varchar(10) NOT NULL,
	data_cadastro datetime default getdate()
)
GO

create table tb_Logins(
	id_login int identity primary key,
	id_usuario int,
	data_login datetime
)
GO

INSERT INTO tb_Usuarios (nome, sobrenome, email, nome_usuario, senha)
VALUES ('Juca', 'Chaves', 'jucachaves@gmail.com', 'JUCACHAVES', '77572817')

create table tb_Produtos(
	id_produtos int identity primary key,
	nome varchar (100) NOT NULL,
	tipo varchar (30) NOT NULL,
	quantidade int,
	preco_compra decimal(9,2) NOT NULL,
	preco_venda decimal (9,2) NOT NULL,
	data_cadastro datetime default getdate()
)
GO

INSERT INTO tb_Produtos(nome, tipo, quantidade, preco_compra,preco_venda)
VALUES('O Hobbit', 'livro', 5 , 30.50, 42.75)
GO

SELECT * FROM tb_Usuarios
select * from tb_Produtos
GO



--Create table - Sintaxe da criação de uma tabela, instaciando uma chave primaria 
--SINTAXE BASICA: 
--CREATE TABLE nomeTabela(
--	nomecoluna1 tipoDeDado restricaoColuna(PRIMARY KEY), 
--	nomecoluna2 tipoDeDado restricaoColuna,
--	nomecoluna3 tipoDeDado restricaoColuna,
-- )

--Criação do DataBase
CREATE DATABASE YouTube;

--Instanciar o DATABASE que será utilizado
USE YouTube;
USE AdventureWorks2017

--Criação de uma nova tabela neste DATABASE
CREATE TABLE Canal7 (
	canal_ID INT PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	contagem_Inscritos INT DEFAULT 0,
	data_Criacao DATETIME NOT NULL
);

--Retornar a TABLE criada
SELECT * FROM Canal7

--Deletar DATABASE e TABLE criada
DROP TABLE Canal
DROP DATABASE YouTube

--Comando para retornar todas as tabelas do DATABASE
SELECT * FROM INFORMATION_SCHEMA.TABLES 

--Comando para retornar todas as colunas do DATABASE
SELECT * FROM INFORMATION_SCHEMA.Columns 

--Criação de TABLE com PRIMARY KEY e FOREIGN KEY
--Referencia CÍCLICA: Recurso de auto-sugestão do SQL invocado incorretamente, atraves de uma escrita de linha de código
CREATE TABLE Video (
	video_ID INT PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	visualizacoes INT NOT NULL,
	likes INT DEFAULT 0,
	dislikes INT DEFAULT 0,
	duracao INT NOT NULL,
	canal_ID INT FOREIGN KEY REFERENCES Canal7(canal_ID)
)

--Retorno das duas tabelas, com a inclusão da PK e FK
SELECT * FROM Canal7
SELECT * FROM Video


--Criar tabela e popular na mesma
--Os números de ID seram salvos consequentemente, independente de sua exclusão na lista

CREATE TABLE Categories (
	category_ID INT IDENTITY(1,1) NOT NULL,
	category_Name VARCHAR(15) NOT NULL,
	description_Name NTEXT NOT NULL,
	picture IMAGE NULL,
	constraint PK_Categories PRIMARY KEY CLUSTERED
	(
		category_ID
	)
)

--Retornar a tabela 
SELECT * FROM Categories

--PREENCHENDO AS COLUNAS DESSA TABELA
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('Esporte', 'Futebol', NULL)
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('Música', 'MPB', NULL)
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('Filme', 'Ação', NULL)
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('Culinária', 'Doces', NULL)
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('Notícias', 'São Paulo', NULL)
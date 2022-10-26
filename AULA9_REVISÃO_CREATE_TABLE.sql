--Create table - Sintaxe da cria��o de uma tabela, instaciando uma chave primaria 
--SINTAXE BASICA: 
--CREATE TABLE nomeTabela(
--	nomecoluna1 tipoDeDado restricaoColuna(PRIMARY KEY), 
--	nomecoluna2 tipoDeDado restricaoColuna,
--	nomecoluna3 tipoDeDado restricaoColuna,
-- )

--Cria��o do DataBase
CREATE DATABASE YouTube;

--Instanciar o DATABASE que ser� utilizado
USE YouTube;
USE AdventureWorks2017

--Cria��o de uma nova tabela neste DATABASE
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

--Cria��o de TABLE com PRIMARY KEY e FOREIGN KEY
--Referencia C�CLICA: Recurso de auto-sugest�o do SQL invocado incorretamente, atraves de uma escrita de linha de c�digo
CREATE TABLE Video (
	video_ID INT PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	visualizacoes INT NOT NULL,
	likes INT DEFAULT 0,
	dislikes INT DEFAULT 0,
	duracao INT NOT NULL,
	canal_ID INT FOREIGN KEY REFERENCES Canal7(canal_ID)
)

--Retorno das duas tabelas, com a inclus�o da PK e FK
SELECT * FROM Canal7
SELECT * FROM Video


--Criar tabela e popular na mesma
--Os n�meros de ID seram salvos consequentemente, independente de sua exclus�o na lista

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
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('M�sica', 'MPB', NULL)
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('Filme', 'A��o', NULL)
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('Culin�ria', 'Doces', NULL)
INSERT "Categories" ("category_Name","description_Name", "picture") VALUES ('Not�cias', 'S�o Paulo', NULL)
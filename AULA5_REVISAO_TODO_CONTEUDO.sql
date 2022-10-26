--REVISÃO DO CONTEÚDO

--Retornar quantos produtos temos cadastrados que custam mais 1500$
SELECT * FROM Production.Product;
SELECT COUNT(ListPrice) FROM Production.Product WHERE ListPrice > 1500;

--Retornar quantas pessoas possuem o sobrenome que inicia com a letra "P"
SELECT * FROM Person.Person;
SELECT COUNT(LastName) FROM Person.Person WHERE LastName LIKE 'p%';

--Retornar em quantas cidades estão cadastradas os clientes
SELECT * FROM Person.Address;
SELECT COUNT(DISTINCT (City)) FROM Person.Address;
SELECT DISTINCT (City) FROM Person.Address;

--Retornar quantos produtos vermelhos contém preços de 500$ a 1000$
SELECT * FROM Production.Product;
SELECT COUNT(*) FROM Production.Product WHERE Color = 'red' AND ListPrice BETWEEN 500 AND 1000;

--Retornar os produtos cadastrados que contém o atributo 'ROAD' no meio deles
SELECT * FROM Production.Product;
SELECT COUNT(*) FROM Production.Product WHERE Name LIKE '%road%';

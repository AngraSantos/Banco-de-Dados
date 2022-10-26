--Count (Contagem) - Retorna a contagem que foi definida na condição
--SINTAXE BASICA: SELECT COUNT(coluna1) FROM tabelaNome;

--Retornar a contagem geral da tabela de pessoas:
SELECT * FROM Person.Person;
SELECT COUNT(*) FROM Person.Person;

--Retornar a contagem total de uma coluna da tabela de pessoas
SELECT COUNT (firstName) FROM Person.Person;
SELECT COUNT (lastName) FROM Person.Person;

--Retornar filtro de uma contagem sem registros duplicados (DISTINCT)
SELECT COUNT (DISTINCT firstName) FROM Person.Person;
SELECT COUNT (DISTINCT lastName) FROM Person.Person;

--Retornar quantos tamanhos de produtos temos cadastrados na tabela de produtos
SELECT * FROM Production.Product;
SELECT COUNT (*) FROM Production.Product;
SELECT COUNT (size) FROM Production.Product;

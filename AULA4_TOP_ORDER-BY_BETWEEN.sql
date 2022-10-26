--TOP: Filtrar e limitar a quantidade de dados retornado pelo SELECT 
--SINTAXE BÁSICA: SELECT TOP 10 * FROM Production.Product; 

SELECT TOP 50 * FROM Production.Product; 

--ORDER BY: Ordenar o resultado de um SELECT
--SINTAXE BÁSICA: SELECT coluna1, coluna2 FROM tabelaNome ORDER BY colunaName ASC;

SELECT Name, ProductNumber FROM Production.Product ORDER BY Name ASC;

--Extrair da tabela Person.Person os resultados de firstName ordenado de forma ASC
SELECT FirstName FROM Person.Person ORDER BY FirstName ASC;
SELECT * FROM Person.Person ORDER BY LastName ASC;

--Extrair uma busca ordenada de nome e sobrenome
SELECT * FROM Person.Person ORDER BY FirstName, LastName ASC;
SELECT FirstName, LastName FROM Person.Person ORDER BY FirstName ASC, LastName ASC;

--Extrair os 10 produtos mais caros da tabela Production.Product
SELECT TOP 10 ProductID, ListPrice FROM Production.Product ORDER BY ListPrice DESC;

--Extrair da tabela de produtos o nome e o numero do produto que possui o ProductID de 1 a 4
SELECT TOP 4 Name, ProductNumber FROM Production.Product;

--Extrair da tabela de produtos o nome e o numero do produto que possui o ProductID entre 10 e 20
SELECT * FROM  Production.Product WHERE ProductID BETWEEN 300 AND 320;

--Extrair a quantidade de produtos que custam 1000 e 1500
SELECT * FROM  Production.Product WHERE ListPrice BETWEEN 1000 AND 1500;
SELECT * FROM  Production.Product WHERE ListPrice NOT BETWEEN 1000 AND 1500;

--Retornar a quantidade de pessoas que foram contratadas entre 2009 e 2010
SELECT * FROM HumanResources.Employee;
SELECT * FROM  HumanResources.Employee WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01' ORDER BY HireDate ASC;
--GROUP BY: Divide o resultado da sua pesquisa em grupos;
--Para cada grupo, voc� pode precisar agregar os dados como por exemplo:
--Calcular a soma de itens
--Calcular o numero de itens naquele grupo
--Sintaxe basica: SELECT coluna1, funcaoDeAgregacao(coluna2) FROM nomeTabela GROUP BY coluna1

SELECT * FROM Sales.SalesOrderDetail;

--Agrupar os registros do ID oferta especial e seu pre�o unit�rio
SELECT SpecialOfferID, SUM(UnitPrice) FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID;

--Refazendo a query anterior aplicando um alias na coluna do resultado
SELECT SpecialOfferID, SUM(UnitPrice) AS "UnitPrice" FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID;

--Refazendo a query anterior sem GROUP BY
SELECT SpecialOfferID, UnitPrice FROM Sales.SalesOrderDetail WHERE SpecialOfferID = 1;

--Consultar quantos, de cada produto por ID, foi vendido at� hoje;
SELECT ProductID, COUNT(ProductID) FROM Sales.SalesOrderDetail GROUP BY ProductID; 
SELECT ProductID, COUNT(ProductID) AS "Quantidade de Produtos" FROM Sales.SalesOrderDetail GROUP BY ProductID; 

--Consultar quantos nomes, de cada nome temos cadastrados em nosso BD
SELECT * FROM Person.Person;
SELECT FirstName, COUNT(FirstName) AS "Quantidade de Nomes" FROM Person.Person GROUP BY FirstName; 

--Consultar a m�dia de pre�o para os produtos por cor
SELECT * FROM Production.Product; 
SELECT color, AVG(ListPrice) AS "Quantidade por cor" FROM Production.Product GROUP BY Color;

--Consultar a m�dia de pre�o de produtos por uma cor espec�fica
SELECT color, AVG(ListPrice) AS "Quantidade por Cor" FROM Production.Product WHERE Color = 'Blue' GROUP BY Color;

--Quais foram as 10 vendas, onde no total tiveram os maiores valores de vendas por produto, em ordem DESC
SELECT * FROM Sales.SalesOrderDetail;
SELECT TOP 10 ProductID, SUM(LineTotal) AS "Quantidades de Valores Totais" FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY SUM(LineTotal) DESC ;

--Consultar quantos produtos e qual a quantidade m�dia de produtos temos cadastrados na ordem de servi�o
SELECT * FROM Production.WorkOrder;
SELECT ProductID, COUNT(ProductID) AS "Quantidade de Produtos", AVG(OrderQty) AS "Quantidade de Ordem Produtos" FROM Production.WorkOrder GROUP BY ProductID; 

--HAVING: Usado em jun��o com GROUP BY para filtrar resultados de um agrupamento.(Ele � basicamente um WHERE para os dados agrupados)
--SINTAXE BASICA: SELECT coluna1, funcaoDeAgregacao(coluna2) FROM nomeTabela GROUP BY coluna1 HAVING condi��o;

--Consultar quais nomes no sistema tem uma ocorrencia maior de 50X
SELECT firstName, COUNT(firstName) AS "Quantidade de Repeti��o" FROM Person.Person GROUP BY FirstName 
HAVING COUNT(FirstName) > 50 ORDER BY [Quantidade de Repeti��o] ASC;

--Consultar quais produtos que no total de vendas est�o entre 162k e 500k
SELECT * FROM Sales.SalesOrderDetail;

SELECT ProductID, SUM(ProductID) AS "Soma dos Produtos" FROM Sales.SalesOrderDetail GROUP BY ProductID 
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000 ORDER BY [Soma dos Produtos] ASC;
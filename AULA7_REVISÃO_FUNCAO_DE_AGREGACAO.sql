--Exemplos de COUNT e SUM 
--Sintaxe basica: SELECT coluna1, funcaoDeAgregacao(coluna2) FROM nomeTabela GROUP BY coluna1
--GROUP BY: Resultados que envolve mais de uma coluna.

--Agrupar registros do ID da oferta especial e o preço unitário. Dica para o exercicio a tabela Sales.SalesOrderDetail
SELECT * FROM Sales.SalesOrderDetail;
SELECT SpecialOfferID, SUM(UnitPrice) FROM Sales.SalesOrderDetail GROUP BY SpecialOfferID;
SELECT SpecialOfferID, UnitPrice FROM Sales.SalesOrderDetail WHERE SpecialOfferID = 4;

--Consultar quantas pessoas tem o mesmo MiddleName, agrupadas pelo MiddleName. Dica: Tabela Person.Person
SELECT * FROM Person.Person;
SELECT MiddleName, COUNT(MiddleName) AS "Quantidades de Repetição" FROM Person.Person GROUP BY MiddleName;

--Consultar quais foram as 10 vendas que no total tiveram os maiores valores de vendas por produto. Dica: A tabela Sales.SalesOrderDetail
SELECT * FROM Sales.SalesOrderDetail;
SELECT TOP 10 ProductID, SUM(LineTotal) AS "Soma do total de vendas"  FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY SUM(LineTotal) DESC;
SELECT TOP 10 ProductID, SUM(LineTotal) AS "Soma do total de vendas" FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY SUM(LineTotal) ASC;

--Consultar quais foram as 10 vendas que no total tiveram os maiores valores de vendas por produto. Dica: A tabela Sales.SalesOrderDetail
--Consultar quais foram os 10 produtos que tiveram o maior preço

--LIÇÃO DE CASA
--Consultar quantos produtos e qual a quantidade média de produtos na ordem de serviço. Dica: Tabela Production.WorkOrder
SELECT * FROM Production.WorkOrder;
SELECT ProductID, COUNT(ProductID) AS "Quantidade de Produto" FROM Production.WorkOrder GROUP BY ProductID ORDER BY AVG(WorkOrderID)

--Consultar quais nomes no sistema tem ocorrencia maior que 10x. Dica: Tabela Person.Person. 
SELECT * FROM Person.Person;
SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE DE OCORRENCIA" FROM Person.Person GROUP BY FirstName HAVING COUNT(FirstName) > 10;
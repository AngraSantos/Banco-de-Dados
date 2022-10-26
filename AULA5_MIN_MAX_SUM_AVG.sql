--MIN, MAX, SUM, AVG - S�o fun��es de agrega��o: Minimo, Maximo, Soma e M�dia. 
--Agregam ou combinam dados de uma tabela em um resultado �nico.

--Retornar a tabela de vendas
SELECT * FROM Sales.SalesOrderDetail;

--Retornar o total geral de todas as vendas 
SELECT ALL SUM (lineTotal) FROM Sales.SalesOrderDetail;
SELECT TOP 10 SUM (lineTotal) AS "Valor da Soma" FROM Sales.SalesOrderDetail;

--Retornar o menor valor do total geral das vendas 
SELECT TOP 10 MIN (lineTotal) AS "Valor Min�mo" FROM Sales.SalesOrderDetail;

--Retornar o valor maximo do total geral das vendas 
SELECT TOP 10 MAX (lineTotal) AS "Valor M�ximo" FROM Sales.SalesOrderDetail;

--Retornar o valor da m�dia do total geral das vendas
SELECT TOP 10 AVG (lineTotal) AS "Valor da M�dia" FROM Sales.SalesOrderDetail;
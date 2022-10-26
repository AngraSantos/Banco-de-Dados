--MIN, MAX, SUM, AVG - São funções de agregação: Minimo, Maximo, Soma e Média. 
--Agregam ou combinam dados de uma tabela em um resultado único.

--Retornar a tabela de vendas
SELECT * FROM Sales.SalesOrderDetail;

--Retornar o total geral de todas as vendas 
SELECT ALL SUM (lineTotal) FROM Sales.SalesOrderDetail;
SELECT TOP 10 SUM (lineTotal) AS "Valor da Soma" FROM Sales.SalesOrderDetail;

--Retornar o menor valor do total geral das vendas 
SELECT TOP 10 MIN (lineTotal) AS "Valor Minímo" FROM Sales.SalesOrderDetail;

--Retornar o valor maximo do total geral das vendas 
SELECT TOP 10 MAX (lineTotal) AS "Valor Máximo" FROM Sales.SalesOrderDetail;

--Retornar o valor da média do total geral das vendas
SELECT TOP 10 AVG (lineTotal) AS "Valor da Média" FROM Sales.SalesOrderDetail;
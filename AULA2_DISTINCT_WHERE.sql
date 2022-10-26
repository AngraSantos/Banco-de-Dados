--DISTINCT: É utilizado para omitir dados duplicados de uma tabela. É utilizado junto com o SELECT, conforme sintaxe a seguir:
--SELECT DISTINCT coluna1, coluna2 FROM tabelaNome;

--Somente SELECT
SELECT firstName FROM Person.Person;
SELECT lastName FROM Person.Person;

--Usando o DISTINCT
SELECT DISTINCT firstName FROM Person.Person;
SELECT DISTINCT lastName FROM Person.Person;
SELECT DISTINCT firstName, lastName FROM Person.Person;

--WHERE: Retorna apenas alguns dados em particular de uma tabela. É um filtro de informações.
--SINTAXE BASICA: SELECT coluna1, coluna2 FROM tabelaName WHERE condicao;

--No caso de extrair o resultado usando o WHERE para filtro de um valor especifico, 
--chamar primeiro a tabela e depois o filtro especifico usando a coluna e seu valor

--Retornar tabela completa
SELECT * FROM Person.Person;
SELECT TITLE FROM Person.Person; -- solicitando uma coluna de uma tabela

--Retornar todos os dados de pessoas que contém o sobrenome "Miller"
SELECT * FROM Person.Person WHERE LastName = 'Miller';

--Retornar coluna com Sintaxe basica
SELECT firstName FROM Person.Person WHERE LastName = 'Miller';

--Retornar tabela Person, tudo que tiver o sobrenome 'Miller' e tudo que tiver o Nome 'Anna'
SELECT * FROM Person.Person WHERE LastName = 'Miller' and FirstName = 'Anna';

--Retornar da tabela de Produtos, todos os produtos com a cor 'Preta' e 'Azul'
SELECT * FROM Production.Product;
SELECT * FROM Production.Product WHERE Color = 'Black' or Color = 'Blue';

--Retornar da tabela de Produtos, todos os produtos que custam menos que 1500$
SELECT * FROM Production.Product WHERE ListPrice < 1500;

--Retornar da tabela de Produtos, uma range de todos os produtos que custam entre $1500 a $5000
SELECT * FROM Production.Product WHERE ListPrice > 1500 and ListPrice < 5000;

--Retornar da tabela de produtos, todos os produtos diferentes da cor vermelha
SELECT * FROM Production.Product WHERE Color <> 'Red';
SELECT * FROM Production.Product WHERE Color <> 'Red' and Color <> 'Black' ;
SELECT * FROM Person.Person WHERE LastName <> 'Miller';


---------------------------------------
--OBJETOS DE CONJUÇÃO EM UMA QUERY
--Os resultados extraidos podem estar tanto para um quanto para outro, é utilizado o objeto AND (duas variaveis)
--Os resultados extraidos por independencia para cada uma das variaveis, é utilizado o objeto OR


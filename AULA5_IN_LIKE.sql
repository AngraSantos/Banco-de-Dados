--IN: Utiliza-se junto com WHERE para verificar se um valor corresponde com qualquer valor declarado na lista
--SINTAXE BASICA: SELECT nomeColuna WHERE nomeTabela IN valorQualquer;
--Retornar as pessoas com BusinessID entre 2, 7 e 13: 
SELECT * FROM Person.Person WHERE BusinessEntityID IN (2,7,13);

--Em caso de não utilizar o IN a query acima ficaria assim:
SELECT * FROM Person.Person WHERE BusinessEntityID = 2 or BusinessEntityID = 7 or BusinessEntityID = 13;

--Pessoas que estão fora do range 2,7 e 13:
SELECT * FROM Person.Person WHERE BusinessEntityID NOT IN (2,7,13);

--LIKE para trazer os resultados complementares mediante a algum parametro inicial
--SINTAXE BASICA: SELECT nomeColuna WHERE nomeTabela LIKE 'Mary';
--Retornar nome da pessoa que contém a inicial 'OVI':
SELECT * FROM Person.Person WHERE FirstName LIKE 'ovi%';

--Retornar o nome da pessoa cujo parametro terminam com 'TO'
SELECT * FROM Person.Person WHERE FirstName LIKE '%to';

--Retornar o nome da pessoa cujo parametro 'ESSA' está no meio
SELECT * FROM Person.Person WHERE FirstName LIKE '%essa%';

--Retornar tudo que vem antes do 'RO'
SELECT * FROM Person.Person WHERE FirstName LIKE '%ro_';
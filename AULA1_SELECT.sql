--SELECT: Busca em cima de dados já tabelados. Permite retornar uma ou mais colunas de uma tabela.
--SINTAXE BASICA: SELECT coluna1, coluna2 FROM tabelaNome;

-- Inicio das queries --
SELECT * FROM Person.Person; -- solicitando a tabela 
SELECT * FROM Person.EmailAddress; -- solicitando a tabela
SELECT TITLE FROM Person.Person; -- solicitando uma coluna de uma tabela

--Deve retornar os nomes e sobrenomes dos clientes
SELECT firstName, lastName FROM Person.Person;

-------------------------------------

-- Sempre abrir uma Nova Query de consulta a partir do icone do BD da arvore do projeto que esta sendo usado.

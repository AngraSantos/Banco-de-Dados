--INNER JOIN: É uma função que concatena uma informação de uma tabela com uma informação de outra tabela
--SINTAXE BASICA: EX.: Consultar uma informação na tabela cliente que não está na tabela cliente (tabelaEndereco)
--Existe um relacionamento na consulta acima entre cliente X endereço: Endereço/cliente = manyToOne; cliente/endereço = oneToMany; 
--Na linha acima foi dado o ex. de um mapeamento relacional
--Na tabela cliene temos o ID, o nome e o endereçoID (Apenas o ID do endereço)
--Na tabela endereço temos de falto a informação completa do endereço(Logradouro, numero, complemento, cidade, etc..)
--Para concatenar as informações das tabelas é necessário observar a PrimaryKey de uma tabela com ForeignKey
--PrimaryKey: é a coluna que identifica uma tabela
--ForeignKey: é a coluna de referência para a sua tabela de origem

--Consultar o BusinessEntityID, FirstName, LastName e EmailAddress de um cliente
--Primeiro Passo: O que tem nas duas tabelas que podem ser usadas para extrair uma consulta;
SELECT TOP 10 * FROM Person.Person;
SELECT TOP 10 * FROM Person.EmailAddress;

--Selecionar as colunas da primeira tabela + coluna da segunda tabela
SELECT P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress 
--Extrair a informação da primeira tabela
FROM Person.Person AS P 
--A informação da segunda (Junção) tabela chamando pela coluna em comum entre elas e ordenando em forma crescente
INNER JOIN Person.EmailAddress PE ON P.BusinessEntityID = PE.BusinessEntityID ORDER BY P.BusinessEntityID ASC;

--Consultar os nomes dos produto, o preço de cada um e as subCategoria. Dica: as tabelas production.product e production.productSubCategory
SELECT TOP 10 * FROM Production.Product;
SELECT TOP 10 * FROM Production.ProductSubCategory;

SELECT P.Name, PE.Name, P.ListPrice
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory PE ON P.ProductSubcategoryID = PE.ProductSubcategoryID 

--LIÇÃO DE CASA
--Consultar o BusinessEntityID, Name, PhoneNumberTypeID, PhoneNumber. Dica: Tabelas Person.PhoneNumberType e Person.PersonPhone.
SELECT TOP 10 * FROM Person.PhoneNumberType;
SELECT TOP 10 * FROM Person.PersonPhone;
SELECT P.Name, PE.PhoneNumber, PE.BusinessEntityID, PE.PhoneNumberTypeID
FROM Person.PhoneNumberType AS P
INNER JOIN Person.PersonPhone PE ON P.PhoneNumberTypeID = PE.PhoneNumberTypeID

--Consultar e Retornar o ID do endereço, as cidades, o ID do estado e nome do estado. Dica: tabelas Person.StateProvince e Person.Address
SELECT TOP 10 * FROM Person.StateProvince;
SELECT TOP 10 * FROM Person.Address;
SELECT P.StateProvinceID, PE.City, PE.AddressID, P.Name
FROM Person.StateProvince AS P
INNER JOIN Person.Address PE ON P.StateProvinceID = PE.StateProvinceID;
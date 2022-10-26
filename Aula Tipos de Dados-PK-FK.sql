--TIPOS DE DADOS - SQL

--BOOLEANOS
--CARACTERE
--NÚMEROS
--TEMPORAIS

--TIPO BOOLEANO: por padrão, ele é inicializado como nulo, e pode receber tanto 1 ou zero. Normalmente qdo vc quer
--representar o booleano no SQL vc vai usar o tipo BIT

--CARACTERES: 
--Tamanho fixo, CHAR: permite inserir até uma quantidade fixa de caracteres e sempre ocupa todo o espaço
--reservado na memória, independente se vc usa ou não, o limite de até 50 caracteres

--Tamanhos variáveis: varchar ou nvarchar: permite inserir uma quantidade que foi definida, pq só usa o espaço que for
--preenchido (x, de 50 - ocupará apenas os espaços preenchidos na memória)

--NÚMEROS
--Valores exatos: 

--TINYINT: não contempla valores fracionados. apenas inteiros
--SMALLINT: mesmo do anterior, porém limite maior
--INT: mesmo do anterior, porém limite maior
--BIGINT: mesmo do anterior, porém limite maior
--para obter os valores exatos, conferir as tabelas do MSDN da Microsoft
--NUMERIC OU DECIMAL: valores exatos, porém permitem ser fracionados, que tb pode ser especificado a precisão e escala 
--(escala é o número de dígitos na parte fracional ex: NUMERIC 5,2 - precisão e escala) 

--Valores Aproximados:
--REAL: tem precisão aproximada de até 15 dígitos
--FLOAT: mesmo conceito do REAL

--Valores Temporais
--DATE: armazena a data no formato aaaa/mm/dd
--DATETIME: armazena datas e horas no formato aaaa/mm/dd:hh:mm:ss
--DATETIME2: data e horas com adição de milisegundos no formato aaaa/mm/dd:hh:mm:ssssss
--SMALLDATETIME: data e hora respeitando o limite entre '1900-01-01:00:00:00' até '2079-06-06:23:59:59'
--TIME: armazena horas, minutos, segundos e milisegundos respeitando o limite de '00:00:00.000000000' to
--23:59:59.9999999999
--DATETIMEOFFSET: permite armazenar informações de data e horas, incluindo o fuso horário local

--CHAVE PRIMÁRIA E CHAVE ESTRANGEIRA

--Chave Primária
--é basicamente uma coluna ou grupo de colunas, usada para identificar unicamente uma linha em uma tabela
--é possível criar as chaves primárias através de restrições(constraints), que são regras definidas qdo vc está
--criando uma coluna
--qdo isso é feito, vc está criando um índice único para aquela coluna ou grupo de colunas

--SINTAXE BÁSICA: 
--CREATE TABLE nomeTabela(
    --nomeColuna tipoDeDados PRIMARY KEY
    --nomeColuna tipoDeDados
--)

--Chave estrangeira
--é uma coluna ou grupo de colunas em uma tabela que identifica unicamente uma linha em outra tabela
--é definida em uma tabela onde ela é apenas uma referência
--conceitualmernte, uma chave estrangeira é uma coluna ou um grupo de colunas que é uma chave primária em uma outra tabela
--a tabela que contém uma chave estrangeira é chamada de tabela referenciadora, ou tabela filho.
--a tabela na qual a chave estrangeira é referenciada á chamada de tabela referenciada ou tabela pai
--uma tabela pode ter mais de uma chave estrangeira dependendo do seu relacionamento com as outras tabelas

--Exemplo:
--tabela Products:
--coluna ProductID (PK, int, not null)
--coluna CategoryID (FK, int, not null)

--No SQL vc define uma chave estrangeira através de uma Foreign Key Constraint (restrição de chave estrangeira)
--Uma restrição de chave estrangeira indica que os valores em uma coluna ou grupo de colunas na tabela filho correspondam
--aos valores da tabela pai
--entende-se que uma chave estrangeira mantém a integridade referencial

--CREATE TABLE

--SINTAXE BÁSICA:
--CREATE TABLE nomeTabela(
    --nomeColuna1, tipo, restricaoColuna,
    --nomeColuna2, tipo, restricaoColuna,
    --nomeColuna3, tipo, restricaoColuna,
--)

--Principais tipos de restrições que podem ser aplicadas:

--NOT NULL: não permite nulos
--UNIQUE: força que todos os valores em uma coluna sejam diferentes
--PRIMARY KEY: junção de NOT NULL E UNIQUE. por exemplo, gerar os ID's
--FOREIGN KEY: identifica unicamente uma linha em outra tabela
--CHECK: força uma condição específica em uma coluna
--DEFAULT: força um valor padrão qdo nenhum valor é passado

--MÃO NA MASSA:

--Criar banco de dados "Youtube": 
CREATE DATABASE Youtube;

--Criar tabela "Canal": 

CREATE TABLE Canal(
    CanalId INT PRIMARY KEY,
    Nome varchar(150) not null,
    ContagemInscritos int default 0,
    DataCriacao datetime not null

);

--Criar tabela "Video":

CREATE TABLE Video(
    VideoId int PRIMARY KEY,
    Nome varchar(150) not null,
    Visualizacoes int DEFAULT 0,
    Likes INT DEFAULT 0,
    Dislikes INT DEFAULT 0,
    Duracao INT NOT NULL,
    CanalId INT FOREIGN KEY REFERENCES Canal(CanalId)
);
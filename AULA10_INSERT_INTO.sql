--Criar uma nova tabela e acrescentar dados nela de acordo com suas respectivas colunas

CREATE TABLE Departamento(
	departamento_ID INT PRIMARY KEY NOT NULL, --Preenchimento manual
	nomeDepartamento VARCHAR(50) NOT NULL,
	dataCriacao DATE NOT NULL
)

--Alteração tipo de dados das colunas
ALTER TABLE Departamento ALTER COLUMN nomeDepartamento VARCHAR(300) NOT NULL;

--Inserir colunas adicionais
ALTER TABLE Departamento ADD dataCriacao DATE;

CREATE TABLE Funcionario (
	Funcionario_ID INT IDENTITY(1,1), --Preenchimento automatico
	nome_Funcionario VARCHAR(100) NOT NULL,
	cargo_Funcionario VARCHAR(50) NOT NULL,
	departamento_ID INT FOREIGN KEY REFERENCES Departamento(departamento_ID) NOT NULL --colunaPK INT FOREIGN KEY REFERENCES tabelaPK(colunaPK)
)

SELECT * FROM Departamento
INSERT INTO Departamento (departamento_ID, nomeDepartamento) VALUES (2,'DP_Operacional');
INSERT INTO Departamento (departamento_ID, nomeDepartamento) VALUES (3,'DP_Financeiro');


SELECT * FROM Funcionario
INSERT INTO Funcionario (nome_Funcionario,cargo_Funcionario, departamento_ID) VALUES ('Maria', 'Assistente Administrativo', 2)
INSERT INTO Funcionario (nome_Funcionario,cargo_Funcionario, departamento_ID) VALUES ('José', 'Assistente Administrativo', 1)

CREATE TABLE TABELA_ALTERADA(
	ID INT PRIMARY KEY NOT NULL,
	nome VARCHAR(150) NOT NULL UNIQUE, --UNIQUE: Não aceita valores repetidos
	categoria VARCHAR(200) NOT NULL,
	dataCriacao DATETIME NOT NULL 
)

--Alteração do nome da tabela
EXEC sp_RENAME 'TABELA ALTERADA', 'TABELA_ALTERADA';
SELECT * FROM TABELA_ALTERADA;

INSERT INTO TABELA_ALTERADA(ID, nome, categoria, dataCriacao) VALUES (1, 'JOÃO', 'LAZER', GETDATE())

--Apagar informações da tabela
TRUNCATE TABLE TABELA_ALTERADA

--Inserindo restrição de valores
CREATE TABLE Carteira_Motorista(
	ID INT NOT NULL,
	nome VARCHAR(250) NOT NULL,
	idade INT CHECK(idade >= 18)
)

SELECT * FROM Carteira_Motorista

INSERT INTO Carteira_Motorista(ID, nome, idade) VALUES (1,'Maria', 20)
INSERT INTO Carteira_Motorista(ID, nome, idade) VALUES (2, 'João', 15)
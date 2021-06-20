--DDL  CRIACAO DA TABELA PARA EXERCICIOS
USE CURSO;
GO

-- CREATE TABLE EH DDL
CREATE TABLE FUNCIONARIOS
(
  ID int identity(1,1) NOT NULL PRIMARY KEY,-- autoincremento de 1 em 1
  NOME VARCHAR(50) NOT NULL,
  SALARIO DECIMAL(10,2),
  SETOR VARCHAR(30)
);

--DML SELECT
--EXEMPLO SELECT
SELECT�*�FROM���funcionarios;

--EXEMPLO SELECT
SELECT�nome,setor�
FROM���funcionarios;�

--EXEMPLO SELECT
SELECT�nome,setor as depto
FROM���funcionarios;

--DML INSERT
INSERT�INTO funcionarios�VALUES��('Joao',1000,''),�('Jose',2000,''),('Alexandre',3000,'')�;

--OU
INSERT�INTO funcionarios (nome,salario)�VALUES�('Pedro',50000);


--simulando erro
INSERT�INTO funcionarios (nome,salario)�VALUES�('Pedro','erro');

--simulando erro
INSERT�INTO funcionarios (salario)�VALUES�(2500);

--DML UPDATE
UPDATE�funcionarios�SET��salario�=�'1500'�
WHERE��id�=�'1';

--OU Aumento de 50% sobre Sal�rio atual.
UPDATE�funcionarios�SET����salario�=�salario*1.5�
WHERE��id�=�'2';�

--exemplo update com mais de um campo
UPDATE�funcionarios�SET����salario�=�salario*1.5, setor='TI'
WHERE��id�<>�'3';�

--DML DELETE
DELETE�funcionarios�
where id='1';


INSERT�INTO funcionarios (nome,salario)�VALUES�('Edlamary',500000);
SELECT�*�FROM���funcionarios;

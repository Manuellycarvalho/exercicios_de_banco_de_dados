CREATE DATABASE ESCOLA_MARCIA;

USE ESCOLA_MARCIA;

-- Criação da tabela de Professores
CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela de Turmas
CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela de Atividades
CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

--  exercicio 1
INSERT INTO Professor (nome, email, senha) VALUES
("lindomar", "lindomar.batistao@senai.edu.br", "lindo_mar")

-- 2 
INSERT INTO Turma (numero, nome, id_professor) VALUES
("3" , "DS", 2)

-- 3
INSERT INTO Atividade (numero, descricao , id_turma) VALUES
("3" , "Mobile aula 07", 2)

-- exercicio 2
SELECT * FROM Turma
WHERE id_turma = 1

-- exercicio 3
UPDATE Atividade
SET descricao =  "Banco de dados - aula 6"
WHERE id_atividade = 1

-- exercicio 4
DELETE FROM Professor
WHERE id_professor = 1



-- exercicio 6
SELECT * 
FROM Atividade 
WHERE ID_Turma = 1

-- exercicio 7
UPDATE Turma
SET id_professor = 1
WHERE id_turma = 1;


-- exercicio 8
SELECT professor.nome, turma.nome, atividade.descricao, professor.email, turma.numero
FROM Professor
INNER JOIN turma on professor.id_professor = turma.id_professor
INNER JOIN atividade on atividade.id_turma = turma.id_turma

-- exercicio 9
SELECT professor.nome, atividade.descricao
FROM professor
INNER JOIN Turma on professor.id_professor = turma.id_professor
INNER JOIN atividade on atividade.id_turma = turma.id_turma









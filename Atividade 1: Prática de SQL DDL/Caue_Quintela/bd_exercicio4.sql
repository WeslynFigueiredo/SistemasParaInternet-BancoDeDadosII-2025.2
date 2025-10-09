# EXERCÍCIO 4: Academia de Ginástica

CREATE DATABASE academia_ginastica;

USE academia_ginastica;

CREATE TABLE alunos (
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(50) UNIQUE ,
    ativo BOOLEAN DEFAULT TRUE
);
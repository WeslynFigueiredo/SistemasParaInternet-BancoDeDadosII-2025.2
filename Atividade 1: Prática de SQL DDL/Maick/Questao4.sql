CREATE DATABASE academia_ginastica;

USE academia_ginastica;

CREATE TABLE alunos (
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(50) UNIQUE,
    ativo TINYINT(1) DEFAULT 1
);

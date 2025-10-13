# Questão 2
CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE livros (
	id_livro INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    isbn VARCHAR(20) UNIQUE NOT NULL
    );



CREATE DATABASE sistema_de_biblioteca;

USE sistema_de_biblioteca;

CREATE TABLE livros (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    isbn VARCHAR(20) NOT NULL UNIQUE
);

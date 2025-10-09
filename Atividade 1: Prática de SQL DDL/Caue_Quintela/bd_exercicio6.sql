# Exercício 6: Blog de Notícias 

CREATE DATABASE blog_noticias;

USE blog_noticias;

CREATE TABLE autores (
	id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE posts (
	id_post INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    conteudo TEXT NOT NULL,
    data_publicacao TIMESTAMP NOT NULL,
    FOREIGN  KEY (id_autor) REFERENCES autores(id_autor)
    );
    
    

# CREATE (DATABASE) OU (TABLE)

CREATE DATABASE loja_roupas;

USE loja_roupas;

CREATE TABLE produtos (
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descriao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
    );

 

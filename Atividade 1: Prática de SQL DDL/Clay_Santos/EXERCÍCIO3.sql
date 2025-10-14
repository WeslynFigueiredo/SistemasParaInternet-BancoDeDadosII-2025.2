CREATE DATABASE projetos;

USE projetos;

CREATE TABLE projetos (
	id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100) NOT NULL,
    data_inicio DATE, 
    data_fim DATE
    );

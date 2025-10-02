# Exercício 3: Gestão de Projeto

CREATE DATABASE gestao_projetos;

USE gestao_projetos;

CREATE TABLE Projetos (
	id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100) NOT NULL,
    data_inicio DATE,
    data_fim DATE
);
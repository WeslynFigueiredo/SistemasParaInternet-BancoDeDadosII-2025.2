CREATE DATABASE sistema_rh;

USE sistema_rh;

CREATE TABLE departamentos (
	id_departamento INT AUTO_INCREMENT PRIMARY KEY,
	nome_departamento VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE funcionarios (
	id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_contratacao DATE NOT NULL,
    salario DECIMAL(10,2) NOT NULL CHECK (salario >= 0),
    id_departamento int,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

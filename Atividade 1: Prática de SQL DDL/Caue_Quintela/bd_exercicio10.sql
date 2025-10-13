-- Exercício 10 Sistema de RH

CREATE DATABASE sistema_rh;

USE sistema_rh;

CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_contratacao DATE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL CHECK (salario >= 0),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

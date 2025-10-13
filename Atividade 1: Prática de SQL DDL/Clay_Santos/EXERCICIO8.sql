create database Clinica_Medica;
use clinica_Medica;
create table pacientes (
id_paciente int primary key auto_increment,
Nome varchar (100) not null,
cpf varchar (11) unique not null,
data_de_nascimento date);

create table Medico (
crm varchar (15) primary key,
nome varchar(100) not null,
especialidade varchar (50));
CREATE DATABASE Clinica_Medica;
USE Clinica_Medica;

CREATE TABLE pacientes (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_de_nascimento DATE
);

CREATE TABLE medico (
    crm VARCHAR(15) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50)
);

CREATE TABLE consultas (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT,
    crm_medico VARCHAR(15),
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (crm_medico) REFERENCES medico(crm)
);

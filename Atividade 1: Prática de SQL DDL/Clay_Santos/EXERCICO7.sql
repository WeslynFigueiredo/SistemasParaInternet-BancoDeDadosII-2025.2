create database sistema_escolar;
USE sistema_escolar;
create table alunos (
Matricula Varchar(10) PRIMARY KEY,
Nome Varchar(100) NOT NULL,
data_Nascimento date);
create table Disciplina (
id_Disciplina int PRIMARY KEY,
Nome_disciplina varchar(50) NOT NULL,
Carga_horaria int NOT NULL CHECK (Carga_horaria >= 10));

create table Matriculas ( 
matricula_aluno VARCHAR(10),
    id_disciplina INT,
    PRIMARY KEY (matricula_aluno, id_disciplina),
    FOREIGN KEY (matricula_aluno) REFERENCES alunos(Matricula),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_Disciplina)
);

create database sistema_escolar;
USE sistema_escolar;
create table alunos (
Matricula Varchar(100) primary key,
Nome Varchar(100) not null,
data_Nascimento date);
create table Disciplina (
id_Disciplina int primary key,
Nome_disciplina varchar(50) not null,
Carga_horaria int not null);

create table Matriculas ( 
matricula_aluno VARCHAR(10),
    id_disciplina INT,
    PRIMARY KEY (matricula_aluno, id_disciplina),
    FOREIGN KEY (matricula_aluno) REFERENCES alunos(Matricula),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_Disciplina)
);

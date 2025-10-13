-- Exercício 7: Sistema Escolar

CREATE DATABASE sistema_escolar_novo;

USE sistema_escolar_novo;

-- Tabela alunos
CREATE TABLE alunos (
    matricula VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE
);

-- Tabela disciplinas
CREATE TABLE disciplinas (
	id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(50) NOT NULL,
    carga_horaria INT NOT NULL CHECK (carga_horaria >= 10)
);

-- Tabela matriculas (tabela associativa muitos-para-muitos)

CREATE TABLE matriculas (
	matricula_aluno VARCHAR(10),
    id_disciplina INT,
    PRIMARY KEY (matricula_aluno, id_disciplina),
	FOREIGN KEY (matricula_aluno) REFERENCES alunos(matricula),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

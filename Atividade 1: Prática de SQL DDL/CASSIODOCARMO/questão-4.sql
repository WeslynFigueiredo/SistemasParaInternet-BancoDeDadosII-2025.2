CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(50) UNIQUE,
    ativo BOOLEAN DEFAULT TRUE
);

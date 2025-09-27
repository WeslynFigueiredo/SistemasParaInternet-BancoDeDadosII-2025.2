Questão 1:
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
);

-------------------------
Questão 2:
CREATE TABLE livros (
    id_livro INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    isbn VARCHAR(20) UNIQUE NOT NULL
);

--------------------------
Questão 3:
CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100) NOT NULL,
    data_inicio DATE,
    data_fim DATE
);

---------------------------
Questão 4:
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(50) UNIQUE,
    ativo BOOLEAN DEFAULT TRUE
);


------------------------------
Questão 5:
-- Tabela de clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE NOT NULL DEFAULT CURRENT_DATE,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


---------------------------------
Questão 6:
-- Tabela de autores
CREATE TABLE autores (
    id_autor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de posts
CREATE TABLE posts (
    id_post INT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    conteudo TEXT NOT NULL,
    data_publicacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

----------------------------------
Questão 7:
-- Tabela de alunos
CREATE TABLE alunos (
    matricula VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE
);

-- Tabela de disciplinas
CREATE TABLE disciplinas (
    id_disciplina INT PRIMARY KEY,
    nome_disciplina VARCHAR(50) NOT NULL,
    carga_horaria INT NOT NULL CHECK (carga_horaria >= 10)
);

-- Tabela de matriculas (relação muitos-para-muitos)
CREATE TABLE matriculas (
    matricula_aluno VARCHAR(10),
    id_disciplina INT,
    PRIMARY KEY (matricula_aluno, id_disciplina),
    FOREIGN KEY (matricula_aluno) REFERENCES alunos(matricula),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

-----------------------------------------
Questão 8:
-- Tabela de pacientes
CREATE TABLE pacientes (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE
);

-- Tabela de medicos
CREATE TABLE medicos (
    crm VARCHAR(15) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50)
);

-- Tabela de consultas
CREATE TABLE consultas (
    id_consulta INT PRIMARY KEY,
    id_paciente INT,
    crm_medico VARCHAR(15),
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (crm_medico) REFERENCES medicos(crm)
);


---------------------------------------------
Questão 9:
-- Tabela de usuarios
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de posts
CREATE TABLE posts (
    id_post INT PRIMARY KEY,
    id_usuario INT,
    conteudo TEXT NOT NULL,
    data_post TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-------------------------------------------------
Questão 10:
-- Tabela de departamentos
CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(50) UNIQUE NOT NULL
);

-- Tabela de funcionarios
CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_contratacao DATE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL CHECK (salario >= 0),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

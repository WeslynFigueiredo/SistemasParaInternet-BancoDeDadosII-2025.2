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

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
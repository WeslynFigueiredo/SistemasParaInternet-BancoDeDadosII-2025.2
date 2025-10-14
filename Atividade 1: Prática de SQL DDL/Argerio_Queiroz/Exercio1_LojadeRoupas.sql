
CREATE DATABASE Loja_de_Roupas;

use Loja_de_Roupas;

CREATE TABLE PRODUTOS (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    preco decimal(10, 2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
    );

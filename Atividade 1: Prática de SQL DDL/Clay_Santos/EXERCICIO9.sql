CREATE database Redes_sociais;
use redes_sociais;
create table usuarios (
id_usuarios int PRIMARY KEY AUTO_INCREMENT,
nome_usuario varchar(50) UNIQUE NOT NULL,
email varchar(50) UNIQUE NOT NULL,
data_cadastro NOT NULL DEFAULT CURRENT_TIMESTAMP);
create table post (
id_post INT PRIMARY KEY,
id_usuario INT,
conteudo text NOT NULL,
data_post  NOT NULL DEFAULT CURRENT_TIMESTAMP CHECK UNIQUE,
 FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuarios)
 );

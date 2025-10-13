CREATE database Redes_sociais;
use redes_sociais;
create table usuarios (
id_usuarios int PRIMARY KEY auto_increment,
nome_usuario varchar(50) UNIQUE NOT NULL,
email varchar(50) UNIQUE NOT NULL,
data_cadastro NOT NULL DEFAULT CURRENT_TIMESTAMP);
create table post (
id_post int PRIMARY KEY,
id_usuario int,
conteudo text NOT NULL,
data_post timestamp NOT NULL,
 FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuarios)
 );

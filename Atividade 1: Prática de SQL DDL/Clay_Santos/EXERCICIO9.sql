CREATE database Redes_sociais;
use redes_sociais;
create table usuarios (
id_usuarios int primary key auto_increment,
nome_usuario varchar(50) unique not null,
email varchar(50) unique not null,
data_cadastro timestamp);
create table post (
id_post int primary key,
id_usuario int,
conteudo text not null,
data_post timestamp not null,
 FOREIGN KEY(id_usuario) references usuarios(id_usuarios)
 );

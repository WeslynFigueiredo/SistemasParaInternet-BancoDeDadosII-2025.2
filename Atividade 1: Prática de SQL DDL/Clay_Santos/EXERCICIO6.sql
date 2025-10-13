CREATE database blog_de_noticias;

use blog_de_noticias;
create table autores (
id_autor INT primary KEY,
nome varchar(100) not null);

create table post(
id_post INT primary KEY,
titulo varchar(150) not null,
conteudo text not null,
data_publicacao timestamp not null,
id_autor int,
FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

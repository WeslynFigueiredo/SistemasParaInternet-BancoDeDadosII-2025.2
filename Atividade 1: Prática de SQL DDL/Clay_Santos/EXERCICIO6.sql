CREATE database blog_de_noticias;

use blog_de_noticias;
create table autores (
id_autor INT PRIMARY KEY,
nome varchar(100) NOT NULL);

create table post(
id_post INT PRIMARY KEY,
titulo varchar(150) NOT NULL,
conteudo text NOT NULL,
data_publicacao DEFAULT CURRENT_TIMESTAMP NOT NULL ,
id_autor int,
FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

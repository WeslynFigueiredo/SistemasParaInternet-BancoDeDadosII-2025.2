CREATE database sistema_de_RH;
use sistema_de_RH;
create table departamentos (
id_departamento int primary key,
nome_departamento varchar (50) unique not null
);
create table funcionarios (
id_funcionario int primary key,
nome Varchar(100) not null,
data_da_contratacao date not null,
salario decimal(10,2) not null CHECK (salario >= 0),
id_departamento int,
 FOREIGN KEY(id_departamento) references departamentos(id_departamento)
 );
 

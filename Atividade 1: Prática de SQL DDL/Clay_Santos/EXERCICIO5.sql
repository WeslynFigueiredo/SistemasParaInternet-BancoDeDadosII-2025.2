CREATE DATABASE vendas_onlines;
use vendas_onlines;
create table clientes (
id_cliente INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL );

create table pedidos (
id_pedido int primary key,
id_cliente int,
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
data_do_pedido DATE NOT NULL,
valor_total DECIMAL (10,2) NOT NULL);

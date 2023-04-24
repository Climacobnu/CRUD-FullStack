create database crud;
use crud;


create table usuarios (
id int AUTO_INCREMENT PRIMARY KEY,
id_endereco int,
nome varchar(255) NOT NULL,
email varchar(255) NOT NULL,
fone varchar(255) NOT NULL,
data_nascimento date NOT NULL
);

insert into usuarios (nome,email,fone,data_nascimento)
values ('Leandro','climaco@gmail.com','48991019260','1987-11-19');

insert into usuarios (nome,id_endereco,email,fone,data_nascimento)
values ('Leandro','1','climaco@gmail.com','48991019260','1987-11-19');



select * from usuarios;


create table endereco (
id_endereco int AUTO_INCREMENT PRIMARY KEY,
cep varchar(255) NOT NULL,
uf varchar(255) NOT NULL,
cidade varchar(255) NOT NULL,
logradouro varchar(255) NOT NULL,
bairro varchar(255) NOT NULL,
numero varchar(255) NOT NULL,
complemento varchar(255)
);

Alter TABLE usuarios
ADD CONSTRAINT fk_id_endereco
FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco);


select * from usuarios;

insert into endereco (id_endereco,cep,uf,cidade,logradouro,bairro,numero,complemento)
values ('1','88117130','SC','São Jose','Rua Wilson Menezes','Campinas','652','ap 412');

select * from endereco;

select u.nome, e.logradouro
from usuarios AS u
INNER JOIN endereco e
ON u.id_endereco = e.id_endereco;
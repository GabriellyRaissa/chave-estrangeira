drop database acougue;


create database acougue;

\c acougue;

create table Funcioarios(
Codigo_funcionario serial primary key,
Nome varchar(50),
endereco varchar(80),
CPF varchar(20)
);

create table Produtos(
Codigo serial primary key,
fk_funcionario int,
Nome varchar(50), 
preco float,
constraint fk_funcionario foreign key (fk_funcionario) references Funcioarios(Codigo_funcionario)
);




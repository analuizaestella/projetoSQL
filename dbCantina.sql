-- apagando o banco de dados
drop database dbcantina;

-- criando banco de dados
create database dbcantina;

-- acessando o banco de dados
use dbcantina;

-- criando tabelas
create table tbFuncionarios(
    codFunc int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100),
    cpf char(14) not null unique,
    sexo char(1) default "F" check(sexo in('F','M')),
    salario decimal(9,2),
    nascimento date,
    telCelular char(10);
primary key(codFunc));
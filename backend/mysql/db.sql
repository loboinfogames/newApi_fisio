create database db_autonomo_api;

use db_autonomo_api;


create table tb_login_autonomo(
id_autonomo int auto_increment primary key,
email varchar(200),
senha varchar(200)
);

insert into tb_login_autonomo( email, senha)
values (?,?);


create  table tb_informacoes_pessoais(
id_informacoes_pessoais int auto_increment primary key,
nome varchar(200),
grupo varchar(200),
data_nascimento varchar(200),
idade varchar(200),
genero varchar(200),
email varchar(200) unique,
celular varchar(200) unique,
cpf varchar(11) unique,
rg varchar(200) unique,
telefone varchar(200) unique,
pais varchar(200),
cep varchar(200),
cidade varchar(200),
estado varchar(2),
endereco varchar(200),
numero varchar(200),
bairro varchar(200),
complemento varchar(200)
);

insert into tb_informacoes_pessoais(nome, grupo, data_nascimento, idade, genero, email, celular, cpf, rg, telefone, pais, cep, cidade, estado, endereco, numero, bairro, complemento)
       values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);

select * from tb_informacoes_pessoais where id_informacoes_pessoais = 2;
select * from tb_informacoes_pessoais;

select * from tb_pacotes;
create  table tb_pacotes(
id_pacotes int auto_increment primary key,
nome varchar(200),
valor text
);
insert into tb_pacotes (nome,valor)
        values ("teste","testre");

create  table tb_informacoes_financeiros(
id_informacoes_financeiro int auto_increment primary key,
pacotes varchar(200),
valor decimal(10,2)
);

select * from tb_informacoes_financeiros;




select * from tb_endereco;
create table tb_responsavel(
id_responsavel int auto_increment primary key,
nome_responsavel varchar(200),
cpf varchar(11) unique,
telefone varchar(200) unique
);

create table tb_cliente_cadastro_agenda (
id int primary key auto_increment,
nome VARCHAR(200),
data DATE,
horario TIME,
repetir boolean,
modo VARCHAR(10),
servico VARCHAR (50),
status VARCHAR(22)
);

create table tb_pessoal_cadastro_agenda (
id int primary key auto_increment,
nome VARCHAR(200),
data DATE,
repetir boolean,
horario TIME,
modo VARCHAR(10),
status VARCHAR(22)
);
create   table tb_adicionar_receita(
id_adicionar_receita int auto_increment primary key,
proriedade varchar(200),
categoria_financeira varchar(200),
descricao varchar(200),
valor varchar(200),
data_pagamento varchar(200),
forma_pagamento varchar(200)
);

select * from tb_adicionar_despesa;

create  table tb_adicionar_despesa(
id_adicionar_despesa int auto_increment primary key,
propriedade varchar(200),
categoria_financeira varchar(200),
descricao varchar(200),
valor text,
data_pagamento varchar(200)

);

select * from tb_adicionar_profissional;
create table tb_adicionar_profissional(
id_adicionar_profissional int auto_increment primary key,
nome varchar(200),
email varchar(200),
acesso varchar(200)
);

create  table tb_adicionar_documento(
id_adicionar_documento int auto_increment primary key,
tipo varchar(200),
titulo varchar(200),
conteudo varchar(200),
dt_cadastro varchar(200)
);

select * from tb_adicionar_documento;

create table tb_notificacao(
id_notificacao int auto_increment primary key,
lembrete_sessao_email boolean,
msg_aniversario_email boolean,
lembrete_sessao_whatsapp boolean,
msg_aniversario_whatsapp boolean,
lembrete_sessao_sms boolean,
msg_aniversario_sms boolean
);

create table tb_login_cliente(
id_login_cliente int primary key auto_increment,
email varchar(200),
senha varchar(200)
);

select * from tb_login_cliente;

insert into tb_login_cliente (email, senha) 
                        values ("teste", "teste");
                        
      select id_login_cliente,
      email
      from tb_login_cliente where email = "teste" and senha = "teste"; 

create table tb_inventario(
id_inventario int auto_increment primary key,
nome_produto varchar(200),
categoria varchar(200),
qts_estoque varchar(200),
onde_comprou varchar(200),
preco_unitario text,
valor_total text(200),
data_compra varchar(200)
);

select*from tb_inventario;

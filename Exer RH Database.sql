-- Criar banco de dados
create database tb_rh;

USE tb_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
cpf int,
salario decimal,
cargo varchar(255),
primary key (id)

);

insert into tb_funcionarios(nome,idade,cpf,salario,cargo)
values ("Fernando pereira", 48, 359847 , 2000.00 , "Desenvolvedor Java"); 

alter table tb_funcionarios modify cpf int (11);

insert into tb_funcionarios(nome,idade,cpf,salario,cargo)
values ("Amanda oliveira", 35, 3569845550 , 2500.00 , "Desenvolvedor mobile"); 

alter table tb_funcionarios modify cpf bigint;

insert into tb_funcionarios(nome,idade,cpf,salario,cargo)
values ("Juares margarido", 30, 36958695120, 2800.00, "Desenvolvedor Web Senior");

insert into tb_funcionarios(nome,idade,cpf,salario,cargo)
values ("jurema da silva", 50, 35074581220, 2800.00, "Desenvolvedor Web Senior");

insert into tb_funcionarios(nome,idade,cpf,salario,cargo)
values ("Jemeremias Riquijão", 45, 65894521037, 3000.00, "Gerente de Desenvolvimento");

insert into tb_funcionarios(nome,idade,cpf,salario,cargo)
values("Boris Lisboa", 20, 69852415830, 1500.00, "estagiario");


SELECT * FROM tb_funcionarios;
DELETE FROM tb_funcionarios where id = 7;
DELETE FROM tb_funcionarios where id = 2;

SELECT * FROM tb_funcionarios where salario > 2000.00;

SELECT * FROM tb_funcionarios where salario < 2000.00;

UPDATE tb_funcionarios SET salario = 2350.00 WHERE id = 6; 




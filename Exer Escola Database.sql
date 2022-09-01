create database db_escola;

USE db_escola;

CREATE TABLE tb_escola(
id bigint auto_increment,
nome varchar(255),
idade int,
registro_aluno int,
Turma int,
nota int,
primary key (id)
);

alter table tb_escola modify nota decimal;

insert into tb_escola(nome,idade,registro_aluno,turma,nota)
value("Maria joaquina", 15, 2658, 4, 5.5);

insert into tb_escola(nome,idade,registro_aluno,turma,nota)
value("Cirilo Rivera", 16, 6398, 5, 9.0);

insert into tb_escola(nome,idade,registro_aluno,turma,nota)
value("Carmem Carrilho", 14, 3254, 8, 10.0);

insert into tb_escola(nome,idade,registro_aluno,turma,nota)
value("Rafael palilo", 17, 3698, 1, 6.5);

insert into tb_escola(nome,idade,registro_aluno,turma,nota)
value("Alicia Gusman", 15, 4752, 1, 7.0);

insert into tb_escola(nome,idade,registro_aluno,turma,nota)
value("Daniel Zapata", 17, 6398, 5, 8.0);

insert into tb_escola(nome,idade,registro_aluno,turma,nota)
value("Mario Ayala", 18, 2489, 6, 3.5);

insert into tb_escola(nome,idade,registro_aluno,turma,nota)
value("Valéria Ferreira", 16, 3674, 3, 9.0);

SELECT * FROM tb_escola;

ALTER TABLE tb_escola MODIFY nota decimal (6,1);

UPDATE tb_escola SET nota = 5.5 where id = 1;
UPDATE tb_escola SET nota = 6.5 where id = 4;
UPDATE tb_escola SET nota = 3.5 where id = 7;

SELECT * FROM tb_escola where nota > 7.0;
SELECT * FROM tb_escola where nota < 7.0;






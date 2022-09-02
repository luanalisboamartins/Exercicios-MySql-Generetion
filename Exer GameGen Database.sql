create database db_generation_game_online;

USE db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
 ataque int,
 defesa int,
 primary key(id)
 );
 
INSERT INTO tb_classes (ataque, defesa)
 VALUES (1000,2000);
 
  INSERT INTO tb_classes (ataque, defesa)
 VALUES (1000,5000);
 
  INSERT INTO tb_classes (ataque, defesa)
 VALUES (3000,6500);
 
  INSERT INTO tb_classes (ataque, defesa)
 VALUES (4000,3200);
 
  INSERT INTO tb_classes (ataque, defesa)
 VALUES (2500,1800);
 
 SELECT * FROM tb_classes;
 
 create table tb_personagens(
 id bigint auto_increment,
nome varchar (255) not null,
agilidade int,
descricao varchar(255) not null,
destreza int,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes (id)
 );
 
 INSERT INTO tb_personagens (nome, agilidade, descricao,destreza,classes_id)
 VALUES("Chun-Li", 10, "Especial", 8 ,1);
 
 INSERT INTO tb_personagens (nome, agilidade, descricao,destreza,classes_id)
 VALUES("Sonya Blade", 8, "Raro", 10 ,2);
 
 INSERT INTO tb_personagens (nome, agilidade, descricao,destreza,classes_id)
 VALUES("Kratos", 20, "Raro", 25 ,3);
 
 INSERT INTO tb_personagens (nome, agilidade, descricao,destreza,classes_id)
 VALUES("Lara Croft", 7, "Normal", 9 ,4);
 
 INSERT INTO tb_personagens (nome, agilidade, descricao,destreza,classes_id)
 VALUES("Terry Bogard", 11, "Especial", 12 ,1);
 
 SELECT * FROM tb_personagens;
 
 SELECT * FROM tb_classes where ataque > 2000;
 
 SELECT * FROM tb_classes where ataque BETWEEN 1000 AND 2000;
 
 SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
 
 SELECT nome,agilidade,descricao,destreza,tb_classes.ataque
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_classes.id = tb_personagens.classes_id;
 
SELECT nome,agilidade,descricao,destreza,tb_classes.defesa
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_classes.id = tb_personagens.classes_id;
 
 
 
 
 
 
 
 
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
valor decimal(10,2),
descricao varchar(255) not null,
primary key (id) );

INSERT INTO tb_categorias (valor,descricao)
VALUES(45.00, " Molho de tomate, mussarela, calabresa fatiada, cebola e orégano.");

INSERT INTO tb_categorias (valor,descricao)
VALUES(55.00, "Molho de tomate, mussarela, bacon fatiado, cebola e orégano");

INSERT INTO tb_categorias (valor,descricao)
VALUES(50.00, " Molho picante, mussarela, calabresa ralada, pimenta calabresa,azeitonas e orégano.");

INSERT INTO tb_categorias (valor,descricao)
VALUES(75.00, "Molho de tomate, mussarela, frango desfiado, milho verde, azeitonas, catupiry.");

INSERT INTO tb_categorias (valor,descricao)
VALUES(100.00, "  Molho de tomate, mussarela, presunto, ovos, cebolas, pimentão, azeitona e orégano..");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome varchar(255) not null,
tamanho varchar(255) not null,
fatias int,
borda varchar(255) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome,tamanho,fatias,borda,categoria_id)
VALUES("CALABRESA", "Familia", 16, "Catupiry", 1);

INSERT INTO tb_pizzas (nome,tamanho,fatias,borda,categoria_id)
VALUES("BACON", "Broto", 6, "Catupiry", 2);

INSERT INTO tb_pizzas (nome,tamanho,fatias,borda,categoria_id)
VALUES("BAIANA", "Normal", 12, "Catupiry", 3);

INSERT INTO tb_pizzas (nome,tamanho,fatias,borda,categoria_id)
VALUES("FRANGO COM CATUPIRY", "Familia", 16, "Catupiry", 4);

INSERT INTO tb_pizzas (nome,tamanho,fatias,borda,categoria_id)
VALUES("PORTUGUESA", "Normal", 12, "Catupiry", 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_categorias WHERE valor > 45.00;

SELECT * FROM tb_categorias WHERE valor BETWEEN 50.00 AND 100.00 ORDER BY valor;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
 
 SELECT nome,tamanho,fatias,borda,tb_categorias.descricao
 FROM tb_pizzas INNER JOIN tb_categorias
 ON tb_categorias.id = tb_pizzas.categoria_id;
 
  SELECT nome,tamanho,fatias,borda,tb_categorias.valor
 FROM tb_pizzas INNER JOIN tb_categorias
 ON tb_categorias.id = tb_pizzas.categoria_id;
 

create database db_ecommerce;

USE db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
data_validade date,
quantidade int,
marca varchar(255) not null,
preço decimal,
primary key (id)
);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Base", "2023-08-20", 40,"Boca Rosa", 1000.00);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Batom", "2023-05-18", 30,"MariMaria", 500.00);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Lapis de olho", "2024-11-25", 20,"Bella Femme", 150.00);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Blush", "2022-12-15", 50,"Ruby Rose", 1500.00);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Primer", "2023-01-01", 35,"vult", 299.99);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Rimel", "2023-04-23", 20,"maybelline", 350.00);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Corretivo", "2023-09-30", 15 ,"Natura", 250.00);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Delinador", "2023-02-06", 10 ,"Luisance", 100.00);

INSERT INTO tb_produtos (nome,data_validade,quantidade,marca,preço)
values("Paleta de Sombras", "2025-07-14", 50,"Oceane", 2000.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos where preço > 500.00;

SELECT * FROM tb_produtos where preço < 500.00;

ALTER TABLE tb_produtos MODIFY preço decimal(7,2);

UPDATE tb_produtos SET preço = 299.99 WHERE id = 9; 
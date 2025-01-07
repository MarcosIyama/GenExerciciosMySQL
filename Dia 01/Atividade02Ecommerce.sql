CREATE DATABASE db_ecom;

USE db_ecom;

CREATE TABLE tb_produtos (
	Id BIGINT AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Marca VARCHAR(255),
    DisponivelDesde DATETIME,
    Quantidade INT,
    Preco DECIMAL (8,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (Nome, Marca, DisponivelDesde, Quantidade, Preco)
VALUES ("Tênis Nike Air Max", "Nike", "2022-06-01 12:30:00", 125, 599.90),
("Smartphone Samsung Galaxy AXX", "Samsung", "2024-10-15 00:00:04", 600, 2890.90),
("Cafeteira Elétrica Nespresso", "Nespresso", "2021-02-10 12:15:00", 70, 499.90),
("Fone de Ouvido Bluetooth", "JBL", "2023-07-05 07:10:45", 200, 180.00),
("Relógio de Pulso Vintage", "Casio", "2016-04-14 15:25:20", 85, 175.50),
("Câmera Digital Canon EOS Rebel", "Canon", "2021-11-18 00:14:30", 25, 3599.00),
("Kit de Maquiagem Make B.", "O Boticário", "2019-03-22 16:24:11", 320, 145.90),
("Cadeira Gamer DXRacer Racing Series", "DXRacer", "2020-08-30 04:35:15", 15, 1399.00),
("Tablet Apple iPad 64GB", "Apple", "2023-10-01 10:00:00", 30, 3399.00),
("Mixer Philips Walita 700W", "Philips Walita", "2018-05-15 13:35:28", 225, 159.99);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preco > 500;

SELECT * FROM tb_produtos WHERE Preco < 500;

UPDATE tb_produtos SET Preco = 499.50 WHERE Id = 1;
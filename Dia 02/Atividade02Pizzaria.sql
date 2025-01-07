CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Tabela Independente
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255)
);

-- Tabela Dependente
CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(255) NOT NULL,
	quantidade INT,
    queijo BOOL,
	preco DECIMAL(5,2) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (descricao)
VALUES ("Doce");
INSERT INTO tb_categorias (descricao)
VALUES ("Salgada");
INSERT INTO tb_categorias (descricao)
VALUES ("Vegeratiana (Salgada)");
INSERT INTO tb_categorias (descricao)
VALUES ("Vegana (Salgada)");
INSERT INTO tb_categorias (descricao)
VALUES ("Vegana (Doce)");

SELECT * FROM tb_categorias;
UPDATE tb_categorias SET descricao = "Vegetariana (Salgada)" WHERE id = 3; -- Corrigindo Descrição

INSERT INTO tb_pizzas(sabor, quantidade, queijo, preco, categoriaid) 
VALUES ("Muçarela",50, 1, 44.90, 2); 

UPDATE tb_pizzas SET categoriaid = 3 WHERE id = 1; -- Corrigindo Categoria

INSERT INTO tb_pizzas(sabor, quantidade, queijo, preco, categoriaid) 
VALUES ("Calabresa",30, 0, 39.90, 2),
("Margherita",30, 1, 49.90, 3),
("Atum",10, 0, 44.90, 2),
("Portuguesa",20, 1, 64.90, 2),
("Brócolis",15, 1, 59.90, 3),
("Tomate Seco",5, 0, 69.90, 4),
("4 Queijos",25, 1, 69.90, 3),
("Vegarela",15, 0, 64.90, 4),
("Abobrinha",10, 0, 59.90, 4),
("Brigadeiro",15, 0, 59.90, 1),
("Chocolate",10, 0, 54.90, 1),
("Goiabada",5, 0, 54.90, 5),
("Banana",5, 0, 49.90, 5);

SELECT * FROM tb_pizzas;

-- Retorna Pizzas com valor maior que 45.00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Retorna Pizzas com valor entre 50.00 e 100.00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Retorna Pizzas com "M" no nome
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

-- Retorna os dados das duas tabelas unidos
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id
ORDER BY tb_pizzas.id;

-- Retorna os dados das duas tabelas unidos, porém apenas a categoria selecionada
SELECT sabor, preco, quantidade, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.descricao = "Salgada";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE tb_categorias.id = 2;
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Tabela Independente
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    grupo VARCHAR(255) NOT NULL,
    vendacontrolada VARCHAR(255)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    categoriaid BIGINT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (grupo, vendacontrolada)
VALUES ("Medicamentos", "Não"),
("Medicamentos","Sim");

INSERT INTO tb_categorias (grupo, vendacontrolada)
VALUES ("Higiene Pessoal", "Não"),
("Conveniencia","Não");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoriaid) 
values ("Analgex", 20, "2026-12-12", 7.90, 1),
("Flexicor", 30, "2025-10-10", 49.90, 1),
("Calmex", 30, "2026-03-03", 79.90, 2),
("Sabonete Dermalys", 125, "2028-11-11", 4.90, 3),
("Gastroflux", 30, "2026-08-08", 14.60, 1),
("Cefélex", 10, "2026-05-20", 52.50, 2),
("Vitanova", 60, "2025-08-15", 24.90, 1),
("Hridatante Hidramax", 200, "2027-11-30", 19.80, 3),
("ÁguaFresh", 500, "2025-06-10", 3.50, 4),
("LençoCare", 100, "2026-09-25", 7.90, 3),
("Fraldas BabySoft", 30, "2027-12-01", 54.90, 3),
("NutriDeLight", 150, "2025-07-30", 15.90, 4),
("Chocolate ChocoCaro", 25, "2025-05-15", 61.90, 4),
("Renox", 20, "2026-02-18", 46.50, 1),
("Relaxan", 60, "2025-10-10", 45.30, 2);


-- Retorna Produtos com valor maior que 50.00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Retorna Produtos com valor entre 5.00 e 60.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00 ORDER BY preco DESC;

-- Retorna Produtos com "C" no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%" ORDER BY nome ASC;

-- Retorna os dados das duas tabelas unidos
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
ORDER BY tb_produtos.nome ASC;

-- Retorna os dados das duas tabelas unidos, porém apenas o grupo selecionado
SELECT nome AS "Nome", preco AS "Preço", quantidade AS "Quantidade", tb_categorias.grupo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.grupo = "Conveniencia";

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.id = 2;
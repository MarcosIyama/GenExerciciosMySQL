CREATE DATABASE db_rh;

USE db_rh;

-- Criando tabela
CREATE TABLE tb_colaboradores (
	Id BIGINT AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Aniversario DATE,
    Email VARCHAR(255),
    DataAdmissao DATE NOT NULL,
    Salario DECIMAL(8,2) NOT NULL,
    InicioExpediente TIME,
    PRIMARY KEY (Id)
);

-- Inserindo valores
INSERT INTO tb_colaboradores (Nome, Aniversario, Email, DataAdmissao, Salario, InicioExpediente)
VALUES ("Pedro Bala", "1937-10-01", "p_bala@provedor.com", "1999-06-10", 1500.00, "09:30:00"),
("Bento Santiago", "1960-11-25", "b_santiago@provedor.com", "2000-10-20", 1800.00, "08:30:00"),
("Graciliano Ramos", "1990-05-17", "g_ramos@provedor.com", "2010-11-04", 2500.00, "07:00:00"),
("Euclides da Cunha", "1993-09-10", "e_cunha@provedor.com", "2012-06-15", 2250.00, "09:30:00"),
("Jorge Amado", "2002-10-01", "j_amado@provedor.com", "2021-03-26", 2600.00, "10:00:00");

-- Visualizar/Selecionar
SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE Salario > 2000;

SELECT * FROM tb_colaboradores WHERE Salario < 2000;

-- Atualizar/Alterar
UPDATE tb_colaboradores SET Salario = 1600.00 WHERE Id = 1;
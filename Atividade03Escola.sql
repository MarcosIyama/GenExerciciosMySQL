CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	IdMatricula BIGINT AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    DataNascimento DATE,
    DataMatricula DATE NOT NULL,
    Ano INT,
    EstagioEscolar VARCHAR(255),
    MediaNotas DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (IdMatricula)
);

INSERT INTO tb_alunos (Nome, DataNascimento, DataMatricula, Ano, EstagioEscolar, MediaNotas)
VALUES ("Pedro Henrique Silva", "2011-03-15", "2022-02-05", 6, "Ensino Fundamental", 8.5),
("Ana Clara Souza", "2010-06-22", "2021-02-15", 7, "Ensino Fundamental", 9.0),
("João Pedro Lima", "2009-11-10", "2023-01-10", 8, "Ensino Fundamental", 6.8),
("Maria Eduarda Costa", "2008-04-05", "2024-01-20", 9, "Ensino Fundamental", 9.3),
("Lucas Gabriel Pereira", "2006-07-25", "2020-02-01", 1, "Ensino Médio", 5.2),
("Beatriz Martins Almeida", "2005-12-18", "2024-02-05", 2, "Ensino Médio", 7.6),
("Gabriel Souza Leite", "2005-09-03", "2019-02-08", 3, "Ensino Médio", 9.1),
("Larissa Fernandes Rocha", "2006-02-28", "2021-01-18", 2, "Ensino Médio", 6.9),
("Felipe Rodrigues Oliveira", "2009-10-13", "2023-02-12", 7, "Ensino Fundamental", 7.3),
("Júlia Costa Santos", "2008-01-02", "2022-01-25", 9, "Ensino Fundamental", 8.8),
("Élma Maria Pires", "2007-11-12", "2024-01-15", 9, "Ensino Fundamental", 7.9),
("Camila Duarte Ramos", "2008-07-03", "2023-02-18", 8, "Ensino Fundamental", 6.4);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE MediaNotas >= 7.0;

SELECT * FROM tb_alunos WHERE MediaNotas < 7.0;

UPDATE tb_alunos SET MediaNotas = 8.6 WHERE IdMatricula = 1;
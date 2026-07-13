CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint AUTO_INCREMENT PRIMARY KEY,
    nome varchar(250),
    idade int,
    email varchar(250),
    salario decimal(8,2)
);


INSERT INTO tb_colaboradores(nome,idade,email,salario)
VALUES
	('Maria', 25,'maria@email.com', 3500.00),
    ('João', 30,'joao@email.com', 2700.00),
    ('Julia', 37,'julia@email.com', 7350.00),
    ('Ana', 17,'ana@email.com', 900.00),
    ('Mario', 28,'mario@email.com',3300.00);
    
SELECT * FROM tb_colaboradores
WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores
WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 2;

SELECT * FROM tb_colaboradores;
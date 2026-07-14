-- Criando o banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Selecionando o banco
USE db_pizzaria_legal;

-- Criando a tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- Criando a tabela de pizzas
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Tradicional', 'Pizzas com sabores clássicos'),
('Especial', 'Pizzas com ingredientes diferenciados'),
('Doce', 'Pizzas doces'),
('Vegetariana', 'Pizzas sem carne'),
('Premium', 'Pizzas gourmet');

-- Inserindo pizzas
INSERT INTO tb_pizzas (nome, tamanho, preco, ingredientes, categoria_id) VALUES
('Mussarela', 'Grande', 49.90, 'Mussarela, molho e orégano', 1),
('Calabresa', 'Grande', 54.90, 'Calabresa, cebola e orégano', 1),
('Marguerita', 'Média', 59.90, 'Mussarela, tomate e manjericão', 2),
('Portuguesa', 'Grande', 69.90, 'Presunto, ovos, cebola e ervilha', 2),
('Chocolate', 'Média', 52.90, 'Chocolate ao leite', 3),
('Morango com Chocolate', 'Grande', 74.90, 'Chocolate, morango e leite condensado', 3),
('Vegetariana Especial', 'Grande', 64.90, 'Brócolis, milho, tomate e queijo', 4),
('Parma', 'Grande', 99.90, 'Presunto parma, rúcula e parmesão', 5);

-- Pizzas com valor maior que R$ 45,00
SELECT * FROM tb_pizzas
WHERE preco > 45.00;

-- Pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

-- Pizzas que possuem a letra M no nome
SELECT * FROM tb_pizzas
WHERE nome LIKE '%M%';

-- INNER JOIN entre pizzas e categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;
-- Criando o banco de dados
CREATE DATABASE db_farmacia_bem_estar;

-- Selecionando o banco
USE db_farmacia_bem_estar;

-- Criando a tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- Criando a tabela de produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo categorias
INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos', 'Medicamentos de uso geral'),
('Cosméticos', 'Produtos para cuidados com a pele e beleza'),
('Higiene Pessoal', 'Produtos para higiene diária'),
('Vitaminas', 'Suplementos vitamínicos'),
('Infantil', 'Produtos destinados ao público infantil');

-- Inserindo produtos
INSERT INTO tb_produtos (nome, fabricante, preco, estoque, categoria_id) VALUES
('Paracetamol 750mg', 'Medley', 18.90, 120, 1),
('Vitamina C 1g', 'Cimed', 35.50, 80, 4),
('Shampoo Anticaspa', 'Clear', 29.90, 60, 3),
('Creme Hidratante', 'Nivea', 65.90, 40, 2),
('Fralda Infantil', 'Pampers', 89.90, 50, 5),
('Protetor Solar FPS 60', 'La Roche-Posay', 79.90, 35, 2),
('Sabonete Líquido', 'Dove', 12.50, 100, 3),
('Colágeno Hidrolisado', 'Sanavita', 59.90, 45, 4);

-- Produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos
WHERE preco > 50.00;

-- Produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

-- Produtos que possuem a letra C no nome
SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

-- INNER JOIN entre produtos e categorias
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;
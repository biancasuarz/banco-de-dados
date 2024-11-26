CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50),
    descricao_categoria VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao_categoria)
VALUES 
    ("Óleos Naturais", "Óleos extraídos de plantas para diversas finalidades."),
    ("Chás e Infusões", "Bebidas naturais com propriedades terapêuticas."),
    ("Suplementos Naturais", "Complementos alimentares de origem natural."),
    ("Cuidados com a Pele", "Produtos naturais para hidratação e limpeza da pele."),
    ("Higiene e Bem-estar", "Itens naturais para cuidado pessoal.");

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    descricao VARCHAR(255),
    id_categoria INT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, valor, descricao, id_categoria)
VALUES 
    ("Óleo de Lavanda", 70.00, "Óleo essencial calmante e relaxante.", 1),
    ("Chá de Camomila", 20.00, "Chá natural conhecido por suas propriedades relaxantes.", 2),
    ("Cápsulas de Spirulina", 90.00, "Suplemento rico em nutrientes naturais.", 3),
    ("Creme Hidratante de Calêndula", 45.00, "Produto natural para hidratar e proteger a pele.", 4),
    ("Sabonete Natural de Argila", 35.00, "Sabonete para limpeza profunda com ingredientes naturais.", 4),
    ("Óleo de Eucalipto", 60.00, "Óleo natural para descongestão e frescor.", 1),
    ("Chá Verde", 30.00, "Chá antioxidante para auxiliar no bem-estar.", 2),
    ("Escova de Dente de Bambu", 25.00, "Escova ecológica, biodegradável e sustentável.", 5);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.valor, tb_categorias.nome_categoria
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT tb_produtos.nome, tb_produtos.valor, tb_categorias.nome_categoria
FROM tb_produtos 
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Chás e Infusões";

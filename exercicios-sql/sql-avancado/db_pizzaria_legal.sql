CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(50),
    descricao VARCHAR(255),
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao)
VALUES 
    ("Tradicional", "Pizzas tradicionais com ingredientes clássicos."),
    ("Vegetariana", "Pizzas com ingredientes vegetarianos."),
    ("Doces", "Pizzas com sabores doces."),
    ("Gourmet", "Pizzas sofisticadas com ingredientes diferenciados."),
    ("Especiais", "Pizzas com combinações especiais.");

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100),
    valor DECIMAL(10,2),
    ingredientes VARCHAR(255),
    id_categoria INT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(nome, valor, ingredientes, id_categoria)
VALUES 
    ("Pizza Davi", 39.90, "Molho de tomate, muçarela, manjericão", 1),
    ("Pizza Ester", 45.00, "Muçarela, cebola, azeitona", 1),
    ("Pizza Daniel", 48.00, "Tomate, muçarela, pimentão, cebola", 2),
    ("Pizza Maria", 55.00, "Ganache de chocolate e granulado", 3),
    ("Pizza Pedro", 50.00, "Muçarela, catupiry, milho", 1),
    ("Pizza Ruth", 60.00, "Brigadeiro, morango", 3),
    ("Pizza Noé", 85.00, "Creme branco, creme de trufa e coco", 4),
    ("Pizza Lucas", 70.00, "Muçarela, molho branco, cogumelo", 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT p.nome, p.valor, p.ingredientes, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.nome, p.valor, p.ingredientes, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome_categoria = "Doces";

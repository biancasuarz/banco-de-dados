CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos(
id BIGINT AUTO_INCREMENT, 
produto VARCHAR(255),
preco DECIMAL(6,2),
marca VARCHAR(255),
quantidade INT,
PRIMARY KEY(id)
);

INSERT INTO produtos(produto, preco, marca, quantidade)
	VALUES ("Videogame", 2500.00, "Sony", 10),
	("Joystick", 350.00, "Logitech", 50),
	("Fone de Ouvido Gamer", 450.00, "HyperX", 30),
	("Monitor 4K", 2000.00, "Samsung", 20),
	("Teclado Mecânico", 800.00, "Razer", 40),
	("Mouse Gamer", 500.00, "Corsair", 60),
	("Cadeira Gamer", 1200.00, "DXRacer", 15),
	("Placa de Vídeo", 3000.00, "NVIDIA", 5),
	("HD Externo 2TB", 600.00, "Seagate", 25),
	("Jogo de Videogame", 300.00, "Ubisoft", 100);
    -- blocos acima já foram executados
    
SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 5500;

UPDATE produtos SET preco  = 2300.00 WHERE id = 1;
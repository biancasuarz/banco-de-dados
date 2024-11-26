CREATE DATABASE db_biblical_game_online;
USE db_biblical_game_online;

CREATE TABLE tb_classes(
    id INT AUTO_INCREMENT,
    funcao VARCHAR(50),
    vidaBase INT,
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
    personagem VARCHAR(255),
    id_classe INT,
    poderAtaque BIGINT,
    poderDefesa BIGINT,
    PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classe) REFERENCES tb_classes(id);

INSERT INTO tb_classes(funcao, vidaBase)
VALUES ("Profeta", 40),
       ("Rei", 50),
       ("Guerreiro", 30),
       ("Líder", 45),
       ("Apóstolo", 35);

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(personagem, id_classe, poderAtaque, poderDefesa)
VALUES ("Davi", 3, 3000, 1500),   
       ("Ester", 2, 1800, 1000),  
       ("Josué", 3, 3500, 2000), 
       ("Gideão", 3, 2500, 2000),
       ("Salomão", 2, 1200, 800),
       ("Paulo", 4, 2000, 1000),
       ("Elias", 1, 4500, 2500),
       ("Moisés", 1, 5000, 3000);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poderAtaque > 1000;
SELECT * FROM tb_personagens WHERE poderAtaque < 1000;

SELECT * FROM tb_personagens WHERE poderDefesa > 2000;
SELECT * FROM tb_personagens WHERE poderDefesa < 2000;

SELECT * FROM tb_personagens WHERE personagem = "Davi";

SELECT personagem, tb_classes.funcao, poderAtaque, poderDefesa, tb_classes.vidaBase
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT personagem, tb_classes.funcao, poderAtaque, poderDefesa
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 2;

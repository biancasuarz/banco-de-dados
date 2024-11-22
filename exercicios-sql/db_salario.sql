CREATE DATABASE db_salario;
USE db_salario;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    data_admissao DATE,
    cargo VARCHAR(255),
    salario DECIMAL(6,2),
    PRIMARY KEY(id)
);

INSERT INTO colaboradores(nome, data_admissao, cargo, salario)
	VALUES("Bianca", "2025-01-26","Backend",4000),
  ("Patricia", "2025-02-20", "Analista Marketing", 4200),
  ("Astrid","2024-12-01", "Princesa da Mamãe", 3000),
  ("Alanis", "2024-12-01", "Princesa da Mamãe Pleno", 5000),
  ("Angela","2025-05-20", "Chef de Cozinha", 3000);

SELECT * FROM colaboradores WHERE salario > 2000; 
SELECT * FROM colaboradores WHERE salario < 15000;

UPDATE colaboradores SET cargo="Backend Pleno" WHERE id = 1;

INSERT INTO colaboradores(nome, data_admissao, cargo, salario)
	VALUES("André", "2025-02-10", "C Developer", 9000);
    
SELECT * FROM colaboradores;
-- todas as linhas acima já foram executadas
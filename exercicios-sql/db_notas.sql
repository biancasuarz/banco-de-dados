CREATE DATABASE db_notas;
USE db_notas;

CREATE TABLE alunos(
id BIGINT AUTO_INCREMENT,
matricula INT,
nome VARCHAR(255),
nota DECIMAL(2,2),
turma VARCHAR(255),
PRIMARY KEY(id)
);

INSERT INTO alunos(matricula, nome, nota, turma)
	VALUES(202301, "André Gabriel", 8.5, "Turma 77"),
	(202302, "Bianca Soares", 9.2, "Turma 77"),
	(202303, "Astrid Gonçalves", 7.8, "Turma 77"),
	(202304, "Alanis Soares", 8.0, "Turma 77"),
	(202305, "Coringa", 6.5, "Turma 78"),
	(202306, "Victor Araújo", 9.0, "Turma 77"),
	(202307, "Duende Verde", 7.2, "Turma 78"),
	(202308, "Peter Parker", 8.8, "Turma 77"),
	(202309, "Venom", 6.9, "Turma 78"),
	(202310, "Jesus Cristo", 8.4, "Turma 77");
    
    SELECT * FROM alunos WHERE nota > 8;
    SELECT * FROM alunos WHERE nota < 7;
    
    UPDATE alunos SET nota = 10 WHERE id = 10;
    
    SELECT * FROM alunos;
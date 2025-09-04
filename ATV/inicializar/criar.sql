CREATE DATABASE ufmt;
USE ufmt;

CREATE TABLE filme(
titulo VARCHAR(20) PRIMARY KEY,
diretor VARCHAR(20) NOT NULL,
genero VARCHAR(20) NOT NULL,
ano INT NOT NULL
);

CREATE TABLE livro(
titulo VARCHAR(20) PRIMARY KEY,
autor VARCHAR(20) NOT NULL,
genero VARCHAR(20) NOT NULL,
editora VARCHAR(20) NOT NULL,
ano INT NOT NULL
);

CREATE TABLE musica(
titulo VARCHAR(20) PRIMARY KEY,
artista VARCHAR(20) NOT NULL,
ano INT NOT NULL
);

INSERT INTO filme(titulof,diretor,genero,ano) VALUES ("perderam o nemo","jose","animacao",2025);
INSERT INTO filme(titulof,diretor,genero,ano) VALUES ("Procurando nemo","riva","animacao",2005);
INSERT INTO filme(titulof,diretor,genero,ano) VALUES ("Acharam o nemo","jova","cancao",1990);

INSERT INTO livro(titulo,autor,genero,editora,ano) VALUES ("talvez","jairo","horror","UFMT",2012);
INSERT INTO livro(titulo,autor,genero,editora,ano) VALUES ("nemo","riva jose","romance","MTUF",1001);
INSERT INTO livro(titulo,autor,genero,editora,ano) VALUES ("amor","bruno","romance","TMFU",2005);

INSERT INTO musica(titulom,artista,ano) VALUES ("jaronimos","roberto",2020);
INSERT INTO musica(titulom,artista,ano) VALUES ("jaros","robhet",1990);
INSERT INTO musica(titulom,artista,ano) VALUES ("alunosas","berto",1990);
INSERT INTO musica(titulom,artista,ano) VALUES ("jardim","roto",2025);

UPDATE musica SET titulom = "perderam o nemo" WHERE titulom LIKE "jaronimos";

SELECT * FROM filme;
SELECT * FROM livro;
SELECT * FROM musica;

SELECT * FROM filme WHERE genero = "animacao";

SELECT * FROM musica WHERE ano = 1990;

SELECT autor FROM livro WHERE genero LIKE "romance";

SELECT titulof FROM filme
UNION ALL
SELECT titulom FROM musica
ORDER BY titulof;

SELECT titulof FROM filme EXCEPT SELECT titulom FROM musica;


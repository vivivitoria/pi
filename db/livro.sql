-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `livro`

CREATE TABLE `livro`
(
 `id_livro`       int NOT NULL AUTO_INCREMENT ,
 `id_usuario`     int NOT NULL ,
 `nome_livro`     text NOT NULL ,
 `id_review`      int NOT NULL ,
 `genero_livro`   text NOT NULL ,
 `id_usuario_1`   int NOT NULL ,
 `ano_lancamento` int NOT NULL ,
 `autor_livro`    text NOT NULL ,
 `paginas_livro`  int NULL ,

PRIMARY KEY (`id_livro`, `id_usuario`),
KEY `FK_119` (`id_review`, `id_usuario_1`),
CONSTRAINT `FK_116` FOREIGN KEY `FK_119` (`id_review`, `id_usuario_1`) REFERENCES `review` (`id_review`, `id_usuario`),
KEY `FK_60` (`id_usuario`),
CONSTRAINT `FK_58` FOREIGN KEY `FK_60` (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
);










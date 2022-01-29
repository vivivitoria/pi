-- Warning: You can generate script only for one table/view at a time in your Free plan 
-- 
-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `livro`

CREATE TABLE `livro`
(
 `id_livro`       int NOT NULL AUTO_INCREMENT ,
 `id_usuario`     int NOT NULL ,
 `nome_livro`     text NOT NULL ,
 `genero_livro`   text NOT NULL ,
 `ano_lancamento` int NOT NULL ,
 `autor_livro`    text NOT NULL ,
 `paginas_livro`  int NULL ,

PRIMARY KEY (`id_livro`, `id_usuario`),
KEY `FK_60` (`id_usuario`),
CONSTRAINT `FK_58` FOREIGN KEY `FK_60` (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
);






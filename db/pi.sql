CREATE DATABASE IF NOT EXISTS pi_db:

-- ************************************** `usuario`

CREATE TABLE IF NOT EXISTS `usuario` (
 `user_id`     int NOT NULL AUTO_INCREMENT ,
 `user_nome`   text NOT NULL ,
 `user_email`  text NOT NULL ,
 `user_senha`  text NOT NULL ,
);

-- ************************************** `livro`
CREATE TABLE IF NOT EXISTS `livro` (
 `livro_id`       int NOT NULL AUTO_INCREMENT ,
 `user_id`     int NOT NULL ,
 `livro_nome`     text NOT NULL ,
 `livro_genero`   text NOT NULL ,
 `user_id`   int NOT NULL ,
 `livro_ano` int NOT NULL ,
 `livro_autor`    text NOT NULL ,
PRIMARY KEY (`livro_id`, `user_id`),
KEY `FK_60` (`user_id`),
CONSTRAINT `FK_58` FOREIGN KEY `FK_60` (`user_id`) REFERENCES `usuario` (`user_id`)
);
















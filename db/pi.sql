CREATE DATABASE IF NOT EXISTS pi:

-- ************************************** `usuario`

CREATE TABLE `usuario`
(
 `user_id`     int NOT NULL AUTO_INCREMENT ,
 `user_nome`   text NOT NULL ,
 `cidade_id`      int NOT NULL ,
 `user_email`  text NOT NULL ,
 `user_cidade` text NOT NULL ,
 `user_senha`  text NOT NULL ,

PRIMARY KEY (`user_id`),
KEY `FK_115` (`cidade_id`),
CONSTRAINT `FK_113` FOREIGN KEY `FK_115` (`cidade_id`) REFERENCES `cidade` (`cidade_id`)
);

-- ************************************** `livro`

CREATE TABLE `livro`
(
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


-- ************************************** `estados`

CREATE TABLE `estados`
(
 `estado_id`   int NOT NULL AUTO_INCREMENT ,
 `cidade_id`   int NOT NULL ,
 `estado_nome` text NOT NULL ,

PRIMARY KEY (`estado_id`, `cidade_id`),
KEY `FK_75` (`cidade_id`),
CONSTRAINT `FK_73` FOREIGN KEY `FK_75` (`cidade_id`) REFERENCES `cidade` (`cidade_id`)
);



-- ************************************** `cidade`

CREATE TABLE `cidade`
(
 `cidade_id`   int NOT NULL AUTO_INCREMENT ,
 `cidade_nome` text NOT NULL ,

PRIMARY KEY (`cidade_id`)
);














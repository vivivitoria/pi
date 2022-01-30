-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `usuario`

CREATE TABLE `usuario`
(
 `id_usuario`     int NOT NULL AUTO_INCREMENT ,
 `nome_usuario`   text NOT NULL ,
 `id_cidade`      int NOT NULL ,
 `email_usuario`  text NOT NULL ,
 `genero_usuario` text NOT NULL ,
 `cidade_usuario` text NOT NULL ,
 `senha_usuario`  text NOT NULL ,

PRIMARY KEY (`id_usuario`),
KEY `FK_115` (`id_cidade`),
CONSTRAINT `FK_113` FOREIGN KEY `FK_115` (`id_cidade`) REFERENCES `cidade` (`id_cidade`)
);






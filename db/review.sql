-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `review`

CREATE TABLE `review`
(
 `id_review`      int NOT NULL AUTO_INCREMENT ,
 `id_usuario`     int NOT NULL ,
 `texto_review`   text NOT NULL ,
 `usuario_review` text NOT NULL ,
 `nota_review`    int NOT NULL ,
 `data_review`    date NOT NULL ,

PRIMARY KEY (`id_review`, `id_usuario`),
KEY `FK_88` (`id_usuario`),
CONSTRAINT `FK_86` FOREIGN KEY `FK_88` (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
);






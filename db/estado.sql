-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `estados`

CREATE TABLE `estados`
(
 `id_estado`   int NOT NULL AUTO_INCREMENT ,
 `id_cidade`   int NOT NULL ,
 `nome_estado` text NOT NULL ,

PRIMARY KEY (`id_estado`, `id_cidade`),
KEY `FK_75` (`id_cidade`),
CONSTRAINT `FK_73` FOREIGN KEY `FK_75` (`id_cidade`) REFERENCES `cidade` (`id_cidade`)
);






-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `usuario`

CREATE TABLE `usuario`
(
 `id_usuario`     int NOT NULL AUTO_INCREMENT ,
 `nome_usuario`   text NOT NULL ,
 `email_usuario`  text NOT NULL ,
 `genero_usuario` text NOT NULL ,
 `cidade_usuario` text NOT NULL ,
 `senha_usuario`  text NOT NULL ,

PRIMARY KEY (`id_usuario`)
);






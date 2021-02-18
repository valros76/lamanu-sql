/*Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :

id (type INT, auto-incrémenté, clé primaire)
tool (type VARCHAR)*/
CREATE TABLE `webDevelopment`.`tools`
(
   `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `tool` VARCHAR(255)
);
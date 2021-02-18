/*Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :

id (type INT, auto-incrémenté, clé primaire)
library (type VARCHAR)*/
CREATE DATABASE `webDevelopment`.`librairies`
(
   `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `library` VARCHAR(80)
);
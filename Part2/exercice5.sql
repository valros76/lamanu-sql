/*Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :

id (type INT, auto-incrémenté, clé primaire)
ideName (type VARCHAR)*/
CREATE TABLE `webDevelopment`.`ide`
(
   `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   `ideName` VARCHAR(80)
);
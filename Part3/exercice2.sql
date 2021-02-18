/*Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).*/
ALTER TABLE `webDevelopment`.`frameworks`
ADD IF NOT EXISTS `version` INT;
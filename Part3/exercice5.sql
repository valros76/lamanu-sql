/*
Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.

*/
ALTER TABLE `webDevelopment`.`frameworks`
MODIFY `version` VARCHAR(11);
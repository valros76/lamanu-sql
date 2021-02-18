/*
Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).
EDIT : cibler la table 'ide' et la version '3.x'
*/
SELECT `version` FROM `webDevelopment`.`ide`
WHERE `version` LIKE '%3.%';
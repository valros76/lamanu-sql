/*
Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
*/
SELECT * FROM `webDevelopement`.`languages` WHERE `id` = 3 OR `id` = 5 OR `id` = 7;
/*
Notation avec IN
SELECT * FROM `webDevelopement`.`languages`
WHERE `id` IN(3,5,7)
*/
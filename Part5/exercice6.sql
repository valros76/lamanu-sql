/*
Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.
*/
SELECT `version` FROM `webDevelopment`.`languages` WHERE `version` NOT LIKE '%PHP%';
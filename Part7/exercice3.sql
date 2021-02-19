/*
Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1.
*/
UPDATE `webDevelopment.languages` SET `version` = '5.1' WHERE `language` = 'JavaScript' AND `version` LIKE '%5%';
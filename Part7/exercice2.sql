/*
Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.

*/
UPDATE `webDevelopment.frameworks` SET `framework` = 'Symfony2' WHERE `framework` LIKE '%Symfony%';
/*
Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
*/
SELECT `version` FROM `webDevelopment.languages` WHERE `version` LIKE '%PHP' OR `version` LIKE '%JAVASCRIPT';
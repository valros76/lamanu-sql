/*
Dans la table languages, afficher les deux première entrées de JavaScript.
*/
SELECT version FROM `languages` WHERE version LIKE '%JAVASCRIPT%' ORDER BY `id` LIMIT 0,2;
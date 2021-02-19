/*
Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
*/
SELECT * FROM `languages`
LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId` WHERE `languagesId` IS NOT null;
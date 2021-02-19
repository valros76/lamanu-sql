/* 
Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
*/
SELECT * FROM `languages`
LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`;
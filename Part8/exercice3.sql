/*
Afficher le nombre de framework qu'a un langage.
*/
SELECT COUNT(`languages`.`id`) AS id,`languages`.`name`, COUNT(`languages`.`name`) AS countName FROM `languages`
LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId` WHERE `languagesId` IS NOT null
GROUP BY `languages`.`id`,`languages`.`name`;
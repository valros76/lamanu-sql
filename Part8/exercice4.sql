/*
Afficher les langages ayant plus de 3 frameworks.
*/
SELECT COUNT(`languages`.`id`) AS count_languages_id,`languages`.`name`, COUNT(`languages`.`name`) AS countName FROM `languages`
LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId` WHERE `languagesId` IS NOT null
GROUP BY `languages`.`id`,`languages`.`name`
HAVING COUNT(`languages`.`id`) >= 3;
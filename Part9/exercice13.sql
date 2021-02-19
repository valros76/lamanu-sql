/*
Afficher la liste de employés avec leur titre.
*/
USE `employees`;
SELECT `employees`.`first_name`, `titles`.`title`
FROM `employees`
INNER JOIN `titles` ON `employees`.`emp_no` = `titles`.`emp_no`
GROUP BY `employees`.`first_name`, `titles`.`title`;
/*
Afficher le nombre d'enrégistrements présents dans la table departmants contenant l'expression en dans leur nom.
*/
USE `employees`;
SELECT COUNT(*) 
FROM `departments`
WHERE `dept_name` LIKE '%en%';
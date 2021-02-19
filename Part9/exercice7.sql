/*
Afficher toutes les lignes de la colonne dept_name contenant l'expression en dans la table departmants.
*/
USE `employees`;
SELECT `dept_name` 
FROM `departments`
WHERE `dept_name` LIKE '%en%';
/*
Afficher par ordre alphabétique toutes les colonnes et les 10 premières ligne de la table departmants.
*/
USE `employees`;
SELECT * 
FROM `departments`
ORDER BY `dept_name` ASC
LIMIT 10;
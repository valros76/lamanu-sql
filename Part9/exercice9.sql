/*
Afficher tous les titres title de la table titles trié par ordre alphabétique. Ne pas afficher les doublons.
*/
USE `employees`;
SELECT DISTINCT `title` 
FROM `titles`
ORDER BY `title` ASC;
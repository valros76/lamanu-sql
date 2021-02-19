USE `videogames`;
/*
 Listing de l'ensemble des jeux dans la table games
 */
SELECT *
FROM `games`;
/*
 Listez l’ensemble des jeux enregistré dans la table « games ».
 */
SELECT DISTINCT `games`.`g_name`
FROM `games`;
/*
 Affichez le nom, le mode de jeu, la date de sortie et le pegi de tous les jeux triés par ordre
 alphabétiques.
 */
SELECT `games`.`g_name`,
   `games`.`g_mode`,
   `games`.`g_published_at`,
   `games`.`g_pegi`
FROM `games`
ORDER BY `games`.`g_name` ASC;
/*
 Affichez le nom, le mode de jeu, la date de sortie et le pegi des 10 jeux les plus récents.
 */
SELECT `games`.`g_name`,
   `games`.`g_mode`,
   `games`.`g_published_at`,
   `games`.`g_pegi`
FROM `games`
ORDER BY `games`.`g_published_at` DESC
LIMIT 0, 10;
/*
 Affichez le nom et le mode de jeu des jeux qui se jouent uniquement dans un seul mode
 */
SELECT `games`.`g_name`,
   `games`.`g_mode`
FROM `games`
WHERE NOT `games`.`g_mode` LIKE '%/%'
ORDER BY `games`.`g_name` ASC;
/*
 Affichez le nom et la date de sortie des jeux sortie entre 2015 et 2020 triés par année
 */
SELECT `games`.`g_name`,
   `games`.`g_published_at`
FROM `games`
WHERE `games`.`g_published_at` BETWEEN '2015-01-01 00:00:00' AND '2020-12-31 00:00:00'
ORDER BY `games`.`g_published_at` ASC;
/*
 Affichez le nom et le mode de jeu des jeux qui peuvent se jouer en mode solo
 */
SELECT `games`.`g_name`,
   `games`.`g_mode`
FROM `games`
WHERE `games`.`g_mode` LIKE '%SOLO%'
ORDER BY `games`.`g_name` ASC;
/*
 Affichez les informations des différents jeux "witcher" disponibles. 
 */
SELECT `games`.`g_id`,
   `games`.`g_name`,
   `games`.`g_mode`,
   `games`.`g_published_at`,
   `games`.`g_pegi`,
   `games`.`s_id`
FROM `games`
WHERE `games`.`g_name` LIKE '%Witcher%';
/*
 Affichez les informations de tous les jeux sauf les jeux «Halo"
 */
SELECT `games`.`g_id`,
   `games`.`g_name`,
   `games`.`g_mode`,
   `games`.`g_published_at`,
   `games`.`g_pegi`,
   `games`.`s_id`
FROM `games`
WHERE `games`.`g_name` NOT LIKE '%Halo%';
/*
 Lister les jeux sortis en 2012, 2016 et 2020.
 */
SELECT `games`.`g_id`,
   `games`.`g_name`,
   `games`.`g_published_at`
FROM `games`
WHERE DATE_FORMAT(`games`.`g_published_at`, '%Y') IN('2012', '2016', '2020')
ORDER BY `games`.`g_published_at` ASC;
/*
 Affichez le nom de jeu et le studio de tous les jeux. Utiliser une jointure naturelle
 */
SELECT *
FROM `games`
   LEFT JOIN `studios` ON `games`.`s_id` = `studios`.`s_id`
ORDER BY `games`.`g_name` ASC;
/*
 Affichez le nom de jeu, le studio, la nationalité de la société des jeux disponibles. Utiliser une
 jointure avec join
 */
SELECT `games`.`g_name` AS `game_name`,
   `studios`.`s_name` AS `studios_name`,
   `studios`.`s_nationality` AS `studios_nationality`
FROM `games`
   JOIN `studios` ON `games`.`s_id` = `studios`.`s_id`
ORDER BY `games`.`g_name`;
/*
 Affichez le nom et le mode de jeu des jeux console grand public triés par pegi croissant
 */
SELECT `games`.`g_name`,
   `games`.`g_mode`,
   `games`.`g_pegi` AS `pegi_exercice_verification`
FROM `games`
ORDER BY `games`.`g_pegi` ASC;
/*
 Affichez le nom de jeu et les plateformes de tous les jeux triés par ordre alphabétique
 */
SELECT `games`.`g_name` AS `game_name`,
   `platforms`.`p_name`
FROM `games`
   INNER JOIN `games_platforms` ON `games`.`g_id` = `games_platforms`.`g_id`
   INNER JOIN `platforms` ON `games_platforms`.`p_id` = `platforms`.`p_id`
ORDER BY `games`.`g_name` ASC;
/*
 Calculez le nombre total de jeux.
 */
SELECT COUNT(`games`.`g_name`) AS `nb_games`
FROM `games`;
/*
 Affichez le nombre de jeux uniques
 */
SELECT COUNT(DISTINCT `games`.`g_name`) AS `nb_games`
FROM `games`;
/*
 Calculez le nombre de jeux par studio.
 */
SELECT `studios`.`s_name` as `studio_name`,
   COUNT(`games`.`g_id`) as `nb_games`
FROM `studios`
   INNER JOIN `games` ON `studios`.`s_id` = `games`.`s_id`
WHERE `games`.`g_id` IN(
      SELECT `games`.`g_id`
      FROM `games`
   )
GROUP BY `studios`.`s_name`;
/*
 Calculez le nombre de jeux par studio et par plateforme
 */
SELECT `studios`.`s_name`, `platforms`.`p_name`, COUNT(`games`.`g_id`) as `nb_games`
FROM `games`
INNER JOIN `studios` ON `games`.`s_id` = `studios`.`s_id`
INNER JOIN `games_platforms` ON `games`.`g_id` = `games_platforms`.`g_id`
INNER JOIN `platforms` ON `games_platforms`.`p_id` = `platforms`.`p_id`
GROUP BY `studios`.`s_name`, `platforms`.`p_name`;

/*
Affichez les jeux disponibles sur au moins 4 plateformes
*/
SELECT `games`.`g_name`,COUNT(`games`.`g_id`) as `count_nb_platforms`
FROM `games_platforms`
INNER JOIN `games` ON `games_platforms`.`g_id` = `games`.`g_id`
GROUP BY `games`.`g_name`
HAVING COUNT(`games`.`g_id`) >= 4;

/*
Calculez le nombre moyen de jeux par plateforme
*/
-- SELECT `platforms`.`p_name`,ROUND(AVG(`games_platforms`.`g_id`)) as `moyenne`
-- FROM `games_platforms`
-- INNER JOIN `platforms` ON `games_platforms`.`p_id` = `platforms`.`p_id`
-- WHERE `games_platforms`.`g_id`
-- GROUP BY `platforms`.`p_name`
-- HAVING AVG(`games_platforms`.`p_id`);

SELECT AVG(`games_id`) as `jeux/plateformes`
FROM(
        SELECT COUNT(`games_platforms`.`g_id`) AS `games_id`
        FROM `games_platforms`
        GROUP BY `games_platforms`.`p_id`
    ) AS `moyenne jeux/plateformes`;
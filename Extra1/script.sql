USE `videogames`;
/*
Listing de l'ensemble des jeux dans la table games
*/
SELECT * FROM `games`;
/*
Listez l’ensemble des jeux enregistré dans la table « games ».
*/
 SELECT DISTINCT `games`.`g_name` FROM `games`;
 /*
 Affichez le nom, le mode de jeu, la date de sortie et le pegi de tous les jeux triés par ordre
alphabétiques.
 */
 SELECT 
   `games`.`g_name`,
   `games`.`g_mode`, 
   `games`.`g_published_at`,
   `games`.`g_pegi`
   FROM
   `games`
   ORDER BY
   `games`.`g_name`
   ASC;
/*
Affichez le nom, le mode de jeu, la date de sortie et le pegi des 10 jeux les plus récents.
*/
SELECT 
   `games`.`g_name`,
   `games`.`g_mode`, 
   `games`.`g_published_at`,
   `games`.`g_pegi`
   FROM
   `games`
   ORDER BY
   `games`.`g_published_at`
   DESC
   LIMIT 0,10;
/*
Affichez le nom et le mode de jeu des jeux qui se jouent uniquement dans un seul mode
*/
SELECT 
   `games`.`g_name`,
   `games`.`g_mode`
   FROM
   `games`
   WHERE 
   NOT `games`.`g_mode` LIKE
   '%/%'
   ORDER BY
   `games`.`g_name`
   ASC;
/*
Affichez le nom et la date de sortie des jeux sortie entre 2015 et 2020 triés par année
*/
SELECT 
   `games`.`g_name`,
   `games`.`g_published_at`
   FROM
   `games`
   WHERE 
   `games`.`g_published_at` 
   BETWEEN 
   '2015-01-01 00:00:00' 
   AND 
   '2020-12-31 00:00:00' 
   ORDER BY
   `games`.`g_published_at`
   ASC;
/*
Affichez le nom et le mode de jeu des jeux qui peuvent se jouer en mode solo
*/
SELECT 
   `games`.`g_name`,
   `games`.`g_mode`
   FROM
   `games`
   WHERE 
   `games`.`g_mode` 
   LIKE
   '%SOLO%'
   ORDER BY
   `games`.`g_name`
   ASC;
/*
Affichez les informations des différents jeux "witcher" disponibles. 
*/
SELECT
   `games`.`g_id`,
   `games`.`g_mode`,
   `games`.`g_published_at`
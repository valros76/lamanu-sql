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

*/
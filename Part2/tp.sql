/*
Créer la base codex. Y créer une table clients qui aura comme colonnes :

*--------------------------------------------*
*     Colonne        |  Type  |    Attributs *
*--------------------------------------------*
*  id                | INT	| Auto-incrémenté, clé primaire
*  lastname	         | VARCHAR |	none
*  firstname         | VARCHAR	
*  birthDate	      | DATE	
*  address	         | VARCHAR	
*  firstPhoneNumber	| INT	
*  secondPhoneNumber	| INT	
*  mail	            | VARCHAR	
*--------------------------------------*
*/

/*Création de la database codex*/
CREATE DATABASE IF NOT EXISTS codex
/*Création de la table clients dans la database codex*/
CREATE TABLE IF NOT EXISTS codex.clients
(
   id INT PRIMARY AUTO_INCREMENT,
   lastname VARCHAR(80),
   firstname VARCHAR(50),
   birthDate DATE,
   adress VARCHAR(320),
   firstPhoneNumber INT,
   secondPhoneNumber INT,
   mail VARCHAR(320)
)
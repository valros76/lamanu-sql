/*Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :

id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/
CREATE TABLE IF NOT EXISTS webDevelopment.frameworks
(
   id INT PRIMARY AUTO_INCREMENT,
   name VARCHAR(80)
)
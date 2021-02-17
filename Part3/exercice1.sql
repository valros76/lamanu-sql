/*Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).*/
ALTER TABLE webDevelopment.languages
ADD IF NOT EXISTS versions VARCHAR(80);
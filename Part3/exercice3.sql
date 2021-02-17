/*Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.*/
ALTER TABLE webDevelopment.languages
CHANGE versions version VARCHAR(80)
/*
La précision du type de données est obligatoire, sinon mysql renvoi une erreur Void value
*/
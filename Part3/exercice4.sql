/*Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.

Et on commence à utiliser les magic quotes, pour les bonnes pratiques 😂
*/
ALTER TABLE `webDevelopment.frameworks`
CHANGE `name` `framework` VARCHAR(80);
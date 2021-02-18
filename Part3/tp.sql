/*Dans la base codex, dans la table clients :

supprimer la colonne secondPhoneNumber
renommer la colonne firstPhoneNumber en phoneNumber
changer le type de la colonne phoneNumber en VARCHAR
ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)*/
ALTER TABLE `codex`.`clients`
DROP `secondPhoneNumber`
MODIFY `phoneNumber` VARCHAR(255)
ADD `zipCODE` VARCHAR(5),
`city` VARCHAR(80);